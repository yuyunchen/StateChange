//
//  ViewController.m
//  StateChange
//
//  Created by cyy9119 on 3/4/17.
//  Copyright © 2017 everflag. All rights reserved.
//

#import "ViewController.h"
#import "PlaySound.h"

@interface ViewController ()
@property (strong, nonatomic) PlaySound *ps;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.ps = [[PlaySound alloc] init];
}

- (IBAction)pressPlus:(id)sender {
    [self.ps pressPlus];
}

- (IBAction)pressMinus:(id)sender {
    [self.ps pressMinus];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
