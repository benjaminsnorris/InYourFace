//
//  IFViewController.m
//  InYourFace
//
//  Created by Ben Norris on 9/25/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "IFViewController.h"

@interface IFViewController () <UIAlertViewDelegate>

@end

@implementation IFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self displayAlert];
}

- (void)displayAlert {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"This is a title" message:@"Rate my app!" delegate:self cancelButtonTitle:@"Never Again!" otherButtonTitles:@"Hit Me!", nil];
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [self displayAlert];
    }
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
