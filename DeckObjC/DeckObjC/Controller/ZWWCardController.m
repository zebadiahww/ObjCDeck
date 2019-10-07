//
//  ZWWCardController.m
//  DeckObjC
//
//  Created by Zebadiah Watson on 10/7/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

#import "ZWWCardController.h"

@implementation ZWWCardController
//declared a class method that returns to us ONE instance of ZWWCardController
+ (ZWWCardController *)sharedController
{
    //CREATING A SINGLETON IN OBJECTIVE C
    //make sure this controller doesnt exist
    static ZWWCardController * sharedController = nil;
    //use 'dispatchOnce' thread with 'onceToken' and do something once this is complete
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        //creating a new instance of the ZWWCardController after it runs the above
        sharedController = [ZWWCardController new];
    });
    return sharedController;
}
//create base URL (basically the 'static let baseURL')
static NSString * const baseURLString = @"https://deckofcardsapi.com/api/deck/new";

- (void)drawNewCard:(NSInteger)numberOfCards completion:(void (^)(NSArray<ZWWCard *> * _Nonnull))completion
{
    
}

-(void)fetchImage:(ZWWCard *)card completion:(void (^)(UIImage * _Nonnull))completion
{
    
}

@end
