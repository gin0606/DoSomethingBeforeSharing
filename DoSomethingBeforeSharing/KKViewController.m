//
//  KKViewController.m
//  DoSomethingBeforeSharing
//
//  Created by gin0606 on 2013/08/31.
//  Copyright (c) 2013年 gin0606. All rights reserved.
//

#import "KKViewController.h"
#import "KKActivityItemProvider.h"

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapShareButton:(id)sender {
    KKActivityItemProvider *itemProvider = [[KKActivityItemProvider alloc] initWithPlaceholderItem:@"some item"];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[itemProvider]
                                                                                         applicationActivities:nil];
    [self presentViewController:activityViewController animated:YES completion:nil];
}

@end
