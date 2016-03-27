//
//  WXLabel.m
//  lianxi
//
//  Created by Apple on 16/1/14.
//  Copyright © 2016年 c. All rights reserved.
//

#import "WXLabel.h"
#import <CoreText/CoreText.h>

@implementation WXLabel

- (void)drawRect:(CGRect)rect {

    
    NSMutableAttributedString *attrstr = [[NSMutableAttributedString alloc] initWithString:self.text];
    NSDictionary *dic1 = @{
                           NSForegroundColorAttributeName : [UIColor greenColor],
                           NSFontAttributeName : [UIFont systemFontOfSize:20]
                           };
    
    NSDictionary *dic2 = @{
                           NSForegroundColorAttributeName : [UIColor redColor],
                           NSFontAttributeName : [UIFont systemFontOfSize:40]
                           };
    [attrstr addAttributes:dic1 range:NSMakeRange(0, 20)];
    [attrstr addAttributes:dic2 range:NSMakeRange(20, 50)];
    
    CTFramesetterRef frameSetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attrstr);

    CGMutablePathRef path = CGPathCreateMutable();
    CGRect bounds = self.bounds;
    CGPathAddRect(path, NULL, bounds);
    
    

}

@end
