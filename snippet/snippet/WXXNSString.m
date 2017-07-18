//
//  WXXNSString.m
//  snippet
//
//  Created by 乔月 on 2017/7/18.
//  Copyright © 2017年 wings. All rights reserved.
//

#import "WXXNSString.h"

@implementation WXXNSString

@end


@implementation NSCharacterSet (WXXNSString)

+ (NSCharacterSet *)wxx_letterCharacterSet {
    return [NSCharacterSet characterSetWithCharactersInString:@"abcde"];
}

@end

@implementation NSString (WXXNSString)

- (NSArray *)wxx_split:(NSCharacterSet *)characterSet {
    if (!characterSet) {
        characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    }
    return [self componentsSeparatedByCharactersInSet:characterSet];
}

@end
