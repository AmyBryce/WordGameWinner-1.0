//
//  WGWWordViewController.h
//  WordGameWinner
//
//  Created by Amy Bryce on 4/27/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WGWWords.h"

@interface WGWWordViewController : UIViewController

@property (nonatomic,strong) WGWWords *solver;

- (id)initWithSolver:(WGWWords *)solver;


@end
