//
//  AppDelegate.h
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OMCMobileBackendManager.h"

#import "MobileBackend.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MobileBackend *myMobileBackend;

@end

