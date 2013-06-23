//
//  WGWMainViewController.h
//  WordGameWinner
//
//  Created by Amy Bryce on 3/15/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WGWMainViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}

- (UIView *)headerView;

@property (nonatomic,strong) NSArray *solverArray;

@end
