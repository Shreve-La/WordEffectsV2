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
#pragma String Operations
        // convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *lastCharacter = [inputString substringFromIndex:inputString.length-1];
            if([lastCharacter isEqualToString:@"?"]){NSLog(@"I don't know the answer to that question");}
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
        
            //Convert to Integer
            int intValue = inputString.intValue;
            if (intValue == 0){NSLog(@"Conversion failed. '%@' is not a number", inputString);}
            NSLog(@"Integer Value: %d", intValue);
            NSLog(@"Memory Address: %x", intValue);
            
            //Add eh? to make it seem Canadian
            NSString *canadianize = [inputString stringByAppendingString:@"eh?"];
            NSLog(@"Canadianized: %@", canadianize);
            NSLog(@"Memory Address: %p", canadianize);
            
            //de space it
            NSString *deSpaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@""];
            NSLog(@"De-Spaced: %@", deSpaceIt);
            
            //word count
                NSUInteger wordCount;
                NSCharacterSet *separators = [NSCharacterSet whitespaceAndNewlineCharacterSet];
                NSArray *words = [inputString componentsSeparatedByCharactersInSet:separators];
            NSMutableArray *actualWords = [[NSMutableArray alloc] init];
            for (NSString *word in words) {
                if (![word isEqualToString:@" "] && ![word isEqualToString:@""]){[actualWords addObject:word];}
            }
                wordCount = actualWords.count;
                NSLog(@"word Count %lu", wordCount);
        }
        
        
        
            
            
            
            
            
        
        }
        
        
        
        

}
