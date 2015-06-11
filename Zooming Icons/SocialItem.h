//
//  SocialItem.h
//  Zooming Icons
//
//  Created by Ian Tsai on 2015-06-11.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

@interface SocialItem : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) UIImage *image;

@property (nonatomic, strong) UIColor *color;

@property (nonatomic, strong) NSString *summary;

- (instancetype)initWithName:(NSString *)name image:(UIImage *)image color:(UIColor *)color summary:(NSString *)summary;


@end
