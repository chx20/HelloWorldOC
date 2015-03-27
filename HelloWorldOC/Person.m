//
//  Person.m
//  HelloWorldOC
//
//  Created by 程红秀 on 2015-3-27.
//  Copyright (c) 2015年 chx20. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize age = _age;

-(void)printInfo {
    NSLog(@"%d", _age);
}

@end
