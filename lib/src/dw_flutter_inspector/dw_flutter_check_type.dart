enum DwFlutterCheckSeverity { info, warning, error }

enum DwFlutterCheckType {
  uiKitPartMissing,
  uiKitContainsText, // Новая проверка
  forbiddenUiUsage,
  forbiddenUiKitImport,
  invalidFeatureStructure,
  forbiddenFeatureImport;

  DwFlutterCheckSeverity get severity => switch (this) {
    DwFlutterCheckType.uiKitContainsText =>
      DwFlutterCheckSeverity.warning, // Мягкое предупреждение
    _ => DwFlutterCheckSeverity.error,
  };

  String get reportLabel => switch (severity) {
    DwFlutterCheckSeverity.info => 'ℹ️ INFO',
    DwFlutterCheckSeverity.warning => '⚠️ WARNING',
    DwFlutterCheckSeverity.error => '❌ ERROR',
  };
}
