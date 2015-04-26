//
//  NSObjectExample.m
//  NSObjectCoder
//
//  Created by EricYang on 26/04/2015.
//  Copyright (c) 2015 EricYang. All rights reserved.
//

#import "NSObjectExample.h"

@implementation NSObjectExample


- (void)encodeWithCoder:(NSCoder *)aCoder{
    
    [NSObjectCoder encodePropertiesOfObject:self ToCoder:aCoder];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    if(self = [super init]){
        [NSObjectCoder decodePropertiesOfObject:self FromCoder:aDecoder];
    }
    return self;
}

@end
