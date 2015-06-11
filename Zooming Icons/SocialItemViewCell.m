//
//  SocialItemViewCell.m
//  Zooming Icons
//
//  Created by Ian Tsai on 2015-06-11.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "SocialItemViewCell.h"

@interface SocialItemViewCell ()

@property (weak, nonatomic) IBOutlet UIView *view;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation SocialItemViewCell


-(void)layoutSubviews {
    
    self.view.layer.cornerRadius = self.view.frame.size.width / 2;
    self.view.backgroundColor = [UIColor redColor];
    
}

@end
