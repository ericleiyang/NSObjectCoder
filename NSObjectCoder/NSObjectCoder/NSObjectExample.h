//
//  NSObjectExample.h
//  NSObjectCoder
//
//  Created by EricYang on 26/04/2015.
//  Copyright (c) 2015 EricYang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObjectCoder.h"

@interface NSObjectExample : NSObject

@property (nonatomic, retain) NSDate * createdTime;
@property (nonatomic, retain) NSDate * editedTime;
@property (nonatomic, retain) NSNumber * isRead;
@property (nonatomic, retain) NSData * metadata;
@property (nonatomic, retain) NSString * notificationID;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSString * user;
@property (nonatomic, retain) NSString * text;

@end
