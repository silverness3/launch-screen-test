#import "PlaylistVC.h"

/* CONSTANTS */
static NSString *const ClipCellIdentifier = @"ClipCell";

@interface PlaylistVC ()

@end

@implementation PlaylistVC

- (void)viewDidLoad {
    
    [super viewDidLoad];

    // Set up capability for automatic resizing of table view cells (this is used in conjuction with auto layout).
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight =  45;
}

- (void)viewWillAppear:(BOOL)animated {
}

- (void)viewDidAppear:(BOOL)animated {

    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    
    return @"Table Footer Title";
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ClipCell *cell = [tableView dequeueReusableCellWithIdentifier:ClipCellIdentifier forIndexPath:indexPath];
    cell.nameLabel.text = @"Table Cell Name";
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}
@end
