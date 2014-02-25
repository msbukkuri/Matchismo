//
//  Card.m
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/22/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "Card.h"

@interface Card()
//private declarations go here

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for(Card *card in otherCards){
        if([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    
    return score;
}

@end



//- (int)match:(Card *)card
//{
//    int score = 0;
//
//    if([card.contents isEqualToString:self.contents])
//    {
//        score = 1;
//    }
//
//    return score;
//}

////instance variable and allocating the contents property
//@synthesize contents = _contents;
//@synthesize chosen = _chosen;
//@synthesize matched = _matched;
//
////getter for the _contents variable
//- (NSString *)contents
//{
//    return _contents;
//}
//
////setter for the _contents variable
//- (void)setContents:(NSString *)contents
//{
//    _contents = contents;
//}
//
//- (BOOL)isChosen
//{
//    return _chosen;
//}
//
//-(void)setChosen:(bool)chosen
//{
//    _chosen = chosen;
//}
//
//- (BOOL)isMatched
//{
//    return _matched;
//}
//
//- (void)setMatched:(bool)matched
//{
//    _matched = matched;
//}
