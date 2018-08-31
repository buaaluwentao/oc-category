//
//  Temp.m
//  console
//
//  Created by luwentao on 2018/8/31.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "Temp.h"
#import "Dog.h"
#import <objc/runtime.h>
@implementation Temp

@end


@interface Dog(DogCatogory)
@property NSString * color;
@end
/*@implementation Dog(DogCatogory)
- (NSString *)color{
    return  objc_getAssociatedObject(self, @selector(color));
}
- (void)setColor:(NSString *)colorString{
    objc_setAssociatedObject(self, @selector(color), colorString, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end*/
