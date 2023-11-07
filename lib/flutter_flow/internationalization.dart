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
  // barCodeDisplayed
  {
    'nxwm8y7z': {
      'en': 'Scanned barcodes',
      'es': 'códigos de barras escaneados',
      'sl': 'Skenirane črtne kode',
    },
    '6i7p1rrm': {
      'en': 'Refresh page',
      'es': 'Actualizar página',
      'sl': 'Osveži stran',
    },
    '7jpltuw4': {
      'en': '2nd scanner',
      'es': '2do escáner',
      'sl': '2. skener',
    },
    'p5yileyz': {
      'en': '3rd scanner',
      'es': '3er escáner',
      'sl': '3. skener',
    },
    'uz0rfqah': {
      'en': 'Create account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    'm7i7wccj': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
      'sl': 'Odjava',
    },
    'wet2q7l9': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // sign_up
  {
    'f0llkj79': {
      'en': 'Sign Up',
      'es': 'Inscribirse',
      'sl': 'Prijavite se',
    },
    'adno6ywk': {
      'en': 'Create account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    'k8sisra0': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': 'Comencemos completando el formulario a continuación.',
      'sl': 'Začnimo z izpolnitvijo spodnjega obrazca.',
    },
    '1vqca3er': {
      'en': 'Email...',
      'es': 'Correo electrónico...',
      'sl': 'E-naslov...',
    },
    '6q4w0lgc': {
      'en': 'Password...',
      'es': 'Contraseña...',
      'sl': 'geslo ...',
    },
    'r69bf6b1': {
      'en': 'Repeat password...',
      'es': 'Repita la contraseña...',
      'sl': 'Ponovite geslo...',
    },
    'ktgxf7s8': {
      'en': 'Name...',
      'es': 'Nombre...',
      'sl': 'Ime ...',
    },
    'jfp2nnju': {
      'en': 'Last name...',
      'es': 'Apellido...',
      'sl': 'Priimek...',
    },
    'umhoriwl': {
      'en': 'active',
      'es': 'activo',
      'sl': 'aktivna',
    },
    'rbibo3td': {
      'en': 'inactive',
      'es': 'inactivo',
      'sl': 'neaktiven',
    },
    'js1y36o9': {
      'en': 'Status...',
      'es': 'Estado...',
      'sl': 'Stanje...',
    },
    '9j4y2uua': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'bkw9rubp': {
      'en': 'administrator',
      'es': 'administrador',
      'sl': 'skrbnik',
    },
    'tcqqsuco': {
      'en': 'employee',
      'es': 'empleado',
      'sl': 'zaposleni',
    },
    'rb6zorpd': {
      'en': 'User role...',
      'es': 'Rol del usuario...',
      'sl': 'Uporabniška vloga ...',
    },
    'qq1f31ux': {
      'en': 'Search for an item...',
      'es': 'Buscar un artículo...',
      'sl': 'Iskanje predmeta ...',
    },
    'tgecuw5i': {
      'en': 'Position...',
      'es': 'Posición...',
      'sl': 'Položaj ...',
    },
    'z655en7l': {
      'en': 'Photo...',
      'es': 'Foto...',
      'sl': 'fotografija ...',
    },
    'olqsteqb': {
      'en': 'Sign up',
      'es': 'Inscribirse',
      'sl': 'Prijavite se',
    },
    'saidnvqb': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // barCodeDisplayed0
  {
    'avuib3w6': {
      'en': 'Scanned barcodes',
      'es': 'códigos de barras escaneados',
      'sl': 'Skenirane črtne kode',
    },
    'px5daftz': {
      'en': 'Refresh page',
      'es': 'Actualizar página',
      'sl': 'Osveži stran',
    },
    'lmoz06h4': {
      'en': '1st Scanner',
      'es': '1er escáner',
      'sl': '1. skener',
    },
    'wdkn3dms': {
      'en': '3rd Scanner',
      'es': '3er escáner',
      'sl': '3. skener',
    },
    '1ghdz9m5': {
      'en': 'Create account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    '7jy4y7hr': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
      'sl': 'Odjava',
    },
    'fljmjtfk': {
      'en': 'Home',
      'es': 'Hogar',
      'sl': 'domov',
    },
  },
  // barCodeDisplayed1
  {
    'fbajud5j': {
      'en': 'Scanned barcodes',
      'es': 'códigos de barras escaneados',
      'sl': 'Skenirane črtne kode',
    },
    '3faq8tgc': {
      'en': 'Refresh page',
      'es': 'Actualizar página',
      'sl': 'Osveži stran',
    },
    'zxas7pim': {
      'en': '1st Scanner',
      'es': '1er escáner',
      'sl': '1. skener',
    },
    'cfuk7qx9': {
      'en': '2nd Scanner',
      'es': '2do escáner',
      'sl': '2. skener',
    },
    'wqylckpi': {
      'en': 'Create account',
      'es': 'Crear una cuenta',
      'sl': 'Ustvari račun',
    },
    'ta9u3c81': {
      'en': 'Log out',
      'es': 'Cerrar sesión',
      'sl': 'Odjava',
    },
    'wosrkj0l': {
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
    'caabyrkw': {
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
