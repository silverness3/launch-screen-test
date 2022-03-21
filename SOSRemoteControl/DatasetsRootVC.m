#import "DatasetsRootVC.h"

/* CONSTANTS */
static NSString *const ClipCellIdentifier = @"ClipCell";

@interface DatasetsRootVC ()

@end

@implementation DatasetsRootVC

@synthesize sortBarButtonItem;
@synthesize sortSegControl;

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    // Assign the datasource and delegate.
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    
    // Refresh the table.
    [self.tableView reloadData];
}

- (void)viewDidAppear:(BOOL)animated {
}

- (void)viewDidDisappear:(BOOL)animated {

    // Refresh the table.
    [self refreshTable:self.tableView];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Refresh

- (void)refreshTable:(UITableView *)tableView {
    
    [tableView reloadData];
}

#pragma mark - Table view data source

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ClipCell *cell = [tableView dequeueReusableCellWithIdentifier:ClipCellIdentifier forIndexPath:indexPath];
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return UITableViewCellEditingStyleInsert;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
