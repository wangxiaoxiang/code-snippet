//
//  WXXRange.h
//  snippet
//
//  Created by 乔月 on 2017/7/18.
//  Copyright © 2017年 wings. All rights reserved.
//

#import <Foundation/Foundation.h>

struct WXXRange {
    NSInteger start;
    NSInteger end;
    NSInteger step;
};

typedef struct WXXRange WXXRange;

@interface NSString (WXXRange)

- (NSString *)ltm_substringWithRange:(WXXRange)range;

@end
