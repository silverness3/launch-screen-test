#import "MPDetailViewController.h"
#import "MPRootViewController.h"

@interface MPDetailViewController ()
- (void)configureView;
@end

@implementation MPDetailViewController

@synthesize barButton;
@synthesize toolbar;
@synthesize overlaysBtn;

#pragma mark - Managing the detail item

/*
 When setting the detail item, update the view and dismiss the popover controller if it's showing.
 */
- (void)setDetailItem:(id)newDetailItem
{
}

- (void)configureView
{
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Hide the hairline line on top of the toolbar.
    self.toolbar.clipsToBounds = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotate {
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        return YES;
    }
    return NO;
}

- (UIInterfaceOrientationMask) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

#pragma mark - Memory management

- (void)didReceiveMemoryWarning
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, retained subviews of main view, etc that aren't in use.
	// e.g. self.myOutlet = nil;
}

@end

