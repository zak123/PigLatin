//
//  main.m
//  PigLatin
//
//  Created by Zachary Mallicoat on 3/13/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       char userInput[100];
       
        
        while (TRUE) {
        printf("Convert things to Pig Latin\n");
        fgets (userInput, 100, stdin);
            
        
        
        
            NSString *userInputString = [[NSString alloc] initWithUTF8String:userInput];
            
            NSString* output = [userInputString stringByPigLatinization];
            
            NSLog(@"%@", output);

//        userInputString = [userInputString substringToIndex:[userInputString length] - 1];
////        unichar buffer[userInputString.length+1];
//        NSCharacterSet *vowelsSet = [NSCharacterSet characterSetWithCharactersInString:@"AEIOUaeiou"];
//        NSRange range = [userInputString rangeOfCharacterFromSet:vowelsSet];
//            if (range.location == NSNotFound) {
//                NSLog(@"Unable to translate (No vowels)");
//            }
//            userInputString = [userInputString stringByAppendingString:@"ay"];
            
            
//            [userInputString getCharacters:buffer range:NSMakeRange(0, userInputString.length)];
            
//            for(int i = 0; i < userInputString.length; ++i) {
//                char current = buffer[i];
//                
//                NSString *stringCharacter = [NSString stringWithFormat:@"%c",current];
//                
//                NSCharacterSet *consonantSet = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyz"];
//                
////                NSCharacterSet *vowelsSet = [consonantSet invertedSet];
//                
//                NSRange range = [stringCharacter rangeOfCharacterFromSet:consonantSet options:0];
//                NSLog(@"%lu", (unsigned long)range.location);
//
//                if (range.length > 0) {
//                    
//                    
//                    
//                    // Add logic to move consonants to end of string here
            
                    
                    
                }
                
            }
//            NSString *ay = @"ay";
//            NSString *completedString = [NSString stringWithFormat:@"%@%@", userInputString, ay];
    
            
//        NSLog(@"Pig Latin: %@", completedString);
//        NSLog (@"Original: %@", userInputString);
//    
//        }
//        
//    }
    return 0;
}
