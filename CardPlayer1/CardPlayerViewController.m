//
//  CardPlayerViewController.m
//  CardPlayer1
//
//  Created by Regan Sarwas on 2013-06-30.
//  Copyright (c) 2013 Regan Sarwas. All rights reserved.
//

#import "CardPlayerViewController.h"
#import "Deck.h"

@interface CardPlayerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic, readonly) Deck *cards;

@end

@implementation CardPlayerViewController

@synthesize cards = _cards;

- (Deck *) cards {
    if (!_cards)
        _cards = [[Deck alloc] init];
    return _cards;
}

- (void) setFlipCount:(int)count {
    _flipCount = count;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", _flipCount];
    NSLog(@"Flips: %d", _flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    if (self.cards.isEmpty) {
        self.flipCountLabel.text = @"Flips: 52 (Deck is empty)";
        [sender setTitle:@"" forState:UIControlStateNormal];
        return;
    }
    [sender setTitle:[[self.cards drawRandomCard] description] forState:UIControlStateNormal];
    self.flipCount++;
}

@end
