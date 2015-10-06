//
//  NSNumber+FISMath.m
//  CategoryMath
//
//  Created by Guang on 10/6/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "NSNumber+FISMath.h"

@implementation NSNumber (FISMath)

/*
 NOTE: when I search floatValue to NSNumber I got the exact answer, but CGFloat to NSNumber I did not get much result.
 */
 

-(NSNumber *)numberByAddingNumber: (NSNumber*)number{
    
    NSNumber * sum = @([self number:number] + [self number:self]);
    //another way to conver is the following
    //NSNumber * sum = [ NSNumber numberWithFloat: ([self number:number] + [self number:self])];

    return sum;
}

-(NSNumber *)numberBySubtractingNumber: (NSNumber*)number{
    
    NSNumber * sub = @([self number:self] - [self number:number]);
    return sub;
}

-(NSNumber *)numberByMultiplyingByNumber:(NSNumber *)number{
    
    NSNumber * mult = @([self number:self] * [self number:number]);

    return mult;
}

-(NSNumber *)numberByDividingByNumber:(NSNumber *)number{

    NSNumber * divide = @([self number:self] / [self number:number]);

    return divide;
}

-(CGFloat)number:(NSNumber *)number{
 
    return [number floatValue];
}

@end
