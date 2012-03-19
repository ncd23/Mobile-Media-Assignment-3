//
//  Review.m
//  Restaurants
//
//  Created by Nicole Del Senno on 2/28/12.
//  Copyright (c) 2012 Parsons. All rights reserved.
//

#import "Review.h"

@implementation Review
@synthesize reviewerName, text, score, numberOfHelpfulRatings, numberOfUnhelpfulRatings;  



-(int) total
{
    return numberOfHelpfulRatings + numberOfUnhelpfulRatings;
}

-(float) percentage
{
    return (float) numberOfHelpfulRatings/ (numberOfHelpfulRatings + numberOfUnhelpfulRatings);
}

@end
