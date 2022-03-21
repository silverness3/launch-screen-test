#import <UIKit/UIKit.h>
#import "ApplicationDelegate_Shared.h"
#import "PlaylistVC.h"

@interface DatasetsRootVC : PlaylistVC {
}

@property (nonatomic, strong) IBOutlet UIBarButtonItem *sortBarButtonItem;
@property (nonatomic, strong) IBOutlet UISegmentedControl *sortSegControl;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *addDatasetToggleButton;
@property (strong, nonatomic) IBOutlet UINavigationItem *dataCatalogNavItem;

@end
