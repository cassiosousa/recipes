//
//  RoundedButton.m
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "RoundedButton.h"

IB_DESIGNABLE
@interface RoundedButton ()

@end

@implementation RoundedButton

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self roundedButton];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self roundedButton];
    }
    
    return self;
}

- (void)roundedButton{
    self.tintColor = UIColor.whiteColor;
    self.layer.cornerRadius = self.frame.size.height / 2;
    self.layer.masksToBounds = NO;
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    gradient.frame = self.frame;
    gradient.startPoint = CGPointMake(0.0, 0.5);
    gradient.endPoint = CGPointMake(0.5, 1);
    gradient.colors = @[(id)[UIColor colorWithRed:1.00 green:0.55 blue:0.17 alpha:1.0].CGColor, (id)[UIColor colorWithRed:1.00 green:0.39 blue:0.13 alpha:1.0].CGColor];
    self.backgroundColor = [UIColor colorWithRed:1.00 green:0.55 blue:0.17 alpha:1.0];
    [self.layer insertSublayer:gradient atIndex:0];
}

@end
