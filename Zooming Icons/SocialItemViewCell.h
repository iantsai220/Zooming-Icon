//
//  SocialItemViewCell.h
//  Zooming Icons
//
//  Created by Ian Tsai on 2015-06-11.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialItem.h"

@interface SocialItemViewCell : UICollectionViewCell

@property (nonatomic, strong) SocialItem *socialItem;

-(void)configure;


@end
