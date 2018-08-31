//
//  main.m
//  console
//
//  Created by luwentao on 2018/8/8.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Animal.h"
#import "Dog.h"
@interface Dog(DogCatogory)
@property NSString * color;
@end
@implementation Dog(DogCatogory)
- (NSString *)color{
    return  objc_getAssociatedObject(self, @selector(color));
}
- (void)setColor:(NSString *)colorString{
    objc_setAssociatedObject(self, @selector(color), colorString, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end

@interface Dog(DogCatogory2)
@property NSString * color2;
@end
@implementation Dog(DogCatogory2)
- (NSString *)color2{
    return  objc_getAssociatedObject(self, @selector(color2));
}
- (void)setColor2:(NSString *)colorString{
    objc_setAssociatedObject(self, @selector(color2), colorString, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end

int main(int argc, const char * argv[]) {
    Dog * dog = [[Dog alloc] init];
    dog.color = @"red";
    dog.color2 = @"yellow";
    NSLog(@"%@,%@" ,dog.color,dog.color2);
    return 0;
}



