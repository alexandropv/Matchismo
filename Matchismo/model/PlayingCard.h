//
//  PlayingCard.h
//  Matchismo
//
//  Created by Javier Alexandro on 25/01/13.
//  Copyright (c) 2013 PVSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
@interface PlayingCard : Card

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
