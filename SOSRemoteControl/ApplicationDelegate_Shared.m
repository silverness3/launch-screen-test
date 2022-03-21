#import "ApplicationDelegate_Shared.h"

@implementation ApplicationDelegate_Shared

@synthesize window;
@synthesize settingsNavController;
@synthesize settingsTabBarItem;
@synthesize settingsTableViewController;
@synthesize mainWindowTabBarController;

+ (void)initialize
{
	// Register default user preferences
	NSString *path = [[NSBundle mainBundle] bundlePath];
	NSString *pListPath = [path stringByAppendingPathComponent:@"Settings.bundle/Root.plist"];
	NSDictionary *pList = [NSDictionary dictionaryWithContentsOfFile:pListPath];
	
	NSMutableArray *prefsArray = pList[@"PreferenceSpecifiers"];
	NSMutableDictionary *regDictionary = [NSMutableDictionary dictionary];
	for (NSDictionary *dict in prefsArray) {		
		NSString *key = dict[@"Key"];
		if (key) {
			id value = dict[@"DefaultValue"];
			regDictionary[key] = value;
		}
	}
	[[NSUserDefaults standardUserDefaults] registerDefaults:regDictionary];
}

#pragma mark - Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   // Override point for customization after application launch.
    
    // Set up appearance of navigation bar controllers. This will show a 1 pixel line at the bottom of the bar (vs. being transparent)
    if (@available(iOS 13.0, *)) {
        UINavigationBarAppearance *navBar = [UINavigationBarAppearance new];
        [navBar configureWithDefaultBackground];
        UINavigationBar.appearance.standardAppearance = navBar;
        UINavigationBar.appearance.compactAppearance = navBar;
        UINavigationBar.appearance.scrollEdgeAppearance = navBar;
    }
    
    [self.window makeKeyAndVisible];    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
	
	// Allow screen locking.
	[UIApplication sharedApplication].idleTimerDisabled = NO;
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
    NSLog(@"ApplicationDelegate_Shared:applicationWillTerminate()");
}

#pragma mark - UITabBarControllerDelegate methods

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
	return;
}
*/

/*
// Optional UITabBarControllerDelegate method.
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/

#pragma mark - Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}
@end

