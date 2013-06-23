//
//  ScrabbleSolverViewController.m
//  WordGameWinner
//
//  Created by Amy Bryce on 4/25/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "ScrabbleSolverViewController.h"

@interface ScrabbleSolverViewController ()

@end

@implementation ScrabbleSolverViewController

@synthesize scrollView;

- (id)initWithSolver:(WGWSolver *)newSolver
{
    self = [super initWithNibName:@"ScrabbleSolverViewController" bundle:[NSBundle mainBundle]];
    
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
    self.scrollView.contentSize = self.scrollView.frame.size;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
