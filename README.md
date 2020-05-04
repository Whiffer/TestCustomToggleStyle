# TestCustomToggleStyle

This sample project is intended to demonstrate how to set and test Toggle switches within a SwiftUI List in an Xcode UI Test Case.

Testing Environment
- Xcode Version 11.4.1 (11E503a)
- Simulator: iPhone SE (2nd generation)
- Device: iPhone X iOS Version 13.4.1
- macOS: Version 10.15.4

# With Custom Toggle Style Modifier

This Xcode UI test case fails on all three platforms.  The issue seems to be that the .tap() method for the switch XCUIElement does not change its internal state when running as a UI test.  When actually running the App, the switches .isOn state seems to work as desired and expected.

# Without Custom Toggle Style Modifier

When using the default Toggle Style, this Xcode UI test case is successful on all platforms.  However, the tableview cell does not have the desired custom layout.
