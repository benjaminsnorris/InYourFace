//
//  IFViewController.m
//  InYourFace
//
//  Created by Ben Norris on 9/25/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "IFViewController.h"

@interface IFViewController ()

@end

@implementation IFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    [self displayAlert];
}

- (void)displayAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Cool Title" message:@"Annoying alert" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Never Again!" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        // Dismiss the alert
    }]];
    
//    [alertController addAction:[UIAlertAction actionWithTitle:@"Nah, not now." style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        // Dismiss the alert
//    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Hit me!" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        [self displayAlert];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
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
