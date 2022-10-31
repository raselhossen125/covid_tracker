// ignore_for_file: prefer_collection_literals, unnecessary_new, file_names

class WorldStateModel {
  int? updated;
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
  double? testsPerOneMillion;
  int? population;
  int? oneCasePerPeople;
  int? oneDeathPerPeople;
  int? oneTestPerPeople;
  double? activePerOneMillion;
  double? recoveredPerOneMillion;
  double? criticalPerOneMillion;
  int? affectedCountries;

  WorldStateModel(
      {this.updated,
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
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries});

  WorldStateModel.fromJson(Map<String, dynamic> json) {
    updated = json['updated'] ?? 0;
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
    testsPerOneMillion = json['testsPerOneMillion'] ?? 0.0;
    population = json['population'] ?? 0;
    oneCasePerPeople = json['oneCasePerPeople'] ?? 0;
    oneDeathPerPeople = json['oneDeathPerPeople'] ?? 0;
    oneTestPerPeople = json['oneTestPerPeople'] ?? 0;
    activePerOneMillion = json['activePerOneMillion'] ?? 0.0;
    recoveredPerOneMillion = json['recoveredPerOneMillion'] ?? 0.0;
    criticalPerOneMillion = json['criticalPerOneMillion'] ?? 0.0;
    affectedCountries = json['affectedCountries'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = updated;
    data['cases'] = cases;
    data['todayCases'] = todayCases;
    data['deaths'] = deaths;
    data['todayDeaths'] = todayDeaths;
    data['recovered'] = recovered;
    data['todayRecovered'] = todayRecovered;
    data['active'] = active;
    data['critical'] = critical;
    data['casesPerOneMillion'] = casesPerOneMillion;
    data['deathsPerOneMillion'] = deathsPerOneMillion;
    data['tests'] = tests;
    data['testsPerOneMillion'] = testsPerOneMillion;
    data['population'] = population;
    data['oneCasePerPeople'] = oneCasePerPeople;
    data['oneDeathPerPeople'] = oneDeathPerPeople;
    data['oneTestPerPeople'] = oneTestPerPeople;
    data['activePerOneMillion'] = activePerOneMillion;
    data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    data['criticalPerOneMillion'] = criticalPerOneMillion;
    data['affectedCountries'] = affectedCountries;
    return data;
  }
}
