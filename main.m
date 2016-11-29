//
//  main.m
//  PureClassTest
//
//  Created by Zenny Chen on 2016/11/28.
//  Copyright © 2016年 GreenGames Studio. All rights reserved.
//

#include <stdio.h>
#include <math.h>

#import "ZCObject.h"
#import "NSNumber.h"

@protocol MyProt

@required

@property (nonatomic) double doubleValue;

@optional

- (double)calculate:(double)d;

@end


@interface DummyObject : ZCObject

- (void)greet;

@end

@implementation DummyObject

- (void)greet
{
    puts("Hello, this is DummyObject!");
}

- (void)dealloc
{
    puts("DummyObject deallocated!");
    [super dealloc];
}

@end


@interface Child : ZCObject <MyProt>
{
@public
    
    int value;
    
@private
    
    double doubleValue;
    DummyObject *dummyObj;
}

/** 只要Objective-C类中含有retain/release方法，那么retain属性依然能有效工作 */
@property (nonatomic, retain) DummyObject *dummyObj;

- (void)hello;

@end

@implementation Child

@synthesize doubleValue, dummyObj;

- (id)init
{
    self = [super init];
    
    value = 10;
    
    return self;
}

- (void)hello
{
    printf("Hi, Child's value is: %d\n", value);
}

- (double)calculate:(double)d
{
    return doubleValue + d;
}

- (void)dealloc
{
    self.dummyObj = nil;
    
    puts("Child has been deallocated!");
    
    [super dealloc];
}

@end


/** 这里是用了Category语法特性 */
@interface Child(MethodExpansion)

- (void)method;
- (void)computeComplex:(NSNumber*)complexFloatNumber;

@end

@implementation Child(MethodExpansion)

- (void)method
{
    puts("This is a new method!");
}

- (void)computeComplex:(NSNumber*)complexFloatNumber
{
    complex float comp = complexFloatNumber.fcomplexValue;
    
    float modSquare = __real__(comp) * __real__(comp) + __imag__(comp) * __imag__(comp);
    printf("The modulo is: %f\n", sqrtf(modSquare));
}

@end


int main(int argc, const char * argv[])
{
    // insert code here...
    
    ZCObject *obj = [ZCObject new];
    
    obj = [obj retain];
    obj = [obj release];
    
    printf("obj size is: %zu bytes\n", obj.instanceSize);
    
    obj = [obj release];
    
    if(obj == nil)
        puts("obj has been released!");
    
    id num = @100;
    
    printf("The number is: %d\n", [num intValue]);
    
    [num release];
    
    Child *child = [Child new];
    child->value += 20;
    
    [child performSelector:@selector(hello)];
    
    DummyObject *dumObj = [DummyObject new];
    child.dummyObj = dumObj;
    [dumObj release];
    
    [child.dummyObj greet];
    
    // 调用使用Category新增的方法
    [child method];
    
    if([Child respondsToClassSelector:@selector(alloc)])
        puts("Child responds to alloc");
    if([[child class] respondsToInstanceSelector:@selector(method)])
        puts("child responds to method");
    
    NSNumber *comp = [NSNumber numberWithFComplex:3.0f + 4.0fi];
    [child performSelector:@selector(computeComplex:) withObject:comp];
    [comp release];
    
    if([[child class] conformsToProtocol:@protocol(MyProt)])
    {
        printf("Current doubleValue is: %f\n", child.doubleValue);
        child.doubleValue = 30.5;
        if([[child class] respondsToInstanceSelector:@selector(calculate:)])
            printf("The double value is: %f\n", [child calculate:0.5]);
    }
    
    [child release];
    
    return 0;
}
