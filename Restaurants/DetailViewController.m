//
//  DetailViewController.m
//  Restaurants
//
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize addressLabel;
@synthesize navigationHeader;
@synthesize cuisineLabel;
@synthesize ageLabel;
@synthesize helpfulReviewPercentageLabel;
@synthesize helpfulReviewLabel;

@synthesize star1;
@synthesize star2;
@synthesize star3;
@synthesize star4;
@synthesize star5;

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    restaurant = [[Restaurant alloc] init];
    
    restaurant.name = @"Pio Pio";
    restaurant.address = @"746 First Avenue\nNew York, NY 10128";
    restaurant.cuisineType = @"Peruvian";
    restaurant.yearOpened = 1995;
    

    Review* review1 = [[Review alloc] init];
    review1.text = @"What fab-u-lass chicken! We could eat it all day if we didn't have to stop to drink sangria!";
    review1.reviewerName = @"The Addams";
    review1.score = 5;
    review1.numberOfHelpfulRatings = 12;
    review1.numberOfUnhelpfulRatings = 7;
    
    Review* review2 = [[Review alloc] init];
    review2.text = @"I DONE POSTED ON DA INTARWEBS!";
    review2.reviewerName = @"Anonymous";
    review2.score = 1;
    review2.numberOfHelpfulRatings = 2;
    review2.numberOfUnhelpfulRatings = 6;
    
    Review* review3 = [[Review alloc] init];
    review3.text = @"Some of the best chicken I've ever eaten. A helpful tip: get some green (Aji) sauce to go, they sell it by the pint!";
    review3.reviewerName = @"Jim Carr";
    review3.score = 5;
    review3.numberOfHelpfulRatings =18;
    review3.numberOfUnhelpfulRatings = 2;
    
    Review* review4 = [[Review alloc] init];
    review4.text = @"While the food is amazing, they often simply don't pick up the phone when ordering out!";
    review4.reviewerName = @"Paul";
    review4.score = 4;
    review4.numberOfHelpfulRatings = 12;
    review4.numberOfUnhelpfulRatings = 5;
    
    Review* review5= [[Review alloc] init];
    review5.text= @"I cannot stand this place. Food is disgusting and service is horrendous!";
    review5.reviewerName = @"Nicole";
    review5.score = 1;
    review5.numberOfHelpfulRatings = 5;
    review5.numberOfUnhelpfulRatings = 1;

 
    [restaurant.reviews addObject: review5];
    
         
    restaurant.reviews = [[NSMutableArray alloc] initWithObjects: review1, review2, review3, review4, review5, nil];
    
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


@end
