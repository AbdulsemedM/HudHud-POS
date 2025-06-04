class ProductStockModel {
  List<Data>? data;
  Links? links;
  Meta? meta;

  ProductStockModel({this.data, this.links, this.meta});

  ProductStockModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  String? totalSold;
  String? totalTransfered;
  String? totalAdjusted;
  String? stockPrice;
  String? stock;
  String? sku;
  String? product;
  String? type;
  int? productId;
  String? unit;
  int? enableStock;
  String? unitPrice;
  String? productVariation;
  String? variationName;
  String? locationName;
  int? locationId;
  int? variationId;

  Data(
      {this.totalSold,
        this.totalTransfered,
        this.totalAdjusted,
        this.stockPrice,
        this.stock,
        this.sku,
        this.product,
        this.type,
        this.productId,
        this.unit,
        this.enableStock,
        this.unitPrice,
        this.productVariation,
        this.variationName,
        this.locationName,
        this.locationId,
        this.variationId});

  Data.fromJson(Map<String, dynamic> json) {
    totalSold = json['total_sold'];
    totalTransfered = json['total_transfered'];
    totalAdjusted = json['total_adjusted'];
    stockPrice = json['stock_price'];
    stock = json['stock'];
    sku = json['sku'];
    product = json['product'];
    type = json['type'];
    productId = json['product_id'];
    unit = json['unit'];
    enableStock = json['enable_stock'];
    unitPrice = json['unit_price'];
    productVariation = json['product_variation'];
    variationName = json['variation_name'];
    locationName = json['location_name'];
    locationId = json['location_id'];
    variationId = json['variation_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_sold'] = this.totalSold;
    data['total_transfered'] = this.totalTransfered;
    data['total_adjusted'] = this.totalAdjusted;
    data['stock_price'] = this.stockPrice;
    data['stock'] = this.stock;
    data['sku'] = this.sku;
    data['product'] = this.product;
    data['type'] = this.type;
    data['product_id'] = this.productId;
    data['unit'] = this.unit;
    data['enable_stock'] = this.enableStock;
    data['unit_price'] = this.unitPrice;
    data['product_variation'] = this.productVariation;
    data['variation_name'] = this.variationName;
    data['location_name'] = this.locationName;
    data['location_id'] = this.locationId;
    data['variation_id'] = this.variationId;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  String? prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta(
      {this.currentPage,
        this.from,
        this.lastPage,
        this.path,
        this.perPage,
        this.to,
        this.total});

  Meta.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    from = json['from'];
    lastPage = json['last_page'];
    path = json['path'];
    perPage = json['per_page'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['path'] = this.path;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}