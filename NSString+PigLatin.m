//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Zachary Mallicoat on 3/13/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    NSArray *inputWords = [self componentsSeparatedByString:@" "];
    
    NSMutableArray *outputWords = [NSMutableArray new];
    
    NSCharacterSet *vowelSet = [NSCharacterSet characterSetWithCharactersInString:@"aeiouy"];
    
    for (NSString *word in inputWords) {
        
        NSRange range = [word rangeOfCharacterFromSet:vowelSet];
        
        if (range.location == 0) {
            NSString *outputWord = [NSString stringWithFormat:@"%@way", word];
            [outputWords addObject:outputWord];
        }
        else {
            NSUInteger startLength = range.location ;
            NSRange startRange = NSMakeRange(0, startLength);
            NSString *start = [word substringWithRange:startRange];
            
            NSUInteger endLength = word.length - range.location;
            NSRange endRange = NSMakeRange(range.location, endLength);
            NSString *end = [word substringWithRange:endRange];
            
            NSString *outputWord = [NSString stringWithFormat:@"%@%@ay", end, start];
            [outputWords addObject:outputWord];
        }
    }

    return [outputWords componentsJoinedByString:@" "];;
}

@end

