// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stacked_services/stacked_services.dart' as _i3;

import '../services/infoarticle_service.dart' as _i4;
import '../services/infosection_service.dart' as _i5;
import '../services/news_service.dart' as _i6;
import '../services/settings_service.dart' as _i7;
import '../services/steps_service.dart' as _i8;
import '../services/system_string_service.dart' as _i9;
import '../services/thirdparty_services_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final thirdPartyServicesModule = _$ThirdPartyServicesModule();
  gh.lazySingleton<_i3.DialogService>(
      () => thirdPartyServicesModule.dialogService);
  gh.lazySingleton<_i4.InfoarticleService>(() => _i4.InfoarticleService());
  gh.lazySingleton<_i5.InfosectionService>(() => _i5.InfosectionService());
  gh.lazySingleton<_i3.NavigationService>(
      () => thirdPartyServicesModule.navigationService);
  gh.lazySingleton<_i6.NewsService>(() => _i6.NewsService());
  gh.lazySingleton<_i7.SettingsService>(() => _i7.SettingsService());
  gh.lazySingleton<_i3.SnackbarService>(
      () => thirdPartyServicesModule.snackBarService);
  gh.lazySingleton<_i8.StepsService>(() => _i8.StepsService());
  gh.lazySingleton<_i9.SystemStringService>(() => _i9.SystemStringService());
  return get;
}

class _$ThirdPartyServicesModule extends _i10.ThirdPartyServicesModule {
  @override
  _i3.DialogService get dialogService => _i3.DialogService();
  @override
  _i3.NavigationService get navigationService => _i3.NavigationService();
  @override
  _i3.SnackbarService get snackBarService => _i3.SnackbarService();
}
