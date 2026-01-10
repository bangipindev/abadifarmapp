enum CategoryTargetType { tab, page }

class ListMenuCategoryModel {
  final String icon;
  final String label;

  /// untuk tab
  final int? tabIndex;

  /// untuk page
  final String? route;

  final CategoryTargetType targetType;

  ListMenuCategoryModel({
    required this.label,
    required this.icon,
    required this.targetType,
    this.tabIndex,
    this.route,
  });
}
