//
//  OMCMobileBackend.m
//  RecipesFood
//
//  Created by Cássio Sousa on 18/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "MobileBackend.h"

#define RECIPES_URI @"rec_api/recipes"
#define METHOD_GET @"GET"

@interface MobileBackend ()
@property (nonatomic,strong) OMCMobileBackend *mbe;
- (OMCMobileBackend *) appRecBackEnd;
@end

@implementation MobileBackend

-(id)init{
    
    self = [super init];
    if(self) {
        NSLog(@"_init: %@", self);    }
    return self;
}
/**
 * Returns the mobile backend named "AppRecMBE/1.0" that is configured in the OMC.plist file
 */
- (OMCMobileBackend *) appRecBackEnd{
    
    return [[OMCMobileBackendManager sharedManager] mobileBackendForName:OMC_MBE_Name];
}

- (void) authenticate:(NSString *)userName password:(NSString *)password completionBlock:(OMCAuthorizationAuthCompletionBlock)completionBlock{
    
    self.mbe = [self appRecBackEnd];
    
    OMCAuthorization *auth = [self.mbe authorization];
    [auth authenticate:userName password:password completionBlock:completionBlock];
}

- (void) getRecipes:(void(^)(NSError * _Nullable error, NSHTTPURLResponse * _Nullable response, id  _Nullable responseData))completionBlock {
    OMCCustomCodeClient *customCodeClient = self.mbe.customCodeClient;
   [customCodeClient invokeCustomRequest:RECIPES_URI method:METHOD_GET data:NULL completion:completionBlock];
}

- (void) registerGetRecipes:(NSString *)name{
    
    //analytics delegate register
    OMCAnalytics* analytics = [self.mbe analytics];
    // Starting analytics session
    [analytics startSession];
    
    NSDictionary *properties = @{
                                 @"name": name,
                                 };
    
    [analytics logEvent:@"GetRecipesEvent" properties:properties];
    [analytics endSessio];
}

@end
