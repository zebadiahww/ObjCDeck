//
//  ZWWViewController.h
//  DeckObjC
//
//  Created by Zebadiah Watson on 10/7/19.
//  Copyright © 2019 Zebadiah Watson. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZWWViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *suitLabel;

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;

- (IBAction)DrawNewButtonTapped:(id)sender;



@end

NS_ASSUME_NONNULL_END
