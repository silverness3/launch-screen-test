#import <UIKit/UIKit.h>
#import "PlaylistVC.h"

@class MPDetailViewController;

@interface MPRootViewController : PlaylistVC {
    
    MPDetailViewController *detailViewController;
}

@property (nonatomic, strong) IBOutlet MPDetailViewController *detailViewController;

@end
