import 'package:uafrontend/ui/views/article_view/article_view.dart';
import 'package:uafrontend/ui/views/contact_view/contact_view.dart';
import 'package:uafrontend/ui/views/info_view/info_view.dart';
import 'package:uafrontend/ui/views/home_view/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:uafrontend/ui/views/login_view/login_view.dart';
import 'package:uafrontend/ui/views/news_view/news_view.dart';
import 'package:uafrontend/ui/views/section_view/section_view.dart';
import 'package:uafrontend/ui/views/start_view/start_view.dart';
import 'package:uafrontend/ui/views/steps_view/steps_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, path: '/login'),
    MaterialRoute(page: StartView, path: '/', initial: true),
    MaterialRoute(page: HomeView, path: '/home'),
    MaterialRoute(page: StepsView, path: '/steps'),
    MaterialRoute(page: NewsView, path: '/news'),
    MaterialRoute(page: InfoView, path: '/info'),
    MaterialRoute(page: SectionView, path: '/infosection'),
    MaterialRoute(page: ArticleView, path: '/article'),
    MaterialRoute(page: ContactView, path: '/contact'),
  ],
)
class App {}
