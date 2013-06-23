//
//  WGWSearchOption.h
//  WordGameWinner
//
//  Created by Amy Bryce on 4/26/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import <Foundation/Foundation.h>

enum searchOptionType {
    searchOptionTypeScrabbleSolver =1,
    searchOptionTypeOtherSolver =2,
    searchOptionTypeWords = 3
    };

@interface WGWSearchOption : NSObject


@property (nonatomic,strong) NSString *name;
@property (nonatomic) NSInteger type;
@property (nonatomic,strong) NSString *description;

- (id)initWithTitleName:(NSString *)name;


@end
