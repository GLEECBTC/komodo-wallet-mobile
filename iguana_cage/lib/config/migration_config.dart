/// Centralized configuration for the migration window and app removal date.
///
/// Update [removalDateUtc] to change the deadline globally.
class MigrationConfig {
  /// The date when the migration app will be permanently removed (UTC).
  ///
  /// NOTE: Adjust this to the real deadline as needed.
  static final DateTime removalDateUtc = DateTime.utc(2025, 11, 30);

  /// Returns the number of full days remaining until [removalDateUtc].
  ///
  /// The calculation is done in UTC and is date-granular to avoid timezone
  /// edge cases where local midnight shifts the count unexpectedly.
  static int daysRemaining({DateTime? now}) {
    final DateTime nowUtc = (now ?? DateTime.now()).toUtc();
    final DateTime todayUtc = DateTime.utc(
      nowUtc.year,
      nowUtc.month,
      nowUtc.day,
    );
    final DateTime deadlineDateUtc = DateTime.utc(
      removalDateUtc.year,
      removalDateUtc.month,
      removalDateUtc.day,
    );
    final Duration diff = deadlineDateUtc.difference(todayUtc);
    final int days = diff.inDays;
    return days < 0 ? 0 : days;
  }

  /// Whether the deadline has passed (strictly after the removal date).
  static bool isPastDeadline({DateTime? now}) {
    final DateTime nowUtc = (now ?? DateTime.now()).toUtc();
    return nowUtc.isAfter(removalDateUtc);
  }
}
