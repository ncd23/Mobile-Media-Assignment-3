//
//  ReviewViewController.h
//  Restaurants
//
//  Created by Nicole Del Senno on 4/16/12.
//  Copyright (c) 2012 Parsons. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurant.h"

Restaurant* restaurant;

@interface ReviewViewController : UITableViewController
@property(readwrite, strong) Restaurant* restaurant;



@end
