#import "ApplicationDelegate_Pad.h"
#import "MPRootViewController.h"
#import "MPDetailViewController.h"

@implementation ApplicationDelegate_Pad

@synthesize tabBarController;
@synthesize splitViewController;
@synthesize rootViewController;
@synthesize detailViewController;
@synthesize splitViewControllerD;

-(void) makeSplitViewController {
    
    // Create an array of controllers that will correspond to each tab in the tab bar vc.
    NSMutableArray *controllers = [NSMutableArray arrayWithArray:self.tabBarController.viewControllers];
    
    int index = 0; 
    for (UIViewController *controller in self.tabBarController.viewControllers) {
        
        // Set the split vc in the Presentation tab to hold the playlist in the root vc and the presenter controls in the detail vc.
        if (index == 0) {
            // Set up a storyboard for the root vc and initialize the root vc.
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"PlaylistVC" bundle:nil];
            self.rootViewController = [storyboard instantiateInitialViewController];
            
            // Initialize the detail vc and assign it to the root vc.
            detailViewController = [[MPDetailViewController alloc] initWithNibName:@"MPDetailViewController" bundle:nil];
            self.rootViewController.detailViewController = self.detailViewController;
            
            // Set up a split vc to hold the root vc and detail vc we just created.
            splitViewController = [[UISplitViewController alloc] init];
            self.splitViewController.tabBarItem = controller.tabBarItem;
            self.splitViewController.viewControllers = @[self.rootViewController, self.detailViewController];
            
            // Set the split vc's delegate.
            self.splitViewController.delegate = self.detailViewController;
            
            // Other.
            self.splitViewController.presentsWithGesture = NO;
            
            // Add the split vc to the list of controllers that will correspond to each tab in tab bar vc).
            controllers[index] = self.splitViewController;
        }
        
        // Set the split vc in the Datasets tab.
        if (index == 1) {
            // Set up a storyboard for the root vc and initialize the root vc.
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"DatasetsVC" bundle:nil];
            self.splitViewControllerD = [storyboard instantiateViewControllerWithIdentifier:@"DatasetsVC"];
            
            // Set the title and icon of the Datasets tab bar item.  Tried to do this in Interface Builder, but it would
            // always show up blank.
            self.splitViewControllerD.tabBarItem.title = @"Data Catalog";
            
            // Add the split vc to the list of controllers that will correspond to each tab in tab bar vc.
            controllers[index] = self.splitViewControllerD;
        }
        
        index++;
    }
    
    // Set the tab bar's array of vc's with the split vc's controllers we just created.
    self.tabBarController.viewControllers = controllers;
    self.tabBarController.delegate = self;
    self.tabBarController.viewControllers = controllers;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	[super application:application didFinishLaunchingWithOptions:launchOptions];

    // This helps us to get a split view controller inside a tab.
    [self makeSplitViewController];
	
    // Set the window view to the tab bar vc.
    self.window.rootViewController = self.tabBarController;
    [self.window addSubview:self.tabBarController.view];
    
    // Make the receiver the main window and display it in front of other windows.
    [self.window makeKeyAndVisible];
    
    // iOS 15 added a default vertical content offset (i.e., padding) for table views that is non-zero that
    // pushes the table view down. Force this offset to be zero for all table views.
    if (@available(iOS 15.0, *)) {
        UITableView.appearance.sectionHeaderTopPadding = 0;
    }
    
    return YES;
}

#pragma mark - Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}

@end
