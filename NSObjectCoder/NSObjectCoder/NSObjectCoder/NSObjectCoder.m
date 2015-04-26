//
//  CommonCoder.m
//  CommonCoder
//
//  Created by EricYang on 26/04/2015.
//  Copyright (c) 2015 EricYang. All rights reserved.
//

#import "NSObjectCoder.h"

@implementation NSObjectCoder
+(void) encodePropertiesOfObject:(id)obj ToCoder:( NSCoder *)coder
{
    // copy the property list
    unsigned propertyCount;
    objc_property_t *properties = class_copyPropertyList([obj class], &propertyCount);
    
    for (int i = 0; i < propertyCount; i++) {
        objc_property_t property = properties[i];
        
        char *readonly = property_copyAttributeValue(property, "R");
        if (readonly)
        {
            free(readonly);
            continue;
        }
        
        NSString *propName = [NSString stringWithUTF8String:property_getName(property)];
        
        @try {
            [coder encodeObject:[obj valueForKey:propName] forKey:propName];
        }
        @catch (NSException *exception) {
            if (![exception.name isEqualToString:@"NSUnknownKeyException"])
            {
                @throw exception;
            }
            
            NSLog(@"Couldn't encode value for key %@.", propName);
        }
    }
    
    free(properties);
}


+(void) decodePropertiesOfObject:(id)obj FromCoder:(NSCoder *)coder
{
    // copy the property list
    unsigned propertyCount;
    objc_property_t *properties = class_copyPropertyList([obj class], &propertyCount);
    
    
    
    for (int i = 0; i < propertyCount; i++) {
        objc_property_t property = properties[i];
        
        char *readonly = property_copyAttributeValue(property, "R");
        if (readonly)
        {
            free(readonly);
            continue;
        }
        
        NSString *propName = [NSString stringWithUTF8String:property_getName(property)];
        
        @try
        {
            [obj setValue:[coder decodeObjectForKey:propName] forKey:propName];
        }
        @catch (NSException *exception) {
            if (![exception.name isEqualToString:@"NSUnknownKeyException"])
            {
                @throw exception;
            }
            
            NSLog(@"Couldn't decode value for key %@.", propName);
        }
    }
    
    free(properties);
}

@end
