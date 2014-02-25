//
//  Card.h
//  Matchismo
//
//  Created by Maunnas Bukkuri on 2/22/14.
//  Copyright (c) 2014 Impulse Inc. All rights reserved.
//

//old method of importing
//#import <Foundation/Foundation.h>
@import Foundation;

@interface Card : NSObject

//* means that every Card object will have its own contents

//any pointer property such as this much be either (strong) or (weak)
//(strong) no references, memory freed from heap.
//(weak) no references, memory freed from heap, property set to nil.

//(nonatomic) makes it threadsafe, only one object can set it at a time.
@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter = isMatched) BOOL matched;

//- (int)match:(Card *)card;
- (int)match:(NSArray *)otherCards;

@end
