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
#import "ListRecipesTableViewController.h";


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
    
    
    __weak typeof(self) selfWeak = self;
    OMCAuthorizationAuthCompletionBlock loginBlock = ^(NSError *error){
        if (error == nil) {
            NSLog(@"Autenticado.");
            [selfWeak.navigationController pushViewController:ListRecipesTableViewController.new animated:YES];
        }
        else{
            NSLog(@"Falha autenticação:%@",error.description);
        }
    };
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [appDelegate.myMobileBackend authenticate:@"" password:@"" completionBlock:loginBlock];
    
}



#pragma mark - Navigation
/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"listRecipes"])
    {
        // Get reference to the destination view controller
        
        // Pass any objects to the view controller here, like...
        
    }
}
*/

@end
