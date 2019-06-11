
#import <XCTest/XCTest.h>
#import "QRCodeReaderViewController.h"

@interface QRCodeReaderTests : XCTestCase

@end

@implementation QRCodeReaderTests

- (void)testMetadataObjectMethod {
  QRCodeReader *reader =[[QRCodeReader alloc] init];

  XCTAssertEqual(reader.metadataObjectTypes.count, 1);
  XCTAssertEqual(reader.metadataObjectTypes[0], AVMetadataObjectTypeQRCode);

  reader =[[QRCodeReader alloc] initWithMetadataObjectTypes:@[AVMetadataObjectTypeQRCode,
                                                              AVMetadataObjectTypeCode93Code,
                                                              AVMetadataObjectTypeDataMatrixCode]];

  XCTAssertEqual(reader.metadataObjectTypes.count, 3);
  XCTAssertEqual(reader.metadataObjectTypes[0], AVMetadataObjectTypeQRCode);
  XCTAssertEqual(reader.metadataObjectTypes[1], AVMetadataObjectTypeCode93Code);
  XCTAssertEqual(reader.metadataObjectTypes[2], AVMetadataObjectTypeDataMatrixCode);

  reader = [QRCodeReader readerWithMetadataObjectTypes:@[]];
  XCTAssertEqual(reader.metadataObjectTypes.count, 0);
}

@end
