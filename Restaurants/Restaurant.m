//
//  Restaurant.m
//  Restaurants
//

#import "Restaurant.h"
#import "Review.h"


@implementation Restaurant
@synthesize address, name, cuisineType, yearOpened, reviews;


-(int)age
{
    return 2012 - yearOpened;
}

-(Review*) mostHelpfulReview
{
    Review* mostHelpfulReview = nil;
    
    for (Review* review in reviews)
    {
        if (review.numberOfHelpfulRatings > 4)
        {
        if (mostHelpfulReview == nil){
            mostHelpfulReview = review;
        }
        if(review.percentage > mostHelpfulReview.percentage)
        {
            mostHelpfulReview = review;
        }
    }
}
 
        NSLog (@"Review Text: %@", mostHelpfulReview.text);
return mostHelpfulReview;
  
}

-(float) averageCustomerReview
{
    int sum=0;
    for(Review* score in reviews)
    {
        sum+= [score score];
                
}
    return sum / [reviews count];
}

@end
