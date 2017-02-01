//
//  ViewController.m
//  UILabel add Shadows
//
//  Created by Ferrakkem Bhuiyan on 1/2/17.
//  Copyright © 2017 Ferrakkem Bhuiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>
{
    UILabel *submitLabel;
    UILabel *shadowsLabel;
    UITapGestureRecognizer *gesture;

}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#pragma mark:: call_UILabel
    [self createSubmitLabel];
}

#pragma mark ::: Create Submite label
-(void)createSubmitLabel
{
    submitLabel = [[UILabel alloc] initWithFrame: CGRectMake(20, 50, 300-20, 50)];
    submitLabel.backgroundColor = [UIColor clearColor];
    submitLabel.textAlignment = NSTextAlignmentCenter;
    submitLabel.textColor = [UIColor greenColor];
    submitLabel.numberOfLines = 0;
    submitLabel.text = @"Subemt";
    
#pragma mark :: set_UILabel_borderWidth_Border_color_cornerRadious
    submitLabel.layer.borderWidth = 1.0;
    submitLabel.layer.borderColor = [UIColor darkGrayColor].CGColor;
    submitLabel.layer.cornerRadius = 5.00f;
    
#pragma mark :: set_user_interaction
    
    submitLabel.userInteractionEnabled = YES;
    gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelClick)];
    [submitLabel addGestureRecognizer:gesture];
    
    [self.view addSubview:submitLabel];
}

#pragma mark :: create user TapGestureRecognizer method
-(void)labelClick
{
    [self createShadowsLabel];
}

#pragma mark ::: Create Shadows Label

#pragma mark :: Create second UILabel
-(void) createShadowsLabel
{
    shadowsLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 160, 300-20, 50)];
    shadowsLabel.backgroundColor = [UIColor clearColor];
    shadowsLabel.textAlignment = NSTextAlignmentCenter;
    shadowsLabel.textColor = [UIColor blueColor];
    shadowsLabel.numberOfLines = 0;
    shadowsLabel.text = @"Successfully submit :)";
    
#pragma mark :: set_UILabel_borderWidth_Border_color_cornerRadious
    
    shadowsLabel.layer.borderWidth = 1.00f;
    shadowsLabel.layer.borderColor = [UIColor brownColor].CGColor;
    shadowsLabel.layer.cornerRadius = 5.00f;
    
#pragma mark ::: add_shodows
    shadowsLabel.layer.shadowOffset = CGSizeMake(3, 3);
    shadowsLabel.layer.shadowOpacity = 0.7f;
    
    [self.view addSubview: shadowsLabel];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
