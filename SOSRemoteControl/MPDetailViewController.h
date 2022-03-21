#import <UIKit/UIKit.h>
#import "MainPresentationViewController.h"

@interface MPDetailViewController : MainPresentationViewController <UISplitViewControllerDelegate> {
    
    UIBarButtonItem *barButton;
    UIToolbar *toolbar;
    UIBarButtonItem *overlaysButton;
}

@property (nonatomic, strong) IBOutlet UIBarButtonItem *barButton;
@property (nonatomic, strong) IBOutlet UIToolbar *toolbar;
@property (nonatomic, strong) IBOutlet UIButton *overlaysBtn;

@end
