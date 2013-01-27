//
//  Card.h
//  Matchismo
//
//  Created by Javier Alexandro on 25/01/13.
//  Copyright (c) 2013 PVSoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property (nonatomic,getter = isUnPlayable) BOOL unplayable;

- (int)match:(NSArray *)otherCards;

@end
