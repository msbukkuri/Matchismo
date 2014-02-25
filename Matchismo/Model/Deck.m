//
//  Deck.m
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/23/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "Deck.h"

@interface Deck()
//private declarations go here
@property (strong, nonatomic) NSMutableArray *cards; //of card

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if(!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if(atTop)
    {
        [self.cards insertObject:card atIndex:0];
    }
    else
    {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:(card) atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if([self.cards count])
    {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}

- (BOOL) cardsLeft
{
    return [_cards count] > 0;
}


@end
