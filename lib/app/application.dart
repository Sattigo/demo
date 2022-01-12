import 'package:demo/app/bloc/initial/initial_page_bloc.dart';
import 'package:demo/app/bloc/initial/initial_page_event.dart';
import 'package:demo/app/localization/localization.dart';
import 'package:demo/app/pages/initial/initial_page.dart';
import 'package:demo/app/repositories/dogs/dogs_repository.dart';
import 'package:demo/app/repositories/dogs/http_dogs_repository.dart';
import 'package:demo/app/services/remote/remote_service.dart';
import 'package:demo/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<DogsRepository>(
          create: (_) => HttpDogsRepository(
            remoteService: context.read<RemoteService>(),
          ),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: localizedLabels.keys.toList(),
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/initial',
        routes: {
          '/initial': (context) => BlocProvider<InitialPageBloc>(
                create: (_) =>
                    InitialPageBloc()..add(const InitialPageEvent.init()),
                child: const InitialPage(),
              ),
        },
      ),
    );
  }
}
