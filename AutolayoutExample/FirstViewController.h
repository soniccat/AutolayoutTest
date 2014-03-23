//
//  FirstViewController.h
//  AutolayoutExample
//
//  Created by Alexey Glushkov on 10.03.14.
//  Copyright (c) 2014 Alexey Glushkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *containerView;
@property (strong, nonatomic) IBOutlet UISlider *xslider;
@property (strong, nonatomic) IBOutlet UISlider *ySlider;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomSpace;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *rightSpace;
@end
