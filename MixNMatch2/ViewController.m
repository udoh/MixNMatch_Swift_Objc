//
//  ViewController.m
//  MixNMatch2
//
//  Created by Udo Hoppenworth on 8/30/14.
//  Copyright (c) 2014 Division One Software, LLC. All rights reserved.
//

#import "ViewController.h"
#import "MixNMatch2-Swift.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender
{
    MyViewController *myVC =[self.storyboard instantiateViewControllerWithIdentifier:@"MyViewController"];
    [self.navigationController pushViewController:myVC animated:YES];
}

@end
