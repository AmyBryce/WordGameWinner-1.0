//
//  WGWSearchOption.m
//  WordGameWinner
//
//  Created by Amy Bryce on 4/26/13.
//  Copyright (c) 2013 Amy Bryce. All rights reserved.
//

#import "WGWSearchOption.h"

@implementation WGWSearchOption

@synthesize name;
@synthesize type;
@synthesize description;

-(id)initWithTitleName:(NSString *)newName
{
    if(self = [super init])
    {
        [self setName:newName];
    }
    return self;
}

@end
