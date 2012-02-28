//
//  Review.h
//  Restaurants
//
//  Created by Nicole Del Senno on 2/28/12.
//  Copyright (c) 2012 Parsons. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Review : NSObject
{
    NSString* reviewerName;
    NSString* text;
    int score;
    int numberOfHelpfulRatings;
    int numberOfUnhelpfulRatings;
    
}

@property(readwrite, strong)NSString* reviewerName;
@property(readwrite, strong)NSString* text;
@property(readwrite) int score;
@property(readwrite) int numberOfHelpfulRatings;
@property(readwrite) int numberOfUnhelpfulRatings;


@end
