#import <UIKit/UIKit.h>
#import "ApplicationDelegate_Shared.h"

@class SettingsNavController;
@class MPRootViewController;
@class MPDetailViewController;

@interface ApplicationDelegate_Pad : ApplicationDelegate_Shared <UITabBarControllerDelegate> {
}

// For the global tab bar controller.
@property (nonatomic, strong) IBOutlet UITabBarController *tabBarController;

// For the split vc in the Presentation tab.
@property (nonatomic, strong) IBOutlet UISplitViewController *splitViewController;
@property (nonatomic, strong) IBOutlet MPRootViewController *rootViewController;
@property (nonatomic, strong) IBOutlet MPDetailViewController *detailViewController;

 // For the split vc in the Data Catalog tab.
@property (nonatomic, strong) IBOutlet UISplitViewController *splitViewControllerD;

@end
