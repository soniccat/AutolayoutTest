//
//  FirstViewController.m
//  AutolayoutExample
//
//  Created by Alexey Glushkov on 10.03.14.
//  Copyright (c) 2014 Alexey Glushkov. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic,assign) CGSize originalSize;

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Icon" ofType:@"png"]];
    NSData *data2 = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"InfoPlist" ofType:@"strings"]];
    
    NSString *teststring = @"test string";
    NSData *data3 = [teststring dataUsingEncoding:NSUTF8StringEncoding];
    
    unsigned char bytes[255] = {0,2,234,23,234,24,3,23,23,523,235,2,1,2,12,3};
    NSData *data4 = [NSData dataWithBytes:bytes length:3];
    
    NSLog(@"data %p", data);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    self.originalSize = CGSizeMake(self.containerView.bounds.size.width, self.view.bounds.size.height - self.containerView.frame.origin.y);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeWidth:(id)sender {
    self.rightSpace.constant = self.originalSize.width * (1-self.xslider.value);
}

- (IBAction)changeHeight:(id)sender {
    self.bottomSpace.constant = self.originalSize.height * (1-self.ySlider.value);

}

@end
