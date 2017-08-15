//
//  ViewController.m
//  CopyProperty
//
//  Created by 晓琳 on 17/8/14.
//  Copyright © 2017年 xiaolin.han. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *string = @"helloWorld";
    NSString *stringCopy = [string copy];

    NSLog(@"string memory address: %p stringCopy memory address: %p note: 浅拷贝", string, stringCopy);
    NSLog(@"string: %x stringCopy: %x",&string, &stringCopy);
    
    
    NSString *stringMutableCopy = [string mutableCopy];
    NSLog(@"string memory address: %p stringMutableCopy memory address: %p note: 深拷贝", string, stringMutableCopy);
    NSLog(@"string: %x stringMutableCopy: %x",&string, &stringMutableCopy);

    
    
    
    
    
    NSMutableString *string1 = [[NSMutableString alloc] initWithString:@"可变字符串"];
    NSMutableString *string1Mutable = [string1 copy];
    NSLog(@"string1 memory address: %p string1Mutable memory address: %p note: 深拷贝", string1, string1Mutable);
    NSLog(@"string: %x stringMutableCopy: %x",&string1, &string1Mutable);

    NSMutableString *string2Mutable = [string1 mutableCopy];
    NSLog(@"string1 memory address: %p string2Mutable memory address: %p note: 深拷贝", string1, string2Mutable);
    NSLog(@"string: %x stringMutableCopy: %x",&string1, &string2Mutable);



    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
