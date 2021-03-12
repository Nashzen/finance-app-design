class CurrencyModel {
  String by;
  bool validKey;
  Results results;
  double executionTime;
  bool fromCache;

  CurrencyModel(
      {this.by,
      this.validKey,
      this.results,
      this.executionTime,
      this.fromCache});

  CurrencyModel.fromJson(Map<String, dynamic> json) {
    by = json['by'];
    validKey = json['valid_key'];
    results =
        json['results'] != null ? new Results.fromJson(json['results']) : null;
    executionTime = json['execution_time'];
    fromCache = json['from_cache'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['by'] = this.by;
    data['valid_key'] = this.validKey;
    if (this.results != null) {
      data['results'] = this.results.toJson();
    }
    data['execution_time'] = this.executionTime;
    data['from_cache'] = this.fromCache;
    return data;
  }
}

class Results {
  Currencies currencies;
  Stocks stocks;
  List<String> availableSources;

  Results({this.currencies, this.stocks, this.availableSources});

  Results.fromJson(Map<String, dynamic> json) {
    currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    stocks =
        json['stocks'] != null ? new Stocks.fromJson(json['stocks']) : null;
    availableSources = json['available_sources'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.currencies != null) {
      data['currencies'] = this.currencies.toJson();
    }
    if (this.stocks != null) {
      data['stocks'] = this.stocks.toJson();
    }
    data['available_sources'] = this.availableSources;

    return data;
  }
}

class Currencies {
  String source;
  USD uSD;
  USD eUR;
  GBP gBP;
  ARS aRS;
  GBP cAD;
  GBP aUD;
  GBP jPY;
  GBP cNY;
  USD bTC;

  Currencies(
      {this.source,
      this.uSD,
      this.eUR,
      this.gBP,
      this.aRS,
      this.cAD,
      this.aUD,
      this.jPY,
      this.cNY,
      this.bTC});

  Currencies.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    uSD = json['USD'] != null ? new USD.fromJson(json['USD']) : null;
    eUR = json['EUR'] != null ? new USD.fromJson(json['EUR']) : null;
    gBP = json['GBP'] != null ? new GBP.fromJson(json['GBP']) : null;
    aRS = json['ARS'] != null ? new ARS.fromJson(json['ARS']) : null;
    cAD = json['CAD'] != null ? new GBP.fromJson(json['CAD']) : null;
    aUD = json['AUD'] != null ? new GBP.fromJson(json['AUD']) : null;
    jPY = json['JPY'] != null ? new GBP.fromJson(json['JPY']) : null;
    cNY = json['CNY'] != null ? new GBP.fromJson(json['CNY']) : null;
    bTC = json['BTC'] != null ? new USD.fromJson(json['BTC']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    if (this.uSD != null) {
      data['USD'] = this.uSD.toJson();
    }
    if (this.eUR != null) {
      data['EUR'] = this.eUR.toJson();
    }
    if (this.gBP != null) {
      data['GBP'] = this.gBP.toJson();
    }
    if (this.aRS != null) {
      data['ARS'] = this.aRS.toJson();
    }
    if (this.cAD != null) {
      data['CAD'] = this.cAD.toJson();
    }
    if (this.aUD != null) {
      data['AUD'] = this.aUD.toJson();
    }
    if (this.jPY != null) {
      data['JPY'] = this.jPY.toJson();
    }
    if (this.cNY != null) {
      data['CNY'] = this.cNY.toJson();
    }
    if (this.bTC != null) {
      data['BTC'] = this.bTC.toJson();
    }
    return data;
  }
}

class USD {
  String name;
  double buy;
  double sell;
  double variation;

  USD({this.name, this.buy, this.sell, this.variation});

  USD.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    buy = json['buy'];
    sell = json['sell'];
    variation = json['variation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['buy'] = this.buy;
    data['sell'] = this.sell;
    data['variation'] = this.variation;
    return data;
  }
}

class GBP {
  String name;
  double buy;
  Null sell;
  double variation;

  GBP({this.name, this.buy, this.sell, this.variation});

  GBP.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    buy = json['buy'];
    sell = json['sell'];
    variation = json['variation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['buy'] = this.buy;
    data['sell'] = this.sell;
    data['variation'] = this.variation;
    return data;
  }
}

class ARS {
  String name;
  double buy;
  double sell;
  double variation;

  ARS({this.name, this.buy, this.sell, this.variation});

  ARS.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    buy = json['buy'];
    sell = json['sell'];
    variation = json['variation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['buy'] = this.buy;
    data['sell'] = this.sell;
    data['variation'] = this.variation;
    return data;
  }
}

class Stocks {
  IBOVESPA iBOVESPA;
  IBOVESPA nASDAQ;
  CAC cAC;
  CAC nIKKEI;

  Stocks({this.iBOVESPA, this.nASDAQ, this.cAC, this.nIKKEI});

  Stocks.fromJson(Map<String, dynamic> json) {
    iBOVESPA = json['IBOVESPA'] != null
        ? new IBOVESPA.fromJson(json['IBOVESPA'])
        : null;
    nASDAQ =
        json['NASDAQ'] != null ? new IBOVESPA.fromJson(json['NASDAQ']) : null;
    cAC = json['CAC'] != null ? new CAC.fromJson(json['CAC']) : null;
    nIKKEI = json['NIKKEI'] != null ? new CAC.fromJson(json['NIKKEI']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iBOVESPA != null) {
      data['IBOVESPA'] = this.iBOVESPA.toJson();
    }
    if (this.nASDAQ != null) {
      data['NASDAQ'] = this.nASDAQ.toJson();
    }
    if (this.cAC != null) {
      data['CAC'] = this.cAC.toJson();
    }
    if (this.nIKKEI != null) {
      data['NIKKEI'] = this.nIKKEI.toJson();
    }
    return data;
  }
}

class IBOVESPA {
  String name;
  String location;
  double points;
  double variation;

  IBOVESPA({this.name, this.location, this.points, this.variation});

  IBOVESPA.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    points = json['points'];
    variation = json['variation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['location'] = this.location;
    data['points'] = this.points;
    data['variation'] = this.variation;
    return data;
  }
}

class CAC {
  String name;
  String location;
  double variation;

  CAC({this.name, this.location, this.variation});

  CAC.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    variation = json['variation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['location'] = this.location;
    data['variation'] = this.variation;
    return data;
  }
}
