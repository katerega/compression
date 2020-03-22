import Test

#if !canImport(ObjectiveC)
@testable import Compression
#else
@testable import _Compression
#endif

class BlockTypeTests: TestCase {
    func testBlockType() {
        assertEqual(try BlockType(0), .noCompression)
        assertEqual(try BlockType(1), .fixedHuffman)
        assertEqual(try BlockType(2), .dynamicHuffman)
        assertThrowsError(try BlockType(3))
    }
}
