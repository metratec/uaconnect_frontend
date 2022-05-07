import 'dart:async';

import 'package:uafrontend/app/constants.dart';
import 'package:graphql/client.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:nhost_graphql_adapter/nhost_graphql_adapter.dart';
import 'package:nhost_sdk/nhost_sdk.dart';

class GqlService {
  late GraphQLClient _gqlClient;
  late NhostClient _nhostClient;

  GqlService() {
    _nhostClient = NhostClient(backendUrl: nhostApiUrl);

    // The Nhost "terminating link" (the point at which requests are sent). We're
    // going to build links that execute on requests before this point is reached.
    final nhostLink = combinedLinkForNhost(_nhostClient
        // nhostGraphQLUrl,
        // auth,
        );

    // Create a new custom link that logs all requests and responses passing
    // through it
    final loggingMiddleware = Link.function((request, [nextLink]) {
      //print('REQUEST: $request');
      return nextLink!(request).transform(
        StreamTransformer.fromHandlers(
          handleData: (data, sink) {
            //print('RESPONSE: $data');
            sink.add(data);
          },
        ),
      );
    });

    // Construct a GraphQL client using the composed link
    final gqlClient = GraphQLClient(
      link: loggingMiddleware.concat(nhostLink),
      cache: GraphQLCache(),
    );

    _gqlClient = gqlClient;
  }

  GraphQLClient get gqlClient {
    return _gqlClient;
  }

  close() {
    _nhostClient.close();
  }
}
