//
//  Deck.m
//  CardPlayer1
//
//  Created by Regan Sarwas on 2013-06-30.
//  Copyright (c) 2013 Regan Sarwas. All rights reserved.
//

#import "Deck.h"

@implementation Deck

NSMutableArray *_deck;

- (id) init {

    self = [super init];
    if (self) {
        _deck = [[NSMutableArray alloc] init];
        for (NSUInteger suit= 0; suit < Card.suits.count; suit++) {
            for (NSUInteger rank= 0; rank < Card.ranks.count; rank++) {
                [_deck addObject:[[Card alloc] initWithSuit:suit andRank:rank]];
            }
        }
    }
    
    return self;        
}

- (BOOL) isEmpty {
    return !_deck || _deck.count == 0;
}

- (Card *)drawRandomCard{

    Card * card;
    
    if (self.isEmpty)
        return card;
    
    NSUInteger randomIndex = 0;
    card = _deck[randomIndex];
    [_deck removeObjectAtIndex:randomIndex];
    
    return card;
}

@end
