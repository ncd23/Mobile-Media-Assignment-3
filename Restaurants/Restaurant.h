//
//  Restaurant.h
//  Restaurants
//

#import <Foundation/Foundation.h>
#import "Review.h"

@interface Restaurant : NSObject
{
    NSString* address;
    NSString* name;
    NSString* cuisineType;
    int yearOpened;
    
    NSMutableArray* reviews;
    
    
}
@property(readwrite, strong) NSString* address;
@property(readwrite, strong) NSString* name;
@property(readwrite, strong) NSString* cuisineType;
@property(readwrite) int yearOpened;
@property(readwrite, strong) NSMutableArray* reviews;
@property BOOL isFavorite;

-(BOOL) isFavorite;
-(int)age;
-(Review*) mostHelpfulReview;
-(float) averageCustomerReview;


@end
