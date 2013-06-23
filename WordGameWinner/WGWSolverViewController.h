//
//  WGWSolverViewController.h
//  WordGameWinner
//
//  Created by Amy Bryce on 4/26/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WGWSolver.h"

@interface WGWSolverViewController : UIViewController

@property (nonatomic,strong) WGWSolver *solver;

- (id)initWithSolver:(WGWSolver *)solver;

@end
