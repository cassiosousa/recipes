//
//  LoginViewController.m
//  RecipesFood
//
//  Created by Cássio Sousa on 13/10/2017.
//  Copyright © 2017 Cassio Sousa. All rights reserved.
//

#import "LoginViewController.h"
#import "MobileBackend.h"
#import "OMCMobileBackendManager.h"
#import "OMCAuthorization.h"
#import "AppDelegate.h"


@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation LoginViewController

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:NO animated:animated];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)loginAction:(id)sender {
     
    MobileBackend *mbe = [[MobileBackend alloc] init];
    OMCAuthorizationAuthCompletionBlock loginBlock = ^(NSError *error){
        if (error == nil) {
            NSLog(@"Autenticado.");
        }
        else{
            NSLog(@"Falha autenticação:%@",error.description);
        }
    };
   
    [mbe authenticate:@"appinterfaceadmindevuser" password:@"Pomarola123" completionBlock:loginBlock];
    
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
