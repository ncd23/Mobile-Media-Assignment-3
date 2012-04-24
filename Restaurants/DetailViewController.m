//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"
#import "ReviewViewController.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;
@synthesize restaurant;
@synthesize favoriteButton;

@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ReviewViewController* reviewVC = (ReviewViewController*)
    [segue destinationViewController];

    reviewVC.restaurant = restaurant;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
        
    addressLabel.text = [restaurant address];
    navigationHeader.title = [restaurant name];
    cuisineLabel.text = [restaurant cuisineType];
    ageLabel.text = [NSString stringWithFormat:@"Est. %i (%i years ago)", restaurant.yearOpened, [restaurant age]];
    
    Review* review = [restaurant mostHelpfulReview];
    
    helpfulReviewLabel.text = [review text];
    
    if ([review text] == nil) {
        helpfulReviewLabel.text = [NSString stringWithFormat:@"Not enough helpful reviews yet."];
    }
    
    helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@"Most helpful review - %i of %i found this review helpful", review.numberOfHelpfulRatings, [review total]];
    
    if([review total] == 0){
        helpfulReviewPercentageLabel.text = [NSString stringWithFormat:@""];
    }
    
    if(([restaurant averageCustomerReview] > 0.4) &&([restaurant averageCustomerReview] < 1.5)){
    star1.image = [UIImage imageNamed:@"Star_ON.png"];
    }
    
    if(([restaurant averageCustomerReview] >1.4) && ([restaurant averageCustomerReview] < 2.5)){
        (star1.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]);
    
    }
    if(([restaurant averageCustomerReview] >2.4) && ([restaurant averageCustomerReview] < 3.5)){
        (star1.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star3.image = [UIImage imageNamed:@"Star_ON.png"]);
        
    }
    if(([restaurant averageCustomerReview] >3.4) && ([restaurant averageCustomerReview] < 4.5)){
        (star1.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star3.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"]);
        
    }
    if(([restaurant averageCustomerReview] >4.4) && ([restaurant averageCustomerReview] <=5)){
        (star1.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star2.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star3.image = [UIImage imageNamed:@"Star_ON.png"]) &&
        (star4.image = [UIImage imageNamed:@"Star_ON.png"]) && (star4.image = [UIImage imageNamed:@"Star_ON.png"]);
    }
    
    if (restaurant.isFavorite){
        favoriteButton.image = [UIImage imageNamed:@"heart-selected.png"];
    }else{
        favoriteButton.image = [UIImage imageNamed:@"heart.png"];
    }

}

- (void)viewDidUnload
{
    [self setAddressLabel:nil];
    [self setNavigationHeader:nil];
    [self setCuisineLabel:nil];
    [self setAgeLabel:nil];
    [self setHelpfulReviewPercentageLabel:nil];
    [self setHelpfulReviewLabel:nil];
    [self setStar1:nil];
    [self setStar2:nil];
    [self setStar3:nil];
    [self setStar4:nil];
    [self setStar5:nil];
    [self setFavoriteButton:nil];
    [super viewDidUnload];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)markAsFavorite:(id)sender {
    restaurant.isFavorite = !restaurant.isFavorite;
    if (restaurant.isFavorite){
    favoriteButton.image = [UIImage imageNamed:@"heart-selected.png"];
    }else{
        favoriteButton.image = [UIImage imageNamed:@"heart.png"];
    }
    
}
@end
