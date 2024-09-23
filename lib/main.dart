import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/push_notifications/push_notifications_util.dart';
import 'backend/firebase/firebase_config.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'index.dart';

import 'backend/stripe/payment_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();

  await FlutterFlowTheme.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  await initializeStripe();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<BaseAuthUser> userStream;

  final authUserSub = authenticatedUserStream.listen((_) {});
  final fcmTokenSub = fcmTokenUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = bySalesFirebaseUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });
    jwtTokenStream.listen((_) {});
    Future.delayed(
      const Duration(milliseconds: 3000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();
    fcmTokenSub.cancel();
    super.dispose();
  }

  void setLocale(String language) {
    safeSetState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => safeSetState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BySales',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('pt'),
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'home';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'empresasCadastradas': const EmpresasCadastradasWidget(),
      'pedidos': const PedidosWidget(),
      'home': const HomeWidget(),
      'clientesCadastrados': const ClientesCadastradosWidget(),
      'produtosCadastrados': const ProdutosCadastradosWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => safeSetState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).secondary,
        unselectedItemColor: const Color(0x8A000000),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.compare_arrows_sharp,
              size: 26.0,
            ),
            activeIcon: const Icon(
              Icons.compare_arrows_rounded,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'qdnevi4b' /* Empresas */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.monetization_on_rounded,
              size: 28.0,
            ),
            activeIcon: const Icon(
              Icons.monetization_on_rounded,
              size: 42.0,
            ),
            label: FFLocalizations.of(context).getText(
              '78ehtzwp' /* Pedidos */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.home,
              size: 26.0,
            ),
            activeIcon: const FaIcon(
              FontAwesomeIcons.home,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'ui65wpja' /* Home */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.supervisor_account_rounded,
              size: 26.0,
            ),
            activeIcon: const Icon(
              Icons.supervisor_account_rounded,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'mtjhou10' /* Clientes */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const FaIcon(
              FontAwesomeIcons.productHunt,
              size: 26.0,
            ),
            activeIcon: const FaIcon(
              FontAwesomeIcons.productHunt,
              size: 40.0,
            ),
            label: FFLocalizations.of(context).getText(
              'ai38xey1' /* Produtos */,
            ),
            tooltip: '',
          )
        ],
      ),
    );
  }
}
