//
//  NSString+Pinyin.m
//  M2QuickKitStringDragon
//
//  Created by thatsoul on 15/8/21.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "NSString+Pinyin.h"

@implementation NSString (Pinyin)
- (NSString *)pyn_pinyin {
    NSMutableString *theText = [NSMutableString stringWithString:self];
    CFStringTransform((__bridge CFMutableStringRef)theText, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)theText, NULL, kCFStringTransformStripDiacritics, NO);
    [theText replaceOccurrencesOfString:@" " withString:@"" options:0 range:NSMakeRange(0, [theText length])];
    
    return theText;
}
@end
