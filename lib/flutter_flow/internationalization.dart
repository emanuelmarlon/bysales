import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

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
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

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
  // criaConta
  {
    '8kctcmbq': {
      'pt': 'By.Sales',
      'en': 'By.Sales',
    },
    's1tpflwd': {
      'pt': 'Vamos começar preenchendo o formulário abaixo.',
      'en': 'Let\'s start by filling out the form below.',
    },
    'sk81lll3': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'citf9oev': {
      'pt': 'Senha',
      'en': 'Password',
    },
    'et4n0h9l': {
      'pt': 'Criar conta',
      'en': 'Create an account',
    },
    '48hngk0w': {
      'pt': 'Ou cadastre-se com',
      'en': 'Or register with',
    },
    'qkhfx9uy': {
      'pt': 'Continue com Google',
      'en': 'Continue with Google',
    },
    'ow9gc6he': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // empresa
  {
    'llfbdcip': {
      'pt': 'Editar',
      'en': 'To edit',
    },
    'walzl2t9': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    'zek2yb47': {
      'pt': 'Informações',
      'en': 'Information',
    },
    'nbilbl0d': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'kxunr8cp': {
      'pt': 'CNPJ/CPF',
      'en': 'CNPJ/CPF',
    },
    'k9r8ymwd': {
      'pt': 'Bairro',
      'en': 'Neighborhood',
    },
    '2w3xq9e6': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'fu45gyo0': {
      'pt': 'Estado',
      'en': 'state',
    },
    'tgns38sp': {
      'pt': 'CEP',
      'en': 'Zip code',
    },
    '2apxh752': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'n5f3a3at': {
      'pt': 'Número',
      'en': 'Number',
    },
    'xspw92cb': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // home
  {
    '99h8i0ne': {
      'pt': 'Home',
      'en': 'Home',
    },
    'x6ys9at3': {
      'pt': 'Receita das vendas',
      'en': 'Sales revenue',
    },
    'hb0spede': {
      'pt': 'Vendas do mês',
      'en': 'Sales of the month',
    },
    '78m6avaz': {
      'pt': 'Total de vendas',
      'en': 'Sales amount',
    },
    'w0c1kywb': {
      'pt': 'Pedidos do mês',
      'en': 'Orders of the month',
    },
    '0w0nbto4': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    'va4zuxme': {
      'pt': 'Pedidos do mês',
      'en': 'Orders of the month',
    },
    'ui65wpja': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // login
  {
    '6fgg75ib': {
      'pt': 'By.Sales',
      'en': 'By.Sales',
    },
    'sid1c53w': {
      'pt': 'Use a conta abaixo para fazer login.',
      'en': 'Use the account below to log in.',
    },
    'foblbpew': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'ubcgodfb': {
      'pt': 'Senha',
      'en': 'Password',
    },
    '7snyr7ih': {
      'pt': 'Entrar',
      'en': 'To enter',
    },
    'mcwselub': {
      'pt': 'Esqueceu sua senha',
      'en': 'Forgot your password',
    },
    '0mnij61s': {
      'pt': 'Cadastre-se',
      'en': 'Register',
    },
    'pyby91xy': {
      'pt': 'Continue com Google',
      'en': 'Continue with Google',
    },
    '5zbtbzhc': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // empresasCadastradas
  {
    'zm41spxn': {
      'pt': 'Buscar empresas...',
      'en': 'Search companies...',
    },
    'rm7u1i32': {
      'pt': 'Empresas',
      'en': 'Companies',
    },
    'qdnevi4b': {
      'pt': 'Empresas',
      'en': 'Companies',
    },
  },
  // usuariosCadastrados
  {
    '8t1l74tb': {
      'pt': 'Buscar usuários...',
      'en': 'Search users...',
    },
    '0sdi96zx': {
      'pt': 'Usuários',
      'en': 'Users',
    },
    'rsjghkdy': {
      'pt': 'Usuários',
      'en': 'Users',
    },
  },
  // usuario
  {
    'blk4cd4y': {
      'pt': 'Editar',
      'en': 'To edit',
    },
    'v2i2lnvo': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    'wcxuivv0': {
      'pt': 'Informações',
      'en': 'Information',
    },
    '2zy4keoh': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'pjeaumcy': {
      'pt': 'Master',
      'en': 'Master',
    },
    'm84xj74i': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'qe11w5b3': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // editarEmpresa
  {
    '5fxzwgra': {
      'pt': 'Editar Empresa',
      'en': 'Edit Company',
    },
    '7fd3n3z3': {
      'pt': 'Razão Social',
      'en': 'Corporate name',
    },
    'toehptxo': {
      'pt': 'Digite a razão social...',
      'en': 'Enter the company name...',
    },
    'dwdfi1nc': {
      'pt': 'CNPJ/CPF',
      'en': 'CNPJ/CPF',
    },
    'tyhho59x': {
      'pt': 'Digite o CNPJ/CPF...',
      'en': 'Enter your CNPJ/CPF...',
    },
    'cqyg54wa': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'j1l5cwa9': {
      'pt': 'Digite o e-mail...',
      'en': 'Enter email...',
    },
    'bqf2xr92': {
      'pt': 'CEP',
      'en': 'Zip code',
    },
    'effs6i36': {
      'pt': 'Digite o CEP...',
      'en': 'Enter zip code...',
    },
    'xmlbr35a': {
      'pt': 'Bairro',
      'en': 'Neighborhood',
    },
    'u36qmybn': {
      'pt': 'Digite o bairro...',
      'en': 'Enter the neighborhood...',
    },
    '2s6idd59': {
      'pt': 'Cidade',
      'en': 'City',
    },
    '65r94ozj': {
      'pt': 'Digite a cidade...',
      'en': 'Enter the city...',
    },
    '3e6n8oji': {
      'pt': 'Estado',
      'en': 'state',
    },
    'y6t8w1rk': {
      'pt': 'Digite o estado...',
      'en': 'Enter the state...',
    },
    'css1x4l0': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'iwkdcm35': {
      'pt': 'Digite o endereço...',
      'en': 'Enter the address...',
    },
    'aqt2ccvx': {
      'pt': 'Número',
      'en': 'Number',
    },
    'd1utp6l9': {
      'pt': 'Digite o número...',
      'en': 'Enter the number...',
    },
    '43wes8yr': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    '3za1hun4': {
      'pt': 'Digite o telefone...',
      'en': 'Enter phone...',
    },
    'h4sfe7v5': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    '5ejq36cg': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // editarUsuario
  {
    '42dtihav': {
      'pt': 'Editar Usuário',
      'en': 'Edit User',
    },
    'yi6uvs11': {
      'pt': 'Nome',
      'en': 'Name',
    },
    'cpculzug': {
      'pt': 'Digite o nome...',
      'en': 'Enter the name...',
    },
    '7vm8z5ws': {
      'pt': 'Comissão',
      'en': 'Commission',
    },
    '09p56y2b': {
      'pt': 'Digite a comissão..',
      'en': 'Enter the commission..',
    },
    '6ni3b0b9': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'xxpsh659': {
      'pt': 'Digite o telefone...',
      'en': 'Enter phone...',
    },
    '14zkvuud': {
      'pt': 'Master',
      'en': 'Master',
    },
    'fth14gdv': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'kckhqsvw': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    '0o3fxbsr': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // clientesCadastrados
  {
    'gx8itsc5': {
      'pt': 'Buscar clientes...',
      'en': 'Search for customers...',
    },
    '4ry3b8jb': {
      'pt': 'Clientes',
      'en': 'Customers',
    },
    'mtjhou10': {
      'pt': 'Clientes',
      'en': 'Customers',
    },
  },
  // cliente
  {
    'driasqsj': {
      'pt': 'Editar',
      'en': 'To edit',
    },
    'lu9jihkj': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    '7jk8thj6': {
      'pt': 'Informações',
      'en': 'Information',
    },
    'q31y2bru': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'tt2fcv5p': {
      'pt': 'CNPJ/CPF',
      'en': 'CNPJ/CPF',
    },
    'uioxfo0q': {
      'pt': 'Bairro',
      'en': 'Neighborhood',
    },
    '02mnx7jf': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'z86htjuo': {
      'pt': 'Estado',
      'en': 'state',
    },
    'fmkemxq5': {
      'pt': 'CEP',
      'en': 'Zip code',
    },
    '1b6hem6t': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'wej74cvx': {
      'pt': 'Número',
      'en': 'Number',
    },
    'hl1603t4': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // editarCliente
  {
    'mlt74j2j': {
      'pt': 'Editar Cliente',
      'en': 'Edit Customer',
    },
    'jucdq3gb': {
      'pt': 'Razão Social',
      'en': 'Corporate name',
    },
    '8wqejalm': {
      'pt': 'Digite a razão social...',
      'en': 'Enter the company name...',
    },
    'ut4dkk45': {
      'pt': 'Nome Fantasia',
      'en': 'Fantasy name',
    },
    'u04auvfz': {
      'pt': 'Digite o nome fantasia...',
      'en': 'Enter your fantasy name...',
    },
    'kintujlf': {
      'pt': 'CNPJ/CPF',
      'en': 'CNPJ/CPF',
    },
    '12ptvqzx': {
      'pt': 'Digite o CNPJ/CPF...',
      'en': 'Enter your CNPJ/CPF...',
    },
    '6cxbx5o3': {
      'pt': 'Inscrição Estadual',
      'en': 'State registration',
    },
    'f39a7txu': {
      'pt': 'Digite a inscrição estadual...',
      'en': 'Enter state registration...',
    },
    'da9qfflm': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'wp9o77z2': {
      'pt': 'Digite o e-mail...',
      'en': 'Enter email...',
    },
    'u4fuqkdx': {
      'pt': 'CEP',
      'en': 'Zip code',
    },
    'wps6zynj': {
      'pt': 'Digite o CEP...',
      'en': 'Enter zip code...',
    },
    '6vlmvje5': {
      'pt': 'Bairro',
      'en': 'Neighborhood',
    },
    'p1io3i9z': {
      'pt': 'Digite o bairro...',
      'en': 'Enter the neighborhood...',
    },
    'biz8k2kp': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'kq4ycfy7': {
      'pt': 'Digite a cidade...',
      'en': 'Enter the city...',
    },
    'ulerwwf9': {
      'pt': 'Estado',
      'en': 'state',
    },
    '0g2xz9qs': {
      'pt': 'Digite o estado...',
      'en': 'Enter the state...',
    },
    'n8qubglx': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'pts2byqm': {
      'pt': 'Digite o endereço...',
      'en': 'Enter the address...',
    },
    'zohcvquc': {
      'pt': 'Número',
      'en': 'Number',
    },
    'u6bvrvdo': {
      'pt': 'Digite o número...',
      'en': 'Enter the number...',
    },
    't6fycl5g': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'odrwj2z5': {
      'pt': 'Digite o telefone...',
      'en': 'Enter phone...',
    },
    '0l7ablk2': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'b4uyudp4': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'smnx0j83': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // cadastrarCliente
  {
    'hmjoge3u': {
      'pt': 'Cadastrar Cliente',
      'en': 'Register Customer',
    },
    'hzv3zs8x': {
      'pt': 'Razão Social',
      'en': 'Corporate name',
    },
    'dxwq3lj8': {
      'pt': 'Digite a razão social...',
      'en': 'Enter the company name...',
    },
    'q18a74nk': {
      'pt': 'Nome Fantasia',
      'en': 'Fantasy name',
    },
    'mcuyioo7': {
      'pt': 'Digite o nome fantasia...',
      'en': 'Enter your fantasy name...',
    },
    'k7y8x583': {
      'pt': 'CNPJ/CPF',
      'en': 'CNPJ/CPF',
    },
    'ybtpe97m': {
      'pt': 'Digite o CNPJ/CPF...',
      'en': 'Enter your CNPJ/CPF...',
    },
    't6r6q2fr': {
      'pt': 'Inscrição Estadual',
      'en': 'State registration',
    },
    '3lbqun4f': {
      'pt': 'Digite a inscrição estadual...',
      'en': 'Enter state registration...',
    },
    'gfdcfutk': {
      'pt': 'E-mail',
      'en': 'Email',
    },
    'kckjeyde': {
      'pt': 'Digite o e-mail...',
      'en': 'Enter email...',
    },
    'ovqosjn6': {
      'pt': 'CEP',
      'en': 'Zip code',
    },
    '5455z1zf': {
      'pt': 'Digite o CEP...',
      'en': 'Enter zip code...',
    },
    '7a7ls0ta': {
      'pt': 'Bairro',
      'en': 'Neighborhood',
    },
    'kooxg5bu': {
      'pt': 'Digite o bairro...',
      'en': 'Enter the neighborhood...',
    },
    'owa6c505': {
      'pt': 'Cidade',
      'en': 'City',
    },
    'acelhigt': {
      'pt': 'Digite a cidade...',
      'en': 'Enter the city...',
    },
    'r4d82ede': {
      'pt': 'Estado',
      'en': 'state',
    },
    '3a55hfbm': {
      'pt': 'Digite o estado...',
      'en': 'Enter the state...',
    },
    'kvluqkot': {
      'pt': 'Endereço',
      'en': 'Address',
    },
    'f06oq3d9': {
      'pt': 'Digite o endereço...',
      'en': 'Enter the address...',
    },
    'jv9y1ot0': {
      'pt': 'Número',
      'en': 'Number',
    },
    'kgp4sj6f': {
      'pt': 'Digite o número...',
      'en': 'Enter the number...',
    },
    'vwn4tli3': {
      'pt': 'Telefone',
      'en': 'Telephone',
    },
    'f4iebvdi': {
      'pt': 'Digite o telefone...',
      'en': 'Enter phone...',
    },
    'z0p93sl0': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'sgajueb5': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'dwddeomx': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // produtosCadastrados
  {
    '21vc6112': {
      'pt': 'Buscar produtos...',
      'en': 'Search products...',
    },
    'e75jmb0n': {
      'pt': 'Produtos',
      'en': 'Products',
    },
    'ai38xey1': {
      'pt': 'Produtos',
      'en': 'Products',
    },
  },
  // editarProdutoC
  {
    'c3jat16i': {
      'pt': 'Notificar',
      'en': '',
    },
    'gmly5qi8': {
      'pt': 'Nome',
      'en': 'Name',
    },
    'unymz8rk': {
      'pt': 'Digite o nome do produto...',
      'en': 'Enter the product name...',
    },
    'hdorbumr': {
      'pt': 'SKU',
      'en': 'SKU',
    },
    'n3kv797z': {
      'pt': 'Digite o sku do produto...',
      'en': 'Enter the product sku...',
    },
    '67ayg4hm': {
      'pt': 'Código de Barras (EAN)',
      'en': 'Barcode (EAN)',
    },
    '3wjz2ol0': {
      'pt': 'Digite o código de barras do produto (EAN)...',
      'en': 'Enter the product barcode (EAN)...',
    },
    'fa9fpo6v': {
      'pt': 'Código da Caixa (DUM)',
      'en': 'Box Code (DUM)',
    },
    'vx9gxw56': {
      'pt': 'Digite o código da caixa (DUM)...',
      'en': 'Enter the box code (DUM)...',
    },
    'n93ovsnx': {
      'pt': 'NCM',
      'en': 'NCM',
    },
    'wlc728np': {
      'pt': 'Digite o NCM do produto...',
      'en': 'Enter the product NCM...',
    },
    'ke4s8guj': {
      'pt': 'Peso',
      'en': 'Weight',
    },
    'pcyg0xlt': {
      'pt': 'Digite o peso do produto...',
      'en': 'Enter the weight of the product...',
    },
    'p10k2gmy': {
      'pt': 'Altura',
      'en': 'Height',
    },
    '1xit9mmu': {
      'pt': 'Digitea altura do produto...',
      'en': 'Enter the height of the product...',
    },
    '8j5im4ae': {
      'pt': 'Largura',
      'en': 'Width',
    },
    't5frlvj5': {
      'pt': 'Digite a largura do produto...',
      'en': 'Enter the width of the product...',
    },
    'te2nlybq': {
      'pt': 'Comprimento',
      'en': 'Length',
    },
    'ljknkuyt': {
      'pt': 'Digite o comprimento do produto...',
      'en': 'Enter the length of the product...',
    },
    'q8dqc1eb': {
      'pt': 'Tabela 1',
      'en': 'Table 1',
    },
    'lbh9letx': {
      'pt': 'Digite o preço da tabela 1...',
      'en': 'Enter the price from table 1...',
    },
    'h3qjf0k5': {
      'pt': 'Tabela 2',
      'en': 'Table 2',
    },
    'yv2nsyc8': {
      'pt': 'Digite o preço da tabela 2...',
      'en': 'Enter the price from table 2...',
    },
    '6upx5p6x': {
      'pt': 'Tabela 3',
      'en': 'Table 3',
    },
    'vjp5fckb': {
      'pt': 'Digite o preço da tabela 3...',
      'en': 'Enter the price from table 3...',
    },
    '1h26xws4': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'i0qg6813': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'plvs55l7': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // cadastrarProduto
  {
    '843dog5a': {
      'pt': 'Cadastrar Produto',
      'en': 'Register Product',
    },
    '66kp7sr0': {
      'pt': 'Nome',
      'en': 'Name',
    },
    '5yflz8c8': {
      'pt': 'Digite o nome do produto...',
      'en': 'Enter the product name...',
    },
    'nu5b9zd5': {
      'pt': 'SKU',
      'en': 'SKU',
    },
    'dlzfz0mq': {
      'pt': 'Digite o sku do produto...',
      'en': 'Enter the product sku...',
    },
    'ua2wao6q': {
      'pt': 'Código de Barras (EAN)',
      'en': 'Barcode (EAN)',
    },
    '2of7gh05': {
      'pt': 'Digite o código de barras do produto (EAN)...',
      'en': 'Enter the product barcode (EAN)...',
    },
    'frr92gc1': {
      'pt': 'Código da Caixa (DUM)',
      'en': 'Box Code (DUM)',
    },
    'vm5tjk7c': {
      'pt': 'Digite o código da caixa (DUM)...',
      'en': 'Enter the box code (DUM)...',
    },
    'xpsmxyri': {
      'pt': 'NCM',
      'en': 'NCM',
    },
    'ah1lgq20': {
      'pt': 'Digite o NCM do produto...',
      'en': 'Enter the product NCM...',
    },
    'kxa4c50v': {
      'pt': 'Peso',
      'en': 'Weight',
    },
    'u9f4ye3g': {
      'pt': 'Digite o peso do produto...',
      'en': 'Enter the weight of the product...',
    },
    'syawzgdj': {
      'pt': 'Altura',
      'en': 'Height',
    },
    'ylry2rn2': {
      'pt': 'Digitea altura do produto...',
      'en': 'Enter the height of the product...',
    },
    '7a0v1moc': {
      'pt': 'Largura',
      'en': 'Width',
    },
    'soreknx2': {
      'pt': 'Digite a largura do produto...',
      'en': 'Enter the width of the product...',
    },
    'k5k5eyjd': {
      'pt': 'Comprimento',
      'en': 'Length',
    },
    'j4kwrpbi': {
      'pt': 'Digite o comprimento do produto...',
      'en': 'Enter the length of the product...',
    },
    '5zz17zm0': {
      'pt': 'Tabela 1',
      'en': 'Table 1',
    },
    'ikiyult9': {
      'pt': 'Digite o preço da tabela 1...',
      'en': 'Enter the price from table 1...',
    },
    'ck7w3rev': {
      'pt': 'Tabela 2',
      'en': 'Table 2',
    },
    'nqow4njv': {
      'pt': 'Digite o preço da tabela 2...',
      'en': 'Enter the price from table 2...',
    },
    'hfo7vav5': {
      'pt': 'Tabela 3',
      'en': 'Table 3',
    },
    'ggn0pwfw': {
      'pt': 'Digite o preço da tabela 3...',
      'en': 'Enter the price from table 3...',
    },
    'b7q0k7rc': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'siawxkqz': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'yetqd120': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // pedidos
  {
    '3hzhv0px': {
      'pt': 'Orçamentos',
      'en': 'Budgets',
    },
    'g3q4y8v8': {
      'pt': 'R\$',
      'en': 'R\$',
    },
    'zemom3yc': {
      'pt': 'Pedidos',
      'en': 'Requests',
    },
    'ownyzpzh': {
      'pt': 'R\$',
      'en': 'R\$',
    },
    'ogek9pi4': {
      'pt': 'Pedidos',
      'en': 'Requests',
    },
    '8o38dtk9': {
      'pt': 'Razão social ou CNPJ...',
      'en': 'Corporate name or CNPJ...',
    },
    '78ehtzwp': {
      'pt': 'Pedidos',
      'en': 'Requests',
    },
  },
  // clientesCadastradosPedido
  {
    'ni040b6z': {
      'pt': 'Buscar clientes...',
      'en': 'Search for customers...',
    },
    'i2ygz5qm': {
      'pt': 'Clientes',
      'en': 'Customers',
    },
    'dl8lgf97': {
      'pt': 'Clientes',
      'en': 'Customers',
    },
  },
  // novoOrcamento
  {
    'a0718aik': {
      'pt': 'ADICIONAR PRODUTOS',
      'en': 'ADD PRODUCTS',
    },
    '95dz0im9': {
      'pt': 'Option 1',
      'en': 'Option 1',
    },
    'hqbaqo1u': {
      'pt': 'Forma de pagamento...',
      'en': 'Form of payment...',
    },
    's44884sh': {
      'pt': 'Search for an item...',
      'en': 'Search for an item...',
    },
    'zflokn0s': {
      'pt': 'Parcelas',
      'en': 'Installments',
    },
    's6udeeya': {
      'pt': 'Explore todas as parcelas geradas para este orçamento aqui...',
      'en': 'Explore all installments generated for this budget here...',
    },
    'yxay95sp': {
      'pt': 'Vencimento',
      'en': 'Maturity',
    },
    'pdewa4ri': {
      'pt': 'Valor',
      'en': 'Value',
    },
    '1hhl58dq': {
      'pt': 'Tipo',
      'en': 'Type',
    },
    'vo781dpx': {
      'pt': 'Informações adicionais...',
      'en': 'Additional Information...',
    },
    '48r68kvc': {
      'pt': 'Totais',
      'en': 'Totals',
    },
    '4gtc0lxa': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'wgt8eomq': {
      'pt': 'Subtotal',
      'en': 'Subtotal',
    },
    'yz00rnt7': {
      'pt': 'Desconto',
      'en': 'Discount',
    },
    '9rc5xnsh': {
      'pt': 'Total',
      'en': 'Total',
    },
    'bocsi6bk': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // cadastrarSituacoes
  {
    'y7a84x38': {
      'pt': 'Situações',
      'en': 'Situations',
    },
    'nb9ztxpe': {
      'pt': 'Nome',
      'en': 'Name',
    },
    'mp8scd1d': {
      'pt': 'Digite o nome...',
      'en': 'Enter the name...',
    },
    'njo3l7fi': {
      'pt': 'Selecionar cor  ',
      'en': 'Select color',
    },
    '95691ilk': {
      'pt': 'Ativo',
      'en': 'Active',
    },
    'u81kw38b': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'bu8lvfi2': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // catalogo
  {
    '7saejcv2': {
      'pt': 'Catálogo',
      'en': 'Catalog',
    },
    'h9vj52fh': {
      'pt': 'Descrição',
      'en': 'Description',
    },
    'qgfxlzsz': {
      'pt': 'Preço',
      'en': 'Price',
    },
    'obypzy8s': {
      'pt': 'Total',
      'en': 'Total',
    },
    '76o2kg0e': {
      'pt': 'Title',
      'en': 'Title',
    },
    'plcmsvkl': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    'k2t6cjb6': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    '20wbgsoj': {
      'pt': 'Title',
      'en': 'Title',
    },
    'v9y2e0oo': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    '38znn3yv': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    'zmnexx7o': {
      'pt': 'Title',
      'en': 'Title',
    },
    '1hbygpxo': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    'jdf2j8go': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    'ugvctoxu': {
      'pt': 'Title',
      'en': 'Title',
    },
    '2km9nsv5': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    'g0vze84a': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    'afthjy8f': {
      'pt': 'Title',
      'en': 'Title',
    },
    'hojxyxpj': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    'xmgt7ra9': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    'g5h0jc0r': {
      'pt': 'Title',
      'en': 'Title',
    },
    '5e4zx5dj': {
      'pt': 'Subtext',
      'en': 'Subtext',
    },
    'zo4hdnw1': {
      'pt': '\$11.00',
      'en': '\$11.00',
    },
    'po2id5xp': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // alterarSituacaoPedido
  {
    'mm6xvdd1': {
      'pt': 'Alterar Situação',
      'en': 'Change Status',
    },
    'f3sn8cth': {
      'pt': 'Selecione a situação...',
      'en': 'Select the situation...',
    },
    'uo34cgt5': {
      'pt': 'Option 1',
      'en': 'Option 1',
    },
    'c35ygw9x': {
      'pt': 'Selecione a situação...',
      'en': 'Select the situation...',
    },
    'wvnd7oim': {
      'pt': 'Search for an item...',
      'en': 'Search for an item...',
    },
    've11p33b': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // cadastrarFormaPagamento
  {
    'a8ux7hwk': {
      'pt': 'Forma de Pagamentos',
      'en': 'Payment Method',
    },
    '6ce4z2mm': {
      'pt': 'Nome',
      'en': 'Name',
    },
    'zfnzp80g': {
      'pt': 'Digite o nome da forma de pagamento...',
      'en': 'Enter the name of the payment method...',
    },
    'dsutmgqa': {
      'pt': 'Exemplo: Boleto 30/45 dias, Cartão, A vista, Cheque...',
      'en': 'Example: Boleto 30/45 days, Card, Cash, Check...',
    },
    '1dxp6d04': {
      'pt': 'Salvar',
      'en': 'To save',
    },
    'q1r4vsjz': {
      'pt': 'Segure para excluir a forma de pagamento.',
      'en': 'Hold to delete the payment method.',
    },
    'nc57dk80': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // importacoes
  {
    'tnwu5xax': {
      'pt': 'Importações',
      'en': 'Imports',
    },
    '199k8dcj': {
      'pt': 'Clientes',
      'en': 'Customers',
    },
    'hs3xi6vo': {
      'pt': 'Planilha modelo  ',
      'en': 'Model spreadsheet',
    },
    'm932qd3x': {
      'pt': 'Importar',
      'en': 'import',
    },
    'rp81tlvf': {
      'pt': 'Importar clientes',
      'en': 'Import customers',
    },
    'bachxir2': {
      'pt': 'Excluir todos',
      'en': 'Delete all',
    },
    '4j508so1': {
      'pt': 'Produtos',
      'en': 'Products',
    },
    'tpiix9px': {
      'pt': 'Planilha modelo  ',
      'en': 'Model spreadsheet',
    },
    'dra1ei2t': {
      'pt': 'Importar',
      'en': 'import',
    },
    'cy8iy796': {
      'pt': 'Importar produtos',
      'en': 'Import products',
    },
    '0784cb8f': {
      'pt': 'Excluir todos',
      'en': 'Delete all',
    },
    'lsvpntc4': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // promocoes
  {
    'v0wwoilx': {
      'pt': ' Notificações',
      'en': 'Payment Method',
    },
    'airevfrv': {
      'pt': 'Título',
      'en': 'Name',
    },
    '8749ej87': {
      'pt': 'Digite o título da notificação...',
      'en': 'Enter the name of the payment method...',
    },
    'rf7khvh2': {
      'pt': 'Descrição',
      'en': 'Name',
    },
    'fk7ma3oh': {
      'pt': 'digite a descrição da notificação...',
      'en': 'Enter the name of the payment method...',
    },
    'mmvfgsjw': {
      'pt': 'Notificar usuários',
      'en': 'To save',
    },
    '3046cu5f': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // notificacoes
  {
    '5a1v3mnf': {
      'pt': 'Promoções e Notificações',
      'en': 'Payment Method',
    },
    '8occ6tef': {
      'pt': 'Título',
      'en': 'Name',
    },
    '2yxs21xb': {
      'pt': 'Digite o título da notificação...',
      'en': 'Enter the name of the payment method...',
    },
    '9cx3xlx7': {
      'pt': 'Descrição',
      'en': 'Name',
    },
    '8wyx8vob': {
      'pt': 'digite a descrição da notificação...',
      'en': 'Enter the name of the payment method...',
    },
    'cz84fbg2': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // pagamentos
  {
    'v6rghoc8': {
      'pt': 'Pagamentos',
      'en': 'Payment Method',
    },
    '3sckshfu': {
      'pt': 'R\$ 50,00',
      'en': '',
    },
    'qtwc57k7': {
      'pt': 'Pagar',
      'en': 'To save',
    },
    'i6be5p9y': {
      'pt': 'Reposável',
      'en': '',
    },
    'frcztijk': {
      'pt': 'Vencimento',
      'en': '',
    },
    'amkmauvr': {
      'pt': 'Home',
      'en': 'Home',
    },
  },
  // testevideo
  {
    'rxy1rvg1': {
      'pt': 'Enviar vídeo',
      'en': '',
    },
    'dwvewumg': {
      'pt': 'Agendar',
      'en': '',
    },
    '24mi1b92': {
      'pt': 'Agendar 2',
      'en': '',
    },
    'he0nma87': {
      'pt': 'Agendar 3',
      'en': '',
    },
    '9ezn7dcc': {
      'pt': 'Enviar vídeo',
      'en': '',
    },
    'w1arokhz': {
      'pt': 'Home',
      'en': '',
    },
  },
  // cadastroEmpresa
  {
    'm74j2ly2': {
      'pt': 'Nome da empresa',
      'en': 'Company Name',
    },
    '8yj532rj': {
      'pt': 'Digite o nome da empresa...',
      'en': 'Enter the company name...',
    },
    '1o9cytye': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'mu504t3p': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // alterarFoto
  {
    '52qvv6md': {
      'pt': 'Alterar foto',
      'en': 'Change photo',
    },
    '46ayign6': {
      'pt': 'Carregue uma nova foto abaixo.',
      'en': 'Upload a new photo below.',
    },
    'opq981v3': {
      'pt': 'Selecionar',
      'en': 'Select',
    },
    'cva9mrs0': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // alterarFotoUser
  {
    'ms4gysic': {
      'pt': 'Alterar foto',
      'en': 'Change photo',
    },
    'ck5ltqdv': {
      'pt': 'Carregue uma nova foto abaixo.',
      'en': 'Upload a new photo below.',
    },
    '63hhusov': {
      'pt': 'Selecionar',
      'en': 'Select',
    },
    'trcgrrpl': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // cadastroUsuario
  {
    'osvdvh30': {
      'pt': 'Cadastrar Usuário',
      'en': 'Register user',
    },
    'b8ogbkbx': {
      'pt': 'Digite o e-mail...',
      'en': 'Enter email...',
    },
    'aslz9bwe': {
      'pt': 'Digite o senha...',
      'en': 'Enter the password...',
    },
    'amdm8kmo': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    'odzeatmt': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // webhook
  {
    'if5wm5xx': {
      'pt': 'Wrl para notificações de pedidos...',
      'en': 'Wrl for order notifications...',
    },
    'jm4k2bw4': {
      'pt': 'Wrl para notificações de novos clientes cadastrados...',
      'en': 'Wrl for notifications of new registered customers...',
    },
    '8ijxwu2h': {
      'pt': 'Wrl para notificações de clientes atualizados...',
      'en': 'Wrl for updated customer notifications...',
    },
    'jl2x7f67': {
      'pt': 'Wrl para notificações de novos produtos cadastrados...',
      'en': 'Wrl for notifications of new registered products...',
    },
    'lbohvani': {
      'pt': 'Wrl para notificações de  produtos atualizados...',
      'en': 'Wrl for updated product notifications...',
    },
    'jit28h0c': {
      'pt': 'Sair',
      'en': 'To go out',
    },
    'syrkihbs': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // alterarFotoCliente
  {
    'cirebhcc': {
      'pt': 'Alterar foto',
      'en': 'Change photo',
    },
    'dpzwawub': {
      'pt': 'Carregue uma nova foto abaixo.',
      'en': 'Upload a new photo below.',
    },
    '88j5py71': {
      'pt': 'Selecionar',
      'en': 'Select',
    },
    'w6e5tb7q': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // alterarFotoProduto
  {
    '24eqj6tk': {
      'pt': 'Alterar foto',
      'en': 'Change photo',
    },
    'n03greel': {
      'pt': 'Carregue uma nova foto abaixo.',
      'en': 'Upload a new photo below.',
    },
    '62tltrme': {
      'pt': 'Selecionar',
      'en': 'Select',
    },
    'ylasfaze': {
      'pt': 'Salvar',
      'en': 'To save',
    },
  },
  // emptyPedidos
  {
    'oilltik8': {
      'pt':
          'Desculpe, não encontramos nenhum pedido correspondente ao seu usuário.',
      'en': 'Sorry, we couldn\'t find any requests matching your username.',
    },
  },
  // emptyOrcamento
  {
    '6ggkgty2': {
      'pt':
          'Desculpe, não encontramos nenhum orçamento correspondente ao seu usuário.',
      'en': 'Sorry, we didn\'t find any quote matching your username.',
    },
  },
  // empty
  {
    '02cpipkc': {
      'pt': 'Desculpe, não encontramos nenhuma informação.',
      'en': 'Sorry, we couldn\'t find any information.',
    },
  },
  // dropPedidos
  {
    'z5vgauvx': {
      'pt': 'Opções',
      'en': 'options',
    },
    '2kkvorc2': {
      'pt': 'Enviar e-mail',
      'en': 'Send email',
    },
    '1uezx8oi': {
      'pt': 'Ver PDF',
      'en': 'View PDF',
    },
    'f53x2d46': {
      'pt': 'Compartilhar PDF',
      'en': 'Share PDF',
    },
    '88gce5tp': {
      'pt': 'Gerar pedido',
      'en': 'Generate order',
    },
    'mof8smlh': {
      'pt': 'Apagar',
      'en': 'To switch off',
    },
    'bcykov1q': {
      'pt': 'Duplicar',
      'en': 'Duplicate',
    },
    'g827e27u': {
      'pt': 'Log out',
      'en': 'Log out',
    },
  },
  // menu
  {
    'exm9dvmd': {
      'pt': 'Navegação',
      'en': 'Navigation',
    },
    'mcmt8vkl': {
      'pt': 'Usuários',
      'en': 'Users',
    },
    'wl83y9ck': {
      'pt': 'Situações de Pedidos',
      'en': 'Order Situations',
    },
    'k3zzdh2m': {
      'pt': 'Formas de Pagamentos',
      'en': 'Payment methods',
    },
    'agetuba8': {
      'pt': 'Pagamentos',
      'en': 'Categories',
    },
    '7txvkm06': {
      'pt': 'Configurações',
      'en': 'settings',
    },
    '1d02wc1b': {
      'pt': 'Notificações',
      'en': 'Notifications',
    },
    'q85ob6u4': {
      'pt': 'Importações',
      'en': 'Imports',
    },
    'yrfv1i0s': {
      'pt': 'Exportações',
      'en': 'Exports',
    },
    'v3086v5x': {
      'pt': 'Modo claro',
      'en': 'Light mode',
    },
    'lbaw1omj': {
      'pt': 'Modo escuro',
      'en': 'Dark Mode',
    },
  },
  // adicionarProduto
  {
    'b9sx7yvm': {
      'pt': 'Adicionar',
      'en': 'To add',
    },
    'ixjxll0j': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // editarQuantidadeDigitar
  {
    'fpmdpend': {
      'pt': 'Quantidade...',
      'en': 'Amount...',
    },
    'vhlm0jo1': {
      'pt': 'Editar',
      'en': 'To edit',
    },
    'p3kwejwy': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // editarQuantidade
  {
    'x9vflrmn': {
      'pt': 'Editar',
      'en': 'To edit',
    },
    'nti9a2er': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // adicionarProdutoDigitar
  {
    'sgj66sxq': {
      'pt': 'Quantidade...',
      'en': 'Amount...',
    },
    'xcqqfrjs': {
      'pt': 'Adicionar',
      'en': 'To add',
    },
    '1gbrt050': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
  },
  // desconto
  {
    'gv2dnoh1': {
      'pt': 'Percentual de desconto',
      'en': 'Discount percentage',
    },
    'b6p6cpct': {
      'pt': 'Cancelar',
      'en': 'Cancel',
    },
    '1obinbh0': {
      'pt': 'Aplicar',
      'en': 'To apply',
    },
  },
  // emptyParcelas
  {
    'yg53feaz': {
      'pt': 'Desculpe, não encontramos nenhuma parcela.',
      'en': 'Sorry, we didn\'t find any parcels.',
    },
  },
  // Miscellaneous
  {
    'bcmtkfvn': {
      'pt': '',
      'en': '',
    },
    '9nzhfou5': {
      'pt': '',
      'en': '',
    },
    '3puyktzd': {
      'pt': '',
      'en': '',
    },
    '85zfy6dd': {
      'pt': 'Ative as notificações.',
      'en': 'Turn on notifications.',
    },
    'ha25ziy4': {
      'pt': 'L',
      'en': '',
    },
    'fnzv88iv': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    '89yvh2ki': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'i88lw6gw': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'z2ihjs0h': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'eksfontl': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'fkb1xogq': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'bfhypkoj': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'y8vbthdy': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'bf62rfks': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'k0l70l1q': {
      'pt': 'O aplicativo precisa desta permissão para funcionar corretamente.',
      'en': '',
    },
    'w69xwb8x': {
      'pt': '',
      'en': '',
    },
    'lrtg8hco': {
      'pt': '',
      'en': '',
    },
    'rxf3ie3p': {
      'pt': '',
      'en': '',
    },
    '3o1kaxv5': {
      'pt': '',
      'en': '',
    },
    'nzqxya9b': {
      'pt': '',
      'en': '',
    },
    '1xtzjpd1': {
      'pt': '',
      'en': '',
    },
    'gwx3qxtv': {
      'pt': '',
      'en': '',
    },
    'b00kki4t': {
      'pt': '',
      'en': '',
    },
    'ri5r7lmc': {
      'pt': '',
      'en': '',
    },
    '279b4iy7': {
      'pt': '',
      'en': '',
    },
    'e34nyulm': {
      'pt': '',
      'en': '',
    },
    'cscnqvrg': {
      'pt': '',
      'en': '',
    },
    'jd8sxuot': {
      'pt': '',
      'en': '',
    },
    'uvzl8rpd': {
      'pt': '',
      'en': '',
    },
    'ygkmtus9': {
      'pt': '',
      'en': '',
    },
    'stp6pm2m': {
      'pt': '',
      'en': '',
    },
    'gvszwx8m': {
      'pt': '',
      'en': '',
    },
    '6ojcp5ky': {
      'pt': '',
      'en': '',
    },
    '8k76bmvj': {
      'pt': '',
      'en': '',
    },
    'wl530ubs': {
      'pt': '',
      'en': '',
    },
    '9t53bpwa': {
      'pt': '',
      'en': '',
    },
    'cw75jeze': {
      'pt': '',
      'en': '',
    },
    'glp641im': {
      'pt': '',
      'en': '',
    },
    '7w8t4l2o': {
      'pt': '',
      'en': '',
    },
    '1o67jf86': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
