//
//  WGWSolverViewController.m
//  WordGameWinner
//
//  Created by Amy Bryce on 4/26/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "WGWSolverViewController.h"

@interface WGWSolverViewController ()

@end

@implementation WGWSolverViewController

@synthesize solver;

- (id)initWithSolver:(WGWSolver *)newSolver
{
    self = [super initWithNibName:@"WGWSolverViewController" bundle:[NSBundle mainBundle]];
    
    if (self) {
        self.solver = newSolver;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.solver.name;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
