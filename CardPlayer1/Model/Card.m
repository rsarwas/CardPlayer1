//
//  Card.m
//  CardPlayer1
//
//  Created by Regan Sarwas on 2013-06-30.
//  Copyright (c) 2013 Regan Sarwas. All rights reserved.
//

#import "Card.h"

@implementation Card

+ (NSArray *) ranks {
    
    static NSArray * _ranks;
    
    if (!_ranks)
        _ranks = @[@"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
       
    return _ranks;
}

+ (NSArray *) suits {
    
    static NSArray * _suits;
    
    if (!_suits)
        _suits = @[@"♠", @"♥", @"♦", @"♣"];
    
    return _suits;
    
}

- (id) initWithSuit:(NSUInteger)suit andRank:(NSUInteger)rank {

    if (Card.suits.count <= suit)
    {
        NSLog(@"Suit (%lu) is out of range [0..%lu]", (unsigned long)suit, (unsigned long)Card.suits.count);
        return nil;
    }
    
    if (Card.ranks.count <= rank)
    {
        NSLog(@"Rank (%lu) is out of range [0..%lu]", (unsigned long)suit, (unsigned long)Card.ranks.count);
        return nil;
    }
    
    self = [super init];
    
    if (self)
    {
        _rank = rank;
        _suit = suit;
    }
    
    return self;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"%@%@", Card.suits[self.suit], Card.ranks[self.suit]];
}

@end
