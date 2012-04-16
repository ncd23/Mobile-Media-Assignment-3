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
    NSLog(@"%i", [restaurants count]);
    return [restaurants count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifier = @"RestaurantCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    Restaurant* currentRestaurant= [restaurants objectAtIndex:indexPath.row];
    cell.textLabel.text = currentRestaurant.name;
    cell.detailTextLabel.text = currentRestaurant.cuisineType;
    return cell;
}
    

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController* detailVC = (DetailViewController*)
    [segue destinationViewController];
    
    UITableView* table = [self tableView];
    NSIndexPath* indexPath = [table indexPathForSelectedRow];
    Restaurant* currentRestaurant = [restaurants objectAtIndex:indexPath.row];
    detailVC.restaurant = currentRestaurant;
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
    
    
    
    Restaurant* cabana = [[Restaurant alloc] init];
    
    cabana.name = @"Cabana";
    cabana.address = @"89 South Seaport\nNew York, NY 10128";
    cabana.cuisineType = @"Cuban";
    cabana.yearOpened = 1994;
    
    
    Review* cabanaReview1 = [[Review alloc] init];
    cabanaReview1.text = @"The best skirt steak and mojitos I've ever had!";
    cabanaReview1.reviewerName = @"The Smiths";
    cabanaReview1.score = 5;
    cabanaReview1.numberOfHelpfulRatings = 12;
    cabanaReview1.numberOfUnhelpfulRatings = 7;
    
    Review* cabanaReview2 = [[Review alloc] init];
    cabanaReview2.text = @"Food is okay, service is slow and staff is unfriendly.";
    cabanaReview2.reviewerName = @"Anonymous";
    cabanaReview2.score = 2;
    cabanaReview2.numberOfHelpfulRatings = 2;
    cabanaReview2.numberOfUnhelpfulRatings = 6;
    
    Review* cabanaReview3 = [[Review alloc] init];
    cabanaReview3.text = @"I love this place. Definitely try the empanadas, fried plantains, and the delicious mojitos! In nice weather you can sit on the balcony overlooking the seaport.";
    cabanaReview3.reviewerName = @"Michelle Carr";
    cabanaReview3.score = 5;
    cabanaReview3.numberOfHelpfulRatings =17;
    cabanaReview3.numberOfUnhelpfulRatings = 3;
    
    Review* cabanaReview4 = [[Review alloc] init];
    cabanaReview4.text = @"The food is good, but the service is not so great. The waiter chased out after me asking for more money for his tip.";
    cabanaReview4.reviewerName = @"Tod";
    cabanaReview4.score = 4;
    cabanaReview4.numberOfHelpfulRatings = 12;
    cabanaReview4.numberOfUnhelpfulRatings = 5;
    
    Review* cabanaReview5= [[Review alloc] init];
    cabanaReview5.text= @"I cannot stand this place. Food is disgusting and service is horrendous!";
    cabanaReview5.reviewerName = @"Nicole";
    cabanaReview5.score = 1;
    cabanaReview5.numberOfHelpfulRatings = 4;
    cabanaReview5.numberOfUnhelpfulRatings = 3;
    
    
    [cabana.reviews addObject: cabanaReview5];
    
    cabana.reviews = [[NSMutableArray alloc] initWithObjects: pioReview1, cabanaReview2, cabanaReview3, cabanaReview4, cabanaReview5, nil];
    
    [restaurants addObject: cabana];
    

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

@end

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

