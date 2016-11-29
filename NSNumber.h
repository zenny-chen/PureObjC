//
//  NSNumber.h
//  PureClassTest
//
//  Created by Zenny Chen on 2016/11/29.
//  Copyright © 2016年 GreenGames Studio. All rights reserved.
//

#pragma once

#import "ZCObject.h"

#include <stdint.h>
#include <complex.h>

@interface NSNumber : ZCObject
{
@private
    
    union
    {
        bool boolValue;
        uint8_t ubyteValue;
        int8_t byteValue;
        char charValue;
        uint16_t ushortValue;
        int16_t shortValue;
        uint32_t uintValue;
        int32_t intValue;
        unsigned uwordValue;
        int wordValue;
        uint64_t ulongValue;
        int64_t longValue;
        size_t sizeValue;
        uintptr_t uintptrValue;
        intptr_t intptrValue;
        
        float floatValue;
        double doubleValue;
        long double ldoubleValue;
        
        complex float fcomplexValue;
        complex double dcomplexValue;
        complex long double ldcomplexValue;
    };
}

@property (nonatomic, readonly) bool boolValue;
@property (nonatomic, readonly) uint8_t ubyteValue;
@property (nonatomic, readonly) int8_t byteValue;
@property (nonatomic, readonly) char charValue;
@property (nonatomic, readonly) uint16_t ushortValue;
@property (nonatomic, readonly) int16_t shortValue;
@property (nonatomic, readonly) uint32_t uintValue;
@property (nonatomic, readonly) int32_t intValue;
@property (nonatomic, readonly) unsigned uwordValue;
@property (nonatomic, readonly) int wordValue;
@property (nonatomic, readonly) uint64_t ulongValue;
@property (nonatomic, readonly) int64_t longValue;
@property (nonatomic, readonly) size_t sizeValue;
@property (nonatomic, readonly) uintptr_t uintptrValue;
@property (nonatomic, readonly) intptr_t intptrValue;
@property (nonatomic, readonly) float floatValue;
@property (nonatomic, readonly) double doubleValue;
@property (nonatomic, readonly) long double ldoubleValue;
@property (nonatomic, readonly) complex float fcomplexValue;
@property (nonatomic, readonly) complex double dcomplexValue;
@property (nonatomic, readonly) complex long double ldcomplexValue;

+ (id)numberWithBool:(bool)bl;
+ (id)numberWithUByte:(uint8_t)ub;
+ (id)numberWithByte:(int8_t)b;
+ (id)numberWithChar:(char)c;
+ (id)numberWithUShort:(uint16_t)us;
+ (id)numberWithShort:(int16_t)s;
+ (id)numberWithUInt:(uint32_t)ui;
+ (id)numberWithInt:(int32_t)i;
+ (id)numberWithUWord:(unsigned)uw;
+ (id)numberWithWord:(int)w;
+ (id)numberWithULong:(uint64_t)ul;
+ (id)numberWithLong:(int64_t)l;
+ (id)numberWithSize:(size_t)size;
+ (id)numberWithUIntPtr:(uintptr_t)uptr;
+ (id)numberWithIntPtr:(intptr_t)iptr;
+ (id)numberWithFloat:(float)f;
+ (id)numberWithDouble:(double)d;
+ (id)numberWithLDouble:(long double)ld;
+ (id)numberWithFComplex:(complex float)fc;
+ (id)numberWithDComplex:(complex double)dc;
+ (id)numberWithLDComplex:(complex long double)ldc;

- (id)initWithBoolValue:(bool)bl;
- (id)initWithUByteValue:(uint8_t)ub;
- (id)initWithByteValue:(int8_t)b;
- (id)initWithCharValue:(char)c;
- (id)initWithUShortValue:(uint16_t)us;
- (id)initWithShortValue:(int16_t)s;
- (id)initWithUIntValue:(uint32_t)ui;
- (id)initWithIntValue:(int32_t)i;
- (id)initWithUWordValue:(unsigned)uw;
- (id)initWithWordValue:(int)w;
- (id)initWithULongValue:(uint64_t)ul;
- (id)initWithLongValue:(int64_t)l;
- (id)initWithSizeValue:(size_t)size;
- (id)initWithUIntPtrValue:(uintptr_t)uptr;
- (id)initWithIntPtrValue:(intptr_t)iptr;
- (id)initWithFloatValue:(float)f;
- (id)initWithDoubleValue:(double)d;
- (id)initWithLDoubleValue:(long double)ld;
- (id)initWithFComplexValue:(complex float)fc;
- (id)initWithDComplexvalue:(complex double)dc;
- (id)initWithLDComplexValue:(complex long double)ldc;

@end
