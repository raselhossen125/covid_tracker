// ignore_for_file: unnecessary_brace_in_string_interps, prefer_interpolation_to_compose_strings

class Endpoints {
  Endpoints._();

  // baseUrl
  static const String baseUrl = 'https://disease.sh/v3/covid-19/';

  // api
  static const String worldStateApi = baseUrl + 'all';
  static const String countriesListApi = baseUrl + 'countries';
}
