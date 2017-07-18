//
//  main.m
//  snippet
//
//  Created by 乔月 on 2017/7/18.
//  Copyright © 2017年 wings. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WXXNSString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *str = @"This is an example of a \nfunctional test case.";
        NSLog(@"%@", [str wxx_split:nil]);
        
        NSString *str2 = @"1aa2b3c4d5e6";
        NSLog(@"%@", [str2 wxx_split:[NSCharacterSet wxx_letterCharacterSet]]);
        

    }
    return 0;
}
