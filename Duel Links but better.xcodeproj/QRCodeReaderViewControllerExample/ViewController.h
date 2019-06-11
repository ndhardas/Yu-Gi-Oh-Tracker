

#import <UIKit/UIKit.h>
#import "QRCodeReaderDelegate.h"

@interface ViewController : UIViewController <QRCodeReaderDelegate>

- (IBAction)scanAction:(id)sender;

@end

