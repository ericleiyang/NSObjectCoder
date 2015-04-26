//
//  CommonCoder.h
//  CommonCoder
//
//  Created by EricYang on 26/04/2015.
//  Copyright (c) 2015 EricYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "objc/runtime.h"
@interface NSObjectCoder : NSObject

+(void) encodePropertiesOfObject:(id)obj ToCoder:(NSCoder *)coder;
+(void) decodePropertiesOfObject:(id)obj FromCoder:(NSCoder *)coder;

@end
