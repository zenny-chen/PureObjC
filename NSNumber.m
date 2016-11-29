//
//  NSNumber.m
//  PureClassTest
//
//  Created by Zenny Chen on 2016/11/29.
//  Copyright © 2016年 GreenGames Studio. All rights reserved.
//

#import "NSNumber.h"

@implementation NSNumber

@synthesize boolValue, ubyteValue, byteValue, charValue, ushortValue, shortValue;
@synthesize uintValue, intValue, uwordValue, wordValue, ulongValue, longValue;
@synthesize sizeValue, uintptrValue, intptrValue, floatValue, doubleValue, ldoubleValue;
@synthesize fcomplexValue, dcomplexValue, ldcomplexValue;

- (id)initWithBoolValue:(bool)bl
{
    self = [super init];
    
    boolValue = bl;
    
    return self;
}

- (id)initWithUByteValue:(uint8_t)ub
{
    self = [super init];
    
    ubyteValue = ub;
    
    return self;
}

- (id)initWithByteValue:(int8_t)b
{
    self = [super init];
    
    byteValue = b;
    
    return self;
}

- (id)initWithCharValue:(char)c
{
    self = [super init];
    
    charValue = c;
    
    return self;
}

- (id)initWithUShortValue:(uint16_t)us
{
    self = [super init];
    
    ushortValue = us;
    
    return self;
}

- (id)initWithShortValue:(int16_t)s
{
    self = [super init];
    
    shortValue = s;
    
    return self;
}

- (id)initWithUIntValue:(uint32_t)ui
{
    self = [super init];
    
    uintValue = ui;
    
    return self;
}

- (id)initWithIntValue:(int32_t)i
{
    self = [super init];
    
    intValue = i;
    
    return self;
}

- (id)initWithUWordValue:(unsigned)uw
{
    self = [super init];
    
    uwordValue = uw;
    
    return self;
}

- (id)initWithWordValue:(int)w
{
    self = [super init];
    
    wordValue = w;
    
    return self;
}

- (id)initWithULongValue:(uint64_t)ul
{
    self = [super init];
    
    ulongValue = ul;
    
    return self;
}

- (id)initWithLongValue:(int64_t)l
{
    self = [super init];
    
    longValue = l;
    
    return self;
}

- (id)initWithSizeValue:(size_t)size
{
    self = [super init];
    
    sizeValue = size;
    
    return self;
}

- (id)initWithUIntPtrValue:(uintptr_t)uptr
{
    self = [super init];
    
    uintptrValue = uptr;
    
    return self;
}

- (id)initWithIntPtrValue:(intptr_t)iptr
{
    self = [super init];
    
    intptrValue = iptr;
    
    return self;
}

- (id)initWithFloatValue:(float)f
{
    self = [super init];
    
    floatValue = f;
    
    return self;
}

- (id)initWithDoubleValue:(double)d
{
    self = [super init];
    
    doubleValue = d;
    
    return self;
}

- (id)initWithLDoubleValue:(long double)ld
{
    self = [super init];
    
    ldoubleValue = ld;
    
    return self;
}

- (id)initWithFComplexValue:(complex float)fc
{
    self = [super init];
    
    fcomplexValue = fc;
    
    return self;
}

- (id)initWithDComplexvalue:(complex double)dc
{
    self = [super init];
    
    dcomplexValue = dc;
    
    return self;
}

- (id)initWithLDComplexValue:(complex long double)ldc
{
    self = [super init];
    
    ldcomplexValue = ldc;
    
    return self;
}

+ (id)numberWithBool:(bool)bl
{
    return [[NSNumber alloc] initWithBoolValue:bl];
}

+ (id)numberWithUByte:(uint8_t)ub
{
    return [[NSNumber alloc] initWithUByteValue:ub];
}

+ (id)numberWithByte:(int8_t)b
{
    return [[NSNumber alloc] initWithByteValue:b];
}

+ (id)numberWithChar:(char)c
{
    return [[NSNumber alloc] initWithCharValue:c];
}

+ (id)numberWithUShort:(uint16_t)us
{
    return [[NSNumber alloc] initWithUShortValue:us];
}

+ (id)numberWithShort:(int16_t)s
{
    return [[NSNumber alloc] initWithShortValue:s];
}

+ (id)numberWithUInt:(uint32_t)ui
{
    return [[NSNumber alloc] initWithUIntValue:ui];
}

+ (id)numberWithInt:(int32_t)i
{
    return [[NSNumber alloc] initWithIntValue:i];
}

+ (id)numberWithUWord:(unsigned)uw
{
    return [[NSNumber alloc] initWithUWordValue:uw];
}

+ (id)numberWithWord:(int)w
{
    return [[NSNumber alloc] initWithWordValue:w];
}

+ (id)numberWithULong:(uint64_t)ul
{
    return [[NSNumber alloc] initWithULongValue:ul];
}

+ (id)numberWithLong:(int64_t)l
{
    return [[NSNumber alloc] initWithLongValue:l];
}

+ (id)numberWithSize:(size_t)size
{
    return [[NSNumber alloc] initWithSizeValue:size];
}

+ (id)numberWithUIntPtr:(uintptr_t)uptr
{
    return [[NSNumber alloc] initWithUIntPtrValue:uptr];
}

+ (id)numberWithIntPtr:(intptr_t)iptr
{
    return [[NSNumber alloc] initWithIntPtrValue:iptr];
}

+ (id)numberWithFloat:(float)f
{
    return [[NSNumber alloc] initWithFloatValue:f];
}

+ (id)numberWithDouble:(double)d
{
    return [[NSNumber alloc] initWithDoubleValue:d];
}

+ (id)numberWithLDouble:(long double)ld
{
    return [[NSNumber alloc] initWithLDoubleValue:ld];
}

+ (id)numberWithFComplex:(complex float)fc
{
    return [[NSNumber alloc] initWithFComplexValue:fc];
}

+ (id)numberWithDComplex:(complex double)dc
{
    return [[NSNumber alloc] initWithDComplexvalue:dc];
}

+ (id)numberWithLDComplex:(complex long double)ldc
{
    return [[NSNumber alloc] initWithLDComplexValue:ldc];
}

@end
