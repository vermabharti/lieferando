import 'dart:math';

class BackendService {
  static Future<List> getSuggestions(String query) async {
    await Future.delayed(Duration(seconds: 1));
    return List.generate(3, (index) {
      return {'name': query + index.toString(), 'price': Random().nextInt(100)};
    });
  }
}

class CitiesService {
  static final List<String> cities = [
    '80335',
    '80336',
    '80337',
    '80339',
    '80469',
    '80538',
    '80539',
    '80634',
    '80637',
    '80638',
    '80639',
    '80686',
    '80687',
    '80689',
    '80796',
    '80797',
    '80798',
    '80799',
    '80801',
    '80802',
    '80803',
    '80804',
    '80805',
    '80807',
    '80809',
    '80933',
    '80935',
    '80937',
    '80939',
    '80992',
    '80993',
    '80995',
    '80997',
    '80999',
    '81241',
    '81243',
    '81245',
    '81247',
    '81249',
    '81369',
    '81371',
    '81373',
    '81375',
    '81377',
    '81379',
    '81475',
    '81476',
    '81477',
    '81479',
    '81539',
    '81541',
    '81543',
    '81547',
    '81667',
    '80636',
    '81671',
    '81675',
    '81679',
    '81925',
    '82152',
    '70569',
    '70569'

  ];
  

  static List<String> getSuggestions(String query) {
    List<String> matches = List();
    matches.addAll(cities);
    matches.retainWhere((s) => s.toLowerCase().contains(query.toLowerCase()));
    return matches;
  }
}
