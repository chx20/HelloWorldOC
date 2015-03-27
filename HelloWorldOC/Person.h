//
//  Person.h
//  HelloWorldOC
//
//  Created by 程红秀 on 2015-3-27.
//  Copyright (c) 2015年 chx20. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int age;
}
@property(nonatomic, assign, readwrite) int age;
-(void)printInfo;
@end



