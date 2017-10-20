//
//  OMCMobileBackend.m
//  RecipesFood
//
//  Created by Cássio Sousa on 18/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "MobileBackend.h"

@interface MobileBackend ()
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
    
    OMCMobileBackend *mbe = [self appRecBackEnd];
    OMCAuthorization *auth = [mbe authorization];
    [auth authenticate:userName password:password completionBlock:completionBlock];
}

@end
