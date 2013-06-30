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

@end

@implementation CardPlayerViewController

- (IBAction)flipCard:(UIButton *)sender {
    sender.selected = !sender.isSelected;
}

@end
