class UpgradePlanModel {
  final int price;
  final String period;
  final String title;

  const UpgradePlanModel({required this.period, required this.price, required this.title});

  static final List<UpgradePlanModel> upgradePlanDummyList = [
    const UpgradePlanModel(period: "Month", price: 5, title: "Monthly"),
    const UpgradePlanModel(period: "Year", price: 50, title: "Annually"),
  ];
}
  