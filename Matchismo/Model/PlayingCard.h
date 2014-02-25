//
//  PlayingCard.h
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/23/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger *)maxRank;

@end
