// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../datamodels/info_article.dart';
import '../datamodels/info_section.dart';
import '../ui/views/article_view/article_view.dart';
import '../ui/views/contact_view/contact_view.dart';
import '../ui/views/home_view/home_view.dart';
import '../ui/views/info_view/info_view.dart';
import '../ui/views/news_view/news_view.dart';
import '../ui/views/section_view/section_view.dart';
import '../ui/views/start_view/start_view.dart';
import '../ui/views/steps_view/steps_view.dart';

class Routes {
  static const String startView = '/';
  static const String homeView = '/home';
  static const String stepsView = '/steps';
  static const String newsView = '/news';
  static const String infoView = '/info';
  static const String sectionView = '/infosection';
  static const String articleView = '/article';
  static const String contactView = '/contact';
  static const all = <String>{
    startView,
    homeView,
    stepsView,
    newsView,
    infoView,
    sectionView,
    articleView,
    contactView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startView, page: StartView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.stepsView, page: StepsView),
    RouteDef(Routes.newsView, page: NewsView),
    RouteDef(Routes.infoView, page: InfoView),
    RouteDef(Routes.sectionView, page: SectionView),
    RouteDef(Routes.articleView, page: ArticleView),
    RouteDef(Routes.contactView, page: ContactView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartView(),
        settings: data,
      );
    },
    HomeView: (data) {
      var args = data.getArgs<HomeViewArguments>(
        orElse: () => HomeViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(key: args.key),
        settings: data,
      );
    },
    StepsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StepsView(),
        settings: data,
      );
    },
    NewsView: (data) {
      var args = data.getArgs<NewsViewArguments>(
        orElse: () => NewsViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewsView(key: args.key),
        settings: data,
      );
    },
    InfoView: (data) {
      var args = data.getArgs<InfoViewArguments>(
        orElse: () => InfoViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => InfoView(key: args.key),
        settings: data,
      );
    },
    SectionView: (data) {
      var args = data.getArgs<SectionViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SectionView(
          key: args.key,
          selectedSection: args.selectedSection,
        ),
        settings: data,
      );
    },
    ArticleView: (data) {
      var args = data.getArgs<ArticleViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ArticleView(
          key: args.key,
          selectedArticle: args.selectedArticle,
        ),
        settings: data,
      );
    },
    ContactView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ContactView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomeView arguments holder class
class HomeViewArguments {
  final Key? key;
  HomeViewArguments({this.key});
}

/// NewsView arguments holder class
class NewsViewArguments {
  final Key? key;
  NewsViewArguments({this.key});
}

/// InfoView arguments holder class
class InfoViewArguments {
  final Key? key;
  InfoViewArguments({this.key});
}

/// SectionView arguments holder class
class SectionViewArguments {
  final Key? key;
  final InfoSection selectedSection;
  SectionViewArguments({this.key, required this.selectedSection});
}

/// ArticleView arguments holder class
class ArticleViewArguments {
  final Key? key;
  final InfoArticle selectedArticle;
  ArticleViewArguments({this.key, required this.selectedArticle});
}
