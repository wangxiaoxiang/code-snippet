//
//  main.m
//  RETest
//
//  Created by 乔月 on 2017/7/13.
//  Copyright © 2017年 乔月. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *str = @"asdf fjdk; afed, fjek,asdf, foo\tab\nbbc";
//        NSLog(@"str range:%@",NSStringFromRange(NSMakeRange(0, str.length)));
        
        NSRegularExpression *re = [NSRegularExpression regularExpressionWithPattern:@"[;,\\s]\\s*" options:0 error:nil];
        
        __block NSUInteger loc = 0;
        
        [re enumerateMatchesInString:str
                             options:0
                               range:NSMakeRange(0, str.length)
                          usingBlock:^(NSTextCheckingResult * _Nullable result, NSMatchingFlags flags, BOOL * _Nonnull stop) {
//                              NSLog(@"loc:%ld, %ld",loc,result.range.location - loc);
//                              NSLog(@"range:%@",NSStringFromRange(result.range));
                              NSLog(@"%@",[str substringWithRange:NSMakeRange(loc, result.range.location - loc)]);
                              loc = result.range.location + result.range.length;
        }];
        
        if (loc < str.length) {
//            NSLog(@"last: %s",[str substringWithRange:NSMakeRange(loc, str.length)]);
//            NSLog(@"%ld %ld", loc, str.length - loc);
            NSRange range = NSMakeRange(loc, str.length - loc);
            NSLog(@"%@",[str substringWithRange:range]);
        }
        
        
    }
    return 0;
}

