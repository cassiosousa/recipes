//
//  OMCMobileBackend.h
//  RecipesFood
//
//  Created by Cássio Sousa on 18/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OMCAuthorization.h"
#import "OMCMobileBackend.h"
#import "OMCMobileBackendManager.h"
#import "OMCCustomCodeClient.h"

#define OMC_MBE_Name @"AppRecMBE/1.0"


@interface MobileBackend : NSObject
- (id)init;
- (void)authenticate:(NSString *)userName
             password:(NSString *)password
      completionBlock: (OMCAuthorizationAuthCompletionBlock) completionBlock;
- (void) getRecipes:(void(^)(NSError * _Nullable error, NSHTTPURLResponse * _Nullable response, id  _Nullable responseData))completionBlock;
@end
