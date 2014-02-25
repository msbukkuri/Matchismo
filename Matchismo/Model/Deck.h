//
//  Deck.h
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/23/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;
- (BOOL)cardsLeft;

@end
