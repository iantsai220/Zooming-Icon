//
//  MenuViewController.m
//  Zooming Icons
//
//  Created by Ian Tsai on 2015-06-11.
//  Copyright (c) 2015 Ian Tsai. All rights reserved.
//

#import "MenuViewController.h"
#import "SocialItem.h"
#import "SocialItemViewCell.h"

@interface MenuViewController ()

@property (nonatomic, strong) NSArray *objects;

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.collectionView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0);
    
    [self loadData];
    
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData {
    
    SocialItem *socialItemOne = [[SocialItem alloc] initWithName:@"Twitter" image:[UIImage imageNamed:@"icon-twitter"] color:[UIColor colorWithRed:0.255 green:0.557 blue:0.910 alpha:1.0] summary:@"Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\"."];

    
    SocialItem *socialItemTwo = [[SocialItem alloc] initWithName:@"Facebook" image:[UIImage imageNamed:@"icon-facebook"] color:[UIColor colorWithRed:0.239 green:0.353 blue:0.588 alpha:1.0] summary:@"Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities."];

    
    SocialItem *socialItemThree = [[SocialItem alloc] initWithName:@"Youtube" image:[UIImage imageNamed:@"icon-youtube"] color:[UIColor colorWithRed:0.729 green:0.188 blue:0.180 alpha:1.0] summary:@"YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos."];

    
    SocialItem *socialItemFour = [[SocialItem alloc] initWithName:@"Vimeo" image:[UIImage imageNamed:@"icon-vimeo"] color:[UIColor colorWithRed:0.329 green:0.737 blue:0.988 alpha:1.0] summary:@"Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein"];

    
    SocialItem *socialItemFive = [[SocialItem alloc] initWithName:@"Instagram" image:[UIImage imageNamed:@"icon-instagram"] color:[UIColor colorWithRed:0.325 green:0.498 blue:0.635 alpha:1.0] summary:@"Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr."];

    self.objects = @[ @[socialItemOne, socialItemTwo],
                      @[socialItemThree, socialItemFour, socialItemFive]];
    
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        
        NSIndexPath *indexPath = [[self.collectionView indexPathsForSelectedItems] firstObject];
        SocialItem *socialItem = [self.objects objectAtIndex:indexPath.row];
        
    }
    
    
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return section == 0 ? 2 : 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SocialItemViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.socialItem = (self.objects)[indexPath.section][indexPath.item];
    
    return cell;
}





#pragma mark <UICollectionViewDelegate>

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    NSInteger numCells = [self.collectionView numberOfItemsInSection:section];
    CGFloat cellSpacing = ((UICollectionViewFlowLayout *) collectionViewLayout).minimumLineSpacing;
    CGFloat cellWidth = ((UICollectionViewFlowLayout *) collectionViewLayout).itemSize.width;
    CGFloat inset = (collectionView.bounds.size.width - (numCells * (cellWidth + cellSpacing))) * 0.5;
    inset = MAX(inset, 0.0);
    
    return UIEdgeInsetsMake(0, inset, 20, inset);
    
}


/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
