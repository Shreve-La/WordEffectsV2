//
//  main.m
//  WordEffectsV2
//
//  Created by swcl on 2017-06-26.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        while (gameOn) {
        
#pragma Input Handler
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        // limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        // print as a c string
        printf("Your string is %s\n", inputChars);
        
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        // print NSString object
        NSLog(@"Input was: %@", inputString);
        
        // print NSString memory address
            NSLog(@"Memory address was: %p", inputString);
            
        // Make the string LOUDER
            NSString *capitalize = inputString.uppercaseString;
            NSLog(@"All Caps: %@. Memory Address: %p", capitalize, capitalize);
        
        // Make the string lowercase
            NSString *lowercase = inputString.lowercaseString;
            NSLog(@"Lowercase: %@. MemoryAddress: %p", lowercase, lowercase);
            
            

        
        
        
            
            
            
            
            
        
        }
        
        
        
        
    }
    return 0;
}
