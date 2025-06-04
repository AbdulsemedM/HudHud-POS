class ProfitLossReportModel {
  Data? data;

  ProfitLossReportModel({this.data});

  ProfitLossReportModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? totalPurchaseShippingCharge;
  int? totalSellShippingCharge;
  String? totalTransferShippingCharges;
  int? openingStock;
  String? closingStock;
  int? totalPurchase;
  String? totalPurchaseDiscount;
  String? totalPurchaseReturn;
  double? totalSell;
  String? totalSellDiscount;
  String? totalSellReturn;
  String? totalSellRoundOff;
  String? totalExpense;
  String? totalAdjustment;
  String? totalRecovered;
  String? totalRewardAmount;
  List<LeftSideModuleData>? leftSideModuleData;
  List<RightSideModuleData>? rightSideModuleData;
  double? netProfit;
  double? grossProfit;
  List? totalSellBySubtype;

  Data(
      {this.totalPurchaseShippingCharge,
        this.totalSellShippingCharge,
        this.totalTransferShippingCharges,
        this.openingStock,
        this.closingStock,
        this.totalPurchase,
        this.totalPurchaseDiscount,
        this.totalPurchaseReturn,
        this.totalSell,
        this.totalSellDiscount,
        this.totalSellReturn,
        this.totalSellRoundOff,
        this.totalExpense,
        this.totalAdjustment,
        this.totalRecovered,
        this.totalRewardAmount,
        this.leftSideModuleData,
        this.rightSideModuleData,
        this.netProfit,
        this.grossProfit,
        this.totalSellBySubtype});

  Data.fromJson(Map<String, dynamic> json) {
    totalPurchaseShippingCharge = json['total_purchase_shipping_charge'];
    totalSellShippingCharge = json['total_sell_shipping_charge'];
    totalTransferShippingCharges = json['total_transfer_shipping_charges'];
    openingStock = json['opening_stock'];
    closingStock = json['closing_stock'];
    totalPurchase = json['total_purchase'];
    totalPurchaseDiscount = json['total_purchase_discount'];
    totalPurchaseReturn = json['total_purchase_return'];
    totalSell = json['total_sell'];
    totalSellDiscount = json['total_sell_discount'];
    totalSellReturn = json['total_sell_return'];
    totalSellRoundOff = json['total_sell_round_off'];
    totalExpense = json['total_expense'];
    totalAdjustment = json['total_adjustment'];
    totalRecovered = json['total_recovered'];
    totalRewardAmount = json['total_reward_amount'];
    if (json['left_side_module_data'] != null) {
      leftSideModuleData = <LeftSideModuleData>[];
      json['left_side_module_data'].forEach((v) {
        leftSideModuleData!.add(new LeftSideModuleData.fromJson(v));
      });
    }
    if (json['right_side_module_data'] != null) {
      rightSideModuleData = <RightSideModuleData>[];
      json['right_side_module_data'].forEach((v) {
        rightSideModuleData!.add(new RightSideModuleData.fromJson(v));
      });
    }
    netProfit = json['net_profit'];
    grossProfit = json['gross_profit'];
    totalSellBySubtype = [];
    // if (json['total_sell_by_subtype'] != null) {
    //   totalSellBySubtype = <Null>[];
    //   json['total_sell_by_subtype'].forEach((v) {
    //     totalSellBySubtype!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_purchase_shipping_charge'] = this.totalPurchaseShippingCharge;
    data['total_sell_shipping_charge'] = this.totalSellShippingCharge;
    data['total_transfer_shipping_charges'] = this.totalTransferShippingCharges;
    data['opening_stock'] = this.openingStock;
    data['closing_stock'] = this.closingStock;
    data['total_purchase'] = this.totalPurchase;
    data['total_purchase_discount'] = this.totalPurchaseDiscount;
    data['total_purchase_return'] = this.totalPurchaseReturn;
    data['total_sell'] = this.totalSell;
    data['total_sell_discount'] = this.totalSellDiscount;
    data['total_sell_return'] = this.totalSellReturn;
    data['total_sell_round_off'] = this.totalSellRoundOff;
    data['total_expense'] = this.totalExpense;
    data['total_adjustment'] = this.totalAdjustment;
    data['total_recovered'] = this.totalRecovered;
    data['total_reward_amount'] = this.totalRewardAmount;
    if (this.leftSideModuleData != null) {
      data['left_side_module_data'] =
          this.leftSideModuleData!.map((v) => v.toJson()).toList();
    }
    if (this.rightSideModuleData != null) {
      data['right_side_module_data'] =
          this.rightSideModuleData!.map((v) => v.toJson()).toList();
    }
    data['net_profit'] = this.netProfit;
    data['gross_profit'] = this.grossProfit;
    if (this.totalSellBySubtype != null) {
      data['total_sell_by_subtype'] =
          this.totalSellBySubtype!.map((v) => v!.toJson()).toList();
    }
    return data;
  }
}

class LeftSideModuleData {
  String? value;
  String? label;
  bool? addToNetProfit;

  LeftSideModuleData({this.value, this.label, this.addToNetProfit});

  LeftSideModuleData.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    addToNetProfit = json['add_to_net_profit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['label'] = this.label;
    data['add_to_net_profit'] = this.addToNetProfit;
    return data;
  }
}

class RightSideModuleData {
  String? value;
  String? label;
  bool? addToNetProfit;

  RightSideModuleData({this.value, this.label, this.addToNetProfit});

  RightSideModuleData.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    label = json['label'];
    addToNetProfit = json['add_to_net_profit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['label'] = this.label;
    data['add_to_net_profit'] = this.addToNetProfit;
    return data;
  }
}