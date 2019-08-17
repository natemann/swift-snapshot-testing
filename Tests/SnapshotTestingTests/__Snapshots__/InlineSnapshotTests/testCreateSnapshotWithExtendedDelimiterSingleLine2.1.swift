import XCTest
@testable import SnapshotTesting
extension InlineSnapshotsValidityTests {
  func testCreateSnapshotWithExtendedDelimiterSingleLine2() {
    let diffable = #######"""
    \"""#
    """#######

    assertInlineSnapshot(matching: diffable, as: .lines, with: ##"""
    \"""#
    """##)
  }
}