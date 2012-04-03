//
//  MasterViewController.m
//  Restaurants
//
//

#import "MasterViewController.h"

@implementation MasterViewController
@synthesize restaurants;

-(int)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"RestaurantCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    Restaurant* currentRestaurant= [restaurants objectAtIndex:indexPath.row];
    cell.textLabel.text = currentRestaurant.name;
    cell.detailTextLabel.text = currentRestaurant.cuisineType;
    return cell;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    restaurants = [[NSMutableArray alloc] init];
    
    Restaurant* piopio = [[Restaurant alloc] init];
    
    piopio.name = @"Pio Pio";
    piopio.address = @"746 First Avenue\nNew York, NY 10128";
    piopio.cuisineType = @"Peruvian";
    piopio.yearOpened = 1995;
    
    
    Review* pioReview1 = [[Review alloc] init];
    pioReview1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    pioReview1.reviewerName = @"The Addams";
    pioReview1.score = 5;
    pioReview1.numberOfHelpfulRatings = 12;
    pioReview1.numberOfUnhelpfulRatings = 7;
    
    Review* pioReview2 = [[Review alloc] init];
    pioReview2.text = @"I DONE POSTED ON DA INTARWEBS!";
    pioReview2.reviewerName = @"Anonymous";
    pioReview2.score = 1;
    pioReview2.numberOfHelpfulRatings = 2;
    pioReview2.numberOfUnhelpfulRatings = 6;
    
    Review* pioReview3 = [[Review alloc] init];
    pioReview3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    pioReview3.reviewerName = @"Jim Carr";
    pioReview3.score = 5;
    pioReview3.numberOfHelpfulRatings =18;
    pioReview3.numberOfUnhelpfulRatings = 2;
    
    Review* pioReview4 = [[Review alloc] init];
    pioReview4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    pioReview4.reviewerName = @"Paul";
    pioReview4.score = 4;
    pioReview4.numberOfHelpfulRatings = 12;
    pioReview4.numberOfUnhelpfulRatings = 5;
    
    Review* pioReview5= [[Review alloc] init];
    pioReview5.text= @"I cannot stand this place. Food is disgusting and service is horrendous!";
    pioReview5.reviewerName = @"Nicole";
    pioReview5.score = 1;
    pioReview5.numberOfHelpfulRatings = 5;
    pioReview5.numberOfUnhelpfulRatings = 1;
    
    
    [piopio.reviews addObject: pioReview5];
    
    piopio.reviews = [[NSMutableArray alloc] initWithObjects: pioReview1, pioReview2, pioReview3, pioReview4, pioReview5, nil];
    
    [restaurants addObject: piopio];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

@end
