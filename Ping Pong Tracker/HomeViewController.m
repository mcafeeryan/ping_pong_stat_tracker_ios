//
//  HomeViewController.m
//  Ping Pong Tracker
//
//  Created by Ryan McAfee on 2/26/15.
//  Copyright (c) 2015 Ryan McAfee. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@property (nonatomic, readwrite, strong) UILabel* nameLabel;

@end

@implementation HomeViewController

- (UILabel*)nameLabel {
  if (_nameLabel) return _nameLabel;
  _nameLabel = [[UILabel alloc] init];
  _nameLabel.text = @"Ryan McAfee";
  _nameLabel.textColor = [UIColor blackColor];
  return _nameLabel;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self.view addSubview:self.nameLabel];
  self.view.backgroundColor = [UIColor whiteColor];
  // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews {
  [self.nameLabel sizeToFit];
  CGFloat x_coord = (self.view.bounds.size.width - self.nameLabel.bounds.size.width)/2;
  self.nameLabel.frame = CGRectMake(x_coord, 80, self.nameLabel.bounds.size.width, self.nameLabel.bounds.size.height);
}

@end
