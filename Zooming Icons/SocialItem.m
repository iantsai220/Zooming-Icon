//
//  SocialItem.m
//  Zooming Icons
//
//  Created by Ian Tsai on 2015-06-11.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "SocialItem.h"

@implementation SocialItem

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image color:(UIColor *)color summary:(NSString *)summary
{
    self = [super init];
    if (self) {
        
        _name = name;
        _image = image;
        _color = color;
        _summary = summary;
        
    }
    return self;
}

@end
