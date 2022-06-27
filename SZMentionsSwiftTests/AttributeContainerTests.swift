@testable import SZMentionsSwift
import XCTest

private final class AttributeContainerMentionTests: XCTestCase {
    func test_shouldBeGeneratedFromAnArrayOfAttributeContainerMentions() {
        let actual = [
            Attribute(name: .backgroundColor, value: UIColor.red) as AttributeContainerMention,
            Attribute(name: .foregroundColor, value: UIColor.blue) as AttributeContainerMention,
        ].dictionary as! [NSAttributedString.Key: UIColor]
        let expected: [NSAttributedString.Key: UIColor] = [NSAttributedString.Key.backgroundColor: UIColor.red,
                                                           NSAttributedString.Key.foregroundColor: UIColor.blue]

        XCTAssertEqual(actual, expected)
    }
}
