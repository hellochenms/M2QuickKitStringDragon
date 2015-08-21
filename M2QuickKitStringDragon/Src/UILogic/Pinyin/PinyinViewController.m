//
//  PinyinViewController.m
//  M2QuickKitStringDragon
//
//  Created by thatsoul on 15/8/21.
//  Copyright (c) 2015年 chenms.m2. All rights reserved.
//

#import "PinyinViewController.h"
#import "NSString+Pinyin.h"

@interface PinyinViewController ()

@end

@implementation PinyinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *text = @"北京";
    DDLogInfo(@"文字转拼音: %@ -> %@", text, [text pyn_pinyin]);
}

@end
