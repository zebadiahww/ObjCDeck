//
//  ZWWViewController.m
//  DeckObjC
//
//  Created by Zebadiah Watson on 10/7/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

#import "ZWWViewController.h"
#import "ZWWCardController.h"
#import "ZWWCard.h"

@interface ZWWViewController ()

@end

@implementation ZWWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)DrawNewButtonTapped:(id)sender {
    [ZWWCardController.sharedController drawNewCard:1 completion:^(NSArray<ZWWCard *> * cardArray) {
        [ZWWCardController.sharedController fetchImage:cardArray[0] completion:^(UIImage * image) {
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImageView.image = image;
                ZWWCard * card = cardArray[0];
                self.suitLabel.text = card.suit;
            });
        }];
    }];
}
@end
