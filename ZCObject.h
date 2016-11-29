//
//  ZCObject.h
//  PureClassTest
//
//  Created by Zenny Chen on 2016/11/29.
//  Copyright © 2016年 GreenGames Studio. All rights reserved.
//

#pragma once

#include <objc/runtime.h>
#include <stdbool.h>

/**
 * 定义一个纯粹的Objective-C类，不继承任何父类
 */
OBJC_ROOT_CLASS @interface ZCObject
{
@private
    
    /** 每个Objective-C类实例必须包含isa成员，并且必须将它作为第一个成员且不能随意改动 */
    Class isa;
    
    long retainCount;
}

/** 引用计数属性 */
@property (nonatomic) long retainCount;

+ (id)alloc;
+ (size_t)classSize;
+ (id)new;
+ (bool)respondsToClassSelector:(SEL)aSelector;
+ (bool)respondsToInstanceSelector:(SEL)aSelector;
+ (bool)conformsToProtocol:(Protocol*)protocol;

- (id)init;
- (void)dealloc;
- (Class)class;
- (size_t)instanceSize;
- (id)retain;
- (id)release;
- (void)performSelector:(SEL)aSelector;
- (void)performSelector:(SEL)aSelector withObject:(id)obj;

@end
