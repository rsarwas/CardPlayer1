//
//  Card.h
//  CardPlayer1
//
//  Created by Regan Sarwas on 2013-06-30.
//  Copyright (c) 2013 Regan Sarwas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (readonly, nonatomic) NSUInteger rank;
@property (readonly, nonatomic) NSUInteger suit;


+ (NSArray *) ranks;
+ (NSArray *) suits;

- (id) initWithSuit:(NSUInteger)suit andRank:(NSUInteger)rank;

@end
