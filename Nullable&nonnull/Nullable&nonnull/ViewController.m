//
//  ViewController.m
//  Nullable&nonnull
//
//  Created by Zhuge_Mac on 16/12/6.
//  Copyright © 2016年 Magic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 只能修饰对象
// nonnull 不能为空
@property (nonnull,nonatomic,strong) NSString * name1;
@property (nonatomic,strong) NSString * _Nonnull name2;
@property (nonatomic,strong) NSString * __nonnull name3;
NS_ASSUME_NONNULL_BEGIN
@property (nonatomic,strong) NSString * name4;
NS_ASSUME_NONNULL_END

// nullable 可以为空
@property (nullable,nonatomic,strong) NSString * score1;
@property (nonatomic,strong) NSString * _Nullable score2;
@property (nonatomic,strong) NSString * __nullable score3;

- (nullable NSString *)test1;
- (NSString * _Nullable)test2;

// null_resettable set可为空/get不可为空 (可以重写set/get处理为空的情况)
@property (nonatomic,strong,null_resettable) NSString * school;

// _Null_unspecified 不确定是否为空
@end

@implementation ViewController
//-(void)setSchool:(NSString *)school
//{
//    if (school == nil) {
//        school = @"111";
//    }
//    _school = school;
//}
- (NSString *)school
{
    if (_school == nil) {
        _school = @"111";
    }return _school;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.school (不确定是get/set)
//    [self setName1:@""];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
