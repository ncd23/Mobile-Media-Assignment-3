//
//  ReviewViewController.m
//  Restaurants
//
//  Created by Nicole Del Senno on 4/16/12.
//  Copyright (c) 2012 Parsons. All rights reserved.
//

#import "ReviewViewController.h"
#import "DetailViewController.h"

@implementation ReviewViewController
@synthesize restaurant;

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [[restaurant reviews] count];
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* CellIdentifier = @"ReviewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        
        UILabel* reviewTextLabel=(UILabel*)[cell viewWithTag:1];
        UILabel* reviewHelpfulnessLabel=(UILabel*) [cell viewWithTag:2];
    
    Review* reviewForIndexPath = [restaurant.reviews objectAtIndex:indexPath.row];
    reviewTextLabel.text = reviewForIndexPath.text;
    reviewHelpfulnessLabel.text = [NSString stringWithFormat:@"%i of %i found this review helpful", reviewForIndexPath.numberOfHelpfulRatings + reviewForIndexPath.numberOfHelpfulRatings];
   
    
    return cell;
}



@end


