// ignore_for_file: unnecessary_this, prefer_collection_literals, unnecessary_new, unnecessary_null_comparison

class CountryModel {
  int? updated;
  String? country;
  CountryInfo? countryInfo;
  int? cases;
  int? todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? todayRecovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  int? deathsPerOneMillion;
  int? tests;
  int? testsPerOneMillion;
  int? population;
  String? continent;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;

  CountryModel(
      {this.updated,
      this.country,
      this.countryInfo,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.continent,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion});

  CountryModel.fromJson(Map<String, dynamic> json) {
    updated = json['updated'] ?? 0;
    country = json['country'] ?? '';
    countryInfo = json['countryInfo'] != null
        ? new CountryInfo.fromJson(json['countryInfo'])
        : null;
    cases = json['cases'] ?? 0;
    todayCases = json['todayCases'] ?? 0;
    deaths = json['deaths'] ?? 0;
    todayDeaths = json['todayDeaths'] ?? 0;
    recovered = json['recovered'] ?? 0;
    todayRecovered = json['todayRecovered'] ?? 0;
    active = json['active'] ?? 0;
    critical = json['critical'] ?? 0;
    casesPerOneMillion = json['casesPerOneMillion'] ?? 0;
    deathsPerOneMillion = json['deathsPerOneMillion'] ?? 0;
    tests = json['tests'] ?? 0;
    testsPerOneMillion = json['testsPerOneMillion'] ?? 0;
    population = json['population'] ?? 0;
    continent = json['continent'] ?? '';
    oneCasePerPeople = json['oneCasePerPeople'] ?? 0;
    oneDeathPerPeople = json['oneDeathPerPeople'] ?? 0;
    oneTestPerPeople = json['oneTestPerPeople'] ?? 0;
    activePerOneMillion = json['activePerOneMillion'] ?? 0.0;
    recoveredPerOneMillion = json['recoveredPerOneMillion'] ?? 0.0;
    criticalPerOneMillion = json['criticalPerOneMillion'] ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = this.updated;
    data['country'] = this.country;
    if (this.countryInfo != null) {
      data['countryInfo'] = this.countryInfo!.toJson();
    }
    data['cases'] = this.cases;
    data['todayCases'] = this.todayCases;
    data['deaths'] = this.deaths;
    data['todayDeaths'] = this.todayDeaths;
    data['recovered'] = this.recovered;
    data['todayRecovered'] = this.todayRecovered;
    data['active'] = this.active;
    data['critical'] = this.critical;
    data['casesPerOneMillion'] = this.casesPerOneMillion;
    data['deathsPerOneMillion'] = this.deathsPerOneMillion;
    data['tests'] = this.tests;
    data['testsPerOneMillion'] = this.testsPerOneMillion;
    data['population'] = this.population;
    data['continent'] = this.continent;
    data['oneCasePerPeople'] = this.oneCasePerPeople;
    data['oneDeathPerPeople'] = this.oneDeathPerPeople;
    data['oneTestPerPeople'] = this.oneTestPerPeople;
    data['activePerOneMillion'] = this.activePerOneMillion;
    data['recoveredPerOneMillion'] = this.recoveredPerOneMillion;
    data['criticalPerOneMillion'] = this.criticalPerOneMillion;
    return data;
  }
}

class CountryInfo {
  int? iId;
  String? iso2;
  String? iso3;
  int? lat;
  int? long;
  String? flag;

  CountryInfo({this.iId, this.iso2, this.iso3, this.lat, this.long, this.flag});

  CountryInfo.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] ?? 0;
    iso2 = json['iso2'] ?? 0.0;
    iso3 = json['iso3'] ?? 0.0;
    lat = json['lat'] ?? 0;
    long = json['long'] ?? 0;
    flag = json['flag'] ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.iId;
    data['iso2'] = this.iso2;
    data['iso3'] = this.iso3;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['flag'] = this.flag;
    return data;
  }
}
