import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'sl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? slText = '',
  }) =>
      [enText, esText, slText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    '5flpql8z': {
      'en': 'Damjan App',
      'es': 'Aplicación Damjan',
      'sl': 'Damjan App',
    },
    '1mtl7a4e': {
      'en': 'Welcome',
      'es': 'Bienvenido',
      'sl': 'dobrodošli',
    },
    'rgpciffn': {
      'en': 'Fill in the blank fields with your account information.',
      'es': 'Complete los campos en blanco con la información de su cuenta.',
      'sl': 'Izpolnite prazna polja s podatki o svojem računu.',
    },
    'q5ich3a8': {
      'en': 'Email:',
      'es': 'Correo electrónico:',
      'sl': 'E-naslov:',
    },
    'uyuwicqu': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'r547y8fe': {
      'en': 'Enter your email...',
      'es': 'Introduce tu correo electrónico...',
      'sl': 'Vpišite svoj elektronski naslov...',
    },
    '2z87suy1': {
      'en': 'Password:',
      'es': 'Contraseña:',
      'sl': 'geslo:',
    },
    '1da139ch': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '5i35jhf2': {
      'en': 'Enter your password...',
      'es': 'Ingresa tu contraseña...',
      'sl': 'Vnesite geslo ...',
    },
    '3yp6brfr': {
      'en': 'Log in',
      'es': 'Acceso',
      'sl': 'Vpiši se',
    },
    '6r68i1ir': {
      'en': 'Este campo es requerido.',
      'es': 'Este campo es requerido.',
      'sl': 'Este campo es requerido.',
    },
    'zr4byueq': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    '51z9i5do': {
      'en': 'Este campo es requerido.',
      'es': 'Este campo es requerido.',
      'sl': 'Este campo es requerido.',
    },
    'rufaotj5': {
      'en': 'Please choose an option from the dropdown',
      'es': 'Por favor elija una opción del menú desplegable',
      'sl': 'V spustnem meniju izberite možnost',
    },
    'f0201ipp': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // barcode_scanGA
  {
    '0vn7fvx7': {
      'en': 'Scan',
      'es': 'Escanear',
      'sl': 'Skeniraj',
    },
    'pq70qy03': {
      'en': 'Generate barcode',
      'es': 'Generar código de barras',
      'sl': 'Ustvari črtno kodo',
    },
    'nknhaosm': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'sl': 'Možnost 1',
    },
    'd7uc7ei5': {
      'en': 'Select column...',
      'es': 'Seleccionar columna...',
      'sl': 'Izberi stolpec ...',
    },
    '4il38cg0': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    '1el6kr95': {
      'en': 'Get order',
      'es': 'Obtener orden',
      'sl': 'Pridobite naročilo',
    },
    '8i44cwqg': {
      'en': 'Add barcode',
      'es': 'Agregar código de barras',
      'sl': 'Dodajte črtno kodo',
    },
    '957b2y1s': {
      'en': 'Bar codes',
      'es': 'códigos de barras',
      'sl': 'Črtne kode',
    },
    '7kyq5ln6': {
      'en': 'Scan',
      'es': 'Escanear',
      'sl': 'Skeniraj',
    },
    'gumojpcd': {
      'en': 'Cancel',
      'es': 'Cancelar',
      'sl': 'Prekliči',
    },
    'nvxcdjmz': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // barCodeDisplayed
  {
    '4spubje4': {
      'en': 'Scan',
      'es': 'Escanear',
      'sl': 'Skeniraj',
    },
    'ots37ylm': {
      'en': 'Generate barcode',
      'es': 'Generar código de barras',
      'sl': 'Ustvari črtno kodo',
    },
    'uj07y5ka': {
      'en': 'Barcode generator...',
      'es': 'Generador de códigos de barras...',
      'sl': 'Generator črtne kode ...',
    },
    'wet2q7l9': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // securityPopUp
  {
    'o33ebgcd': {
      'en': 'Are you sure?',
      'es': '¿Está seguro?',
      'sl': 'Ali si prepričan?',
    },
    '381bd70g': {
      'en': 'Yes',
      'es': 'Sí',
      'sl': 'ja',
    },
    'cxryxglj': {
      'en': 'No',
      'es': 'No',
      'sl': 'št',
    },
  },
  // Miscellaneous
  {
    '7wdb1745': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '7wu66ogp': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'vbiuhnp8': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ksauutw0': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'u95yrvoj': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'zxjxel35': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'w748xi71': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'gtkjt6z1': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'g33w0rkz': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'jwrs5q3c': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '7fz3u7ac': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'z75of8qv': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ptalpk7e': {
      'en': '',
      'es': '',
      'sl': '',
    },
    's5s1l431': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ddkywao2': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'qxydfdts': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'zrzemju2': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'osgypzcz': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'a0pwpfdv': {
      'en': '',
      'es': '',
      'sl': '',
    },
    's6s47l8q': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'ondjx29i': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'x799ketn': {
      'en': '',
      'es': '',
      'sl': '',
    },
    '2y00p6b5': {
      'en': '',
      'es': '',
      'sl': '',
    },
    'fnjhj6bw': {
      'en': '',
      'es': '',
      'sl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
