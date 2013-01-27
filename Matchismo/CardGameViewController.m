//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Javier Alexandro on 25/01/13.
//  Copyright (c) 2013 PVSoft. All rights reserved.
//

#import "CardGameViewController.h"
#import "model/PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) PlayingCardDeck *deck;

@end

@implementation CardGameViewController

- (void) setFlipCount:(int)flipCount{
    _flipCount=flipCount;
    self.flipsLabel.text=[NSString stringWithFormat:@"Flips: %d",self.flipCount];
    
}

- (void) viewDidLoad{
    
}

- (IBAction)flipCard:(UIButton *)sender
{
    if (sender.isSelected)
    {
        sender.selected=NO;} else {
        
            self.flipCount++;
            if (!self.deck)
            self.deck=[[PlayingCardDeck alloc]init];
            
            [sender setTitle:self.deck.drawRandomCard.contents forState:(UIControlStateSelected)];

            sender.selected=YES;
            
        }
    
}



@end
