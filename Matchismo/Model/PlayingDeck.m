//
//  PlayingDeck.m
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/24/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "PlayingDeck.h"
#import "PlayingCard.h"

@implementation PlayingDeck

-(instancetype)init
{
    self = [super init];
    
    if (self)
    {
        for(NSString *suit in [PlayingCard validSuits])
        {
            for(NSUInteger rank = 1; rank < [PlayingCard maxRank]; rank++)
            {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return  self;
}

@end
