//
//  ZWWCardController.h
//  DeckObjC
//
//  Created by Zebadiah Watson on 10/7/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZWWCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZWWCardController : NSObject

+ (ZWWCardController *)sharedController;

- (void)drawNewCard:(NSInteger)numberOfCards completion:(void (^) (NSArray <ZWWCard *> *))completion;

- (void)fetchImage:(ZWWCard *)card completion:(void(^)(UIImage *))completion;


@end

NS_ASSUME_NONNULL_END
