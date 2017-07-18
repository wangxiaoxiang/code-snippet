//
//  WXXNSString.h
//  snippet
//
//  Created by 乔月 on 2017/7/18.
//  Copyright © 2017年 wings. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WXXNSString : NSObject

@end

@interface NSCharacterSet (WXXNSString)

+ (NSCharacterSet *)wxx_letterCharacterSet;

@end

@interface NSString (WXXNSString)

- (NSArray *)wxx_split:(NSCharacterSet *)characterSet;

@end
