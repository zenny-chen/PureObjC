//
//  ZCObject.m
//  PureClassTest
//
//  Created by Zenny Chen on 2016/11/29.
//  Copyright © 2016年 GreenGames Studio. All rights reserved.
//

#import "ZCObject.h"

#include <objc/message.h>


@implementation ZCObject

@synthesize retainCount;

+ (id)alloc
{
    id instance = class_createInstance(self, 0);
    
    return instance;
}

+ (id)new
{
    return [[self alloc] init];
}

+ (size_t)classSize
{
    return class_getInstanceSize(self);
}

+ (bool)respondsToClassSelector:(SEL)aSelector
{
    return class_respondsToSelector(object_getClass(self), aSelector);
}

+ (bool)respondsToInstanceSelector:(SEL)aSelector
{
    return class_respondsToSelector(self, aSelector);
}

+ (bool)conformsToProtocol:(Protocol*)protocol
{
    return class_conformsToProtocol(self, protocol);
}

- (id)init
{
    self.retainCount = 1;
    
    return self;
}

- (void)dealloc
{
    object_dispose(self);
}

- (Class)class
{
    return object_getClass(self);
}

- (size_t)instanceSize
{
    Class cls = [self class];
    return [cls classSize];
}

- (id)retain
{
    self.retainCount++;
    return self;
}

- (id)release
{
    if(--self.retainCount <= 0)
    {
        [self dealloc];
        return nil;
    }
    
    return self;
}

- (void)performSelector:(SEL)aSelector
{
    void (*pMsgSend)(id, SEL, ...) = (void(*)(id, SEL, ...))objc_msgSend;
    
    return pMsgSend(self, aSelector);
}

- (void)performSelector:(SEL)aSelector withObject:(id)obj
{
    void (*pMsgSend)(id, SEL, ...) = (void(*)(id, SEL, ...))objc_msgSend;
    
    return pMsgSend(self, aSelector, obj);
}

@end
