//
//  PaddingTextField.m
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "PaddingTextField.h"
IB_DESIGNABLE

@implementation PaddingTextField

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self paddingTextField];
    }
    
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self paddingTextField];
    }
    
    return self;
}

- (void)paddingTextField{
    CGRect rect =  CGRectMake(0, 0, 20, 48);
    UIView *paddingView = [[UIView alloc] initWithFrame:rect];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.layer.borderColor = [UIColor colorWithRed:0.88 green:0.88 blue:0.88 alpha:1.0].CGColor;
    self.layer.masksToBounds=YES;
    self.layer.borderWidth= 1.0f;
}

@end
