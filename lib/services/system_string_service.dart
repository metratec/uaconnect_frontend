import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/datamodels/language.dart';

// import 'package:uafrontend/services/authentication_service.dart';
// import 'package:uafrontend/services/gql_service.dart';
// import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/services/settings_service.dart';

@lazySingleton
class SystemStringService {
  SettingsService settingsService = locator<SettingsService>();

  Future<String> getSimpleString(String contentName) async {
    try {
      switch (settingsService.currentLanguage.langCode) {
        case "DE":
          String rawdata =
              await rootBundle.loadString('assets/docs/system_de.json');
          dynamic stringsDe = json.decode(rawdata);
          return stringsDe[contentName];
        case "EN":
          String rawdata =
              await rootBundle.loadString('assets/docs/system_en.json');
          dynamic stringsEn = json.decode(rawdata);
          return stringsEn[0];
        case "RU":
          String rawdata =
              await rootBundle.loadString('assets/docs/system_ru.json');
          dynamic stringsRu = json.decode(rawdata);
          return stringsRu[0];
        case "UA":
          String rawdata =
              await rootBundle.loadString('assets/docs/system_ua.json');
          dynamic stringsUa = json.decode(rawdata);
          return stringsUa[0];
        default:
          return "Wrong language";
      }
    } catch (e) {
      // return e.toString();
      return "String not found";
    }
  }

  Future getPageContent(String pageName) async {
    String rawdata = '';
    try {
      switch (settingsService.currentLanguage.langCode) {
        case "DE":
          rawdata = await rootBundle.loadString('assets/docs/system_de.json');
          break;
        case "EN":
          rawdata = await rootBundle.loadString('assets/docs/system_en.json');
          break;
        case "RU":
          rawdata = await rootBundle.loadString('assets/docs/system_ru.json');
          break;
        case "UA":
          rawdata = await rootBundle.loadString('assets/docs/system_ua.json');
          break;
        default:
          return "Unkown language";
      }
      dynamic strings = json.decode(rawdata);
      return strings[pageName];
    } catch (e) {
      return e.toString();
    }
  }

  // Future<String> getMarkdown(String contentName) async {
  //   print("Returning content in ${settingsService.currentLanguage.langCode}");
  //   return demoMarkdownContent(contentName, settingsService.currentLanguage);
  // }

  // AuthenticationService _authService = locator<AuthenticationService>();

  // Future<Company?> getCompany() async {
  //   final companyQuery = gql(r'''
  //       query companyQuery {
  //        company {
  //           id
  //           name
  //           street
  //           zip_code
  //           city
  //           iban
  //           vat_id
  //         }
  //       }
  //     ''');

  //   final gqlClient = GqlService(_authService.auth).gqlClient;

  //   QueryResult res = await gqlClient.query(QueryOptions(
  //     document: companyQuery,
  //   ));

  //   if (res.hasException) {
  //     print(res.exception);
  //     return null;
  //   }

  //   //print(res.data);

  //   Company company = Company.fromJson(res.data!['company'][0]);

  //   //print(company);

  //   return company;
  // }

  // Future<Account?> getAccount() async {
  //   final accountQuery = gql(r'''
  //       query accountQuery {
  //        auth_accounts {
  //           id
  //           email
  //           fam_name
  //           given_name
  //           lang
  //         }
  //       }
  //     ''');

  //   final gqlClient = GqlService(_authService.auth).gqlClient;

  //   QueryResult res = await gqlClient.query(QueryOptions(
  //     document: accountQuery,
  //   ));

  //   if (res.hasException) {
  //     print(res.exception);
  //     return null;
  //   }

  //   print(res.data);

  //   Account account = Account.fromJson(res.data!['auth_accounts'][0]);

  //   print(account);

  //   return account;
  // }

  // Future<bool> updateAccount(
  //     String id, String fName, String lName, Language lang) async {
  //   // FIXME: Not working!
  //   final accountUpdate = gql(r'''
  //       mutation update_account($id: uuid!, $fam_name: String!, $given_name: String!, $lang: String!) {
  //         update_auth_accounts_by_pk(
  //           pk_columns: {id: $id}
  //           _set: {fam_name: $fam_name, given_name: $given_name, lang: $lang}
  //         ) {
  //           id
  //           fam_name
  //           given_name
  //           lang
  //         }
  //       }
  //     ''');

  //   final gqlClient = GqlService(_authService.auth).gqlClient;

  //   QueryResult res = await gqlClient.query(QueryOptions(
  //     document: accountUpdate,
  //     variables: {
  //       "id": id,
  //       "fam_name": lName,
  //       "given_name": fName,
  //       "lang": lang.code,
  //     },
  //   ));

  //   if (res.hasException) {
  //     print(res.exception);
  //     return false;
  //   }

  //   print(res.data!);
  //   Map<String, dynamic>? response = res.data!['update_auth_accounts_by_pk'];
  //   if (response == null) {
  //     return false;
  //   }

  //   return true;
  // }
}
