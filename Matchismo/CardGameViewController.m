//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/22/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingDeck *playingDeck;
@end

@implementation CardGameViewController

@synthesize playingDeck = _playingDeck;

- (void)initialize
{
    if (_playingDeck == Nil) {
        _playingDeck = [[PlayingDeck alloc] init];
    }
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount = %d", self.flipCount);
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    //initialize the game
    [self initialize];
    NSString *title = Nil;
    
    if(![_playingDeck cardsLeft])
    {
        title = @"END";
    }
    else if([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        title = [[_playingDeck drawRandomCard] contents];
        self.flipCount++;
    }
    [sender setTitle:title forState:UIControlStateNormal];
}

@end
