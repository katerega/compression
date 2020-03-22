import Test

#if !canImport(ObjectiveC)
@testable import Compression
#else
@testable import _Compression
#endif

class BlockTypeTests: TestCase {
    func testBlockType() {
        expect(try BlockType(0) == .noCompression)
        expect(try BlockType(1) == .fixedHuffman)
        expect(try BlockType(2) == .dynamicHuffman)
        expect(throws: BlockType.Error.invalidType) {
            try BlockType(3)
        }
    }
}
