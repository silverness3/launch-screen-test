#import <UIKit/UIKit.h>

@interface ApplicationDelegate_Shared : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IBOutlet UINavigationController *settingsNavController;    
    UITabBarItem *settingsTabBarItem; // used for icon badge notificaton
    UITableViewController *settingsTableViewController; // for navigation bar at top of SOS Settings page
    IBOutlet UITabBarController *mainWindowTabBarController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet UINavigationController *settingsNavController;
@property (nonatomic, strong) IBOutlet UITabBarItem *settingsTabBarItem;
@property (nonatomic, strong) IBOutlet UITableViewController *settingsTableViewController;
@property (nonatomic, strong) IBOutlet UITabBarItem *layersTabBarItem;
@property (nonatomic, strong) IBOutlet UITabBarController *mainWindowTabBarController;

@end
