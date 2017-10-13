//
//  TabBarViewController.m
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "TabBarViewController.h"

const CGFloat kBarHeight = 56;

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    [self shadowTabBar];
    [self.tabBar layoutIfNeeded];
}

- (UIImage *) imageWithBorderWidth:(CGFloat)width height:(CGFloat)height{
    CGSize size = CGSizeMake(width, height);
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
    [[UIColor colorWithRed:1.00 green:0.58 blue:0.17 alpha:1.0] setFill];
    UIRectFill(CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (void)shadowTabBar{
    self.tabBar.layer.shadowOffset = CGSizeMake(0, -1.5);
    self.tabBar.layer.shadowRadius = 10;
    self.tabBar.layer.shadowColor = [UIColor colorWithRed:0/255 green:0/255 blue:0/255 alpha:1].CGColor;
    self.tabBar.layer.shadowOpacity = 0.15;
    self.tabBar.layer.borderWidth=0;
    self.tabBar.layer.borderColor= UIColor.clearColor.CGColor;
   
    [[UITabBar appearance] setBackgroundImage:[[UIImage alloc] init]];
     [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
}

- (void)viewWillLayoutSubviews {
    
    CGRect tabFrame = self.tabBar.frame; //self.TabBar is IBOutlet of your TabBar
    tabFrame.size.height = kBarHeight;
    tabFrame.origin.y = self.view.frame.size.height - kBarHeight;
    self.tabBar.frame = tabFrame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
