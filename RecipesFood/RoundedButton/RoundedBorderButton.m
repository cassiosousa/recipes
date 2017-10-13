//
//  RoundedBorderButton.m
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "RoundedBorderButton.h"

@implementation RoundedBorderButton

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
    CGFloat borderWidth = 2.0f;
    self.tintColor = [UIColor colorWithRed:1.00 green:0.55 blue:0.17 alpha:1.0];
    self.layer.cornerRadius = self.frame.size.height / 2;
    //inset border
    self.frame = CGRectInset(self.frame, -borderWidth, -borderWidth);
    self.layer.masksToBounds = YES;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = [UIColor colorWithRed:1.00 green:0.55 blue:0.17 alpha:1.0].CGColor;
}

@end
