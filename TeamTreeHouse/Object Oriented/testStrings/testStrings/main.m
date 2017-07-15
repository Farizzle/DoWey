//
//  main.m
//  testStrings
//
//  Created by Faris Zaman on 13/12/2016.
//  Copyright © 2016 Faris Zaman. All rights reserved.
//

//INTS
//Whole numbers, both positive and negative
//No * required as its a primitive

//FLOATS
//Numbers that may have decimal places, both positive and negative
//Have fewer decimal places to store in comparison to doubles
//No * required as its a primitive

//DOUBLES
//Gives 10 decimal values of precision for numbers
//No * required as its a primitive

//STRINGS
//Collection of text for literature based output
//Require a * before the name of a new variable as its an object

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    int currentAge;
    currentAge = 36;
    
    float currentWeight;
    currentWeight = 124.75;
    
    float currentHeight;
    currentHeight = 66.0;
    
    double currentWeightPerInch;
    currentWeightPerInch = currentWeight / currentHeight;
    
    NSLog(@"currentHeight is: %f", currentHeight);
    NSLog(@"currentWeight is: %f", currentWeight);
    NSLog(@"currentWeightPerInch is: %f", currentWeightPerInch);

    return 0;
}



