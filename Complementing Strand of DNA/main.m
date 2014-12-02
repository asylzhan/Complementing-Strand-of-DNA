//
//  main.m
//  Complementing Strand of DNA
//
//  Created by asyl13 on 30.11.14.
//  Copyright (c) 2014 Asylzhan Salimkhan. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *dna = @"GGTATGAAAAGTGCTCGGCGTAACCATGCTGAGAGAACTCTCGTGGAATCAGATCGGTTAAGGGGCATTGTGACCCAAACGTAGAGCAGGCATCGTCATTCCAGTTCATCGACTTCAAATGGAACAGGATTGGCACTAAAAAGACTTGGAAACATTGCGGACGGGAACTCTGTCAGCTGGGTACCCTGAGATCATAACAACGAACAAAGCTTTGTATGGAACCTGATTTTCGACTATTCTCGCATCTATGTTACTATCCGAGTGTGGGACTCCTGGGAATTCCTTGTCAAGACTGCATCGAAGTCGAGCCAACCAGCGCAGGTGACCCACAGCTCGATGTATCTACGATGTTGTTGGTTCGAGGACGCGTCCAACCCCGCGATGCCAGGTAATTTCAGTACGGATCAGATTCTAAGTTCCTCGTTCATGGCGTAGTAAATGGGATTCCGTACCTCACAGAGGAGCCGCGGAGCTAGAGATCTATTCCGCCTGCCCTGAATAGTATAGACCGAAACTGAGCAGATCGCTGGGTCCAAGATGACCATGGCGAGTAGCTGAAGTAGTCTGGCAAGCTCCAGGCAGTTCCGGTCCGATTCGACAGAGGGAATTTACTCCTTAGGGATGTTACGGACTCGAGTTGTAATCCCGGAATTTTGGTCTGCCGCCTACCGTCGGCCTCTGATTCGGTCAAGCCTCAACTGGGCGAGTCGCTTCTGCAGCATGTCCGGTATACTCCTCAAGGATTTCAGATATAAACTCGGAACGTCTTTCCATATGCGTAAAAGGACCCCGACGGATATAGTGTCTTCCTCATTTCCTTACTATGCATTGTCACCACTAAAGCTAATGCTTCCGTGGCGTAGGTACAGGTGCGTTGGAGTAGTCCACGCAATTGACGACTTTAAACGTCAGTCAACTTCGCA";
        NSString *dnaCharToString = [[NSString alloc] init];
        NSMutableString *replacedString = [[NSMutableString alloc] init];
        
        for (int i =0; i < [dna length]; i++) {
            char character = [dna characterAtIndex:i];
            if (character=='A') {
                character = 'T';
                dnaCharToString = [NSString stringWithFormat:@"%c", character];
                [replacedString insertString:dnaCharToString atIndex:i];
            }
            else if(character=='T'){
                character = 'A';
                dnaCharToString = [NSString stringWithFormat:@"%c", character];
                [replacedString insertString:dnaCharToString atIndex:i];
            }
            else if(character == 'C'){
                character='G';
                dnaCharToString = [NSString stringWithFormat:@"%c", character];
                [replacedString insertString:dnaCharToString atIndex:i];
            }
            else if (character == 'G'){
                character='C';
                dnaCharToString = [NSString stringWithFormat:@"%c", character];
                [replacedString insertString:dnaCharToString atIndex:i];
            }
        }
        
        
        NSMutableString *revString;
        NSUInteger len = [replacedString length];
        revString = [NSMutableString stringWithCapacity:len];
        while (len>0) {
            [revString appendString:[NSString stringWithFormat:@"%c", [replacedString characterAtIndex:--len]]];
        }
        
        NSLog(@"%@", revString);
    
    }
    return 0;
}




