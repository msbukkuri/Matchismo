//
//  PlayingCard.m
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/23/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit; //because we provided the setter and getter for this property ourselves


+ (NSArray *)validSuits
{
    return @[@"♥︎", @"♦︎", @"♠︎", @"♣︎"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger *)maxRank
{
    return [[self rankStrings] count];
}

- (NSString *)contents
{
    //%d = digit %@ = object
    //return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
    
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

- (void)setSuit:(NSString *)suit
{
    if([[PlayingCard validSuits] containsObject:suit])
    {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if(rank <= (NSUInteger)[PlayingCard maxRank])
    {
        _rank = rank;
    }
}

@end
