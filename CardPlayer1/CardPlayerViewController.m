//
//  CardPlayerViewController.m
//  CardPlayer1
//
//  Created by Regan Sarwas on 2013-06-30.
//  Copyright (c) 2013 Regan Sarwas. All rights reserved.
//

#import "CardPlayerViewController.h"

@interface CardPlayerViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardPlayerViewController

- (void) setFlipCount:(int)count {
    _flipCount = count;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips: %d", _flipCount];
    NSLog(@"Flips: %d", _flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
    self.flipCount++;
}

@end
