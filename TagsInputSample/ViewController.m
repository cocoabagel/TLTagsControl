//
//  ViewController.m
//  TagsInputSample
//
//  Created by Антон Кузнецов on 11.02.15.
//  Copyright (c) 2015 TheLightPrjg. All rights reserved.
//

#import "ViewController.h"
#import "TLTagsControl.h"
@interface ViewController ()<TLTagsControlDelegate>

@property (nonatomic, strong) IBOutlet TLTagsControl *defaultEditingTagControl;

@end

@implementation ViewController {
    TLTagsControl *demoTagsControl;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *tags = [NSMutableArray arrayWithArray:@[@"A"]];
    // customize layout
    _defaultEditingTagControl.tags = [tags mutableCopy];
    _defaultEditingTagControl.tagsBackgroundColor = [UIColor colorWithHue:0.08 saturation:0.10 brightness:1.00 alpha:1.00];
    _defaultEditingTagControl.tagsTextColor = [UIColor colorWithHue:0.00 saturation:0.00 brightness:0.13 alpha:1.00];
    _defaultEditingTagControl.tagsDeleteButtonColor = [UIColor colorWithHue:0.09 saturation:0.76 brightness:0.98 alpha:1.00];
    _defaultEditingTagControl.tagPlaceholder = @"キーワード検索";
    _defaultEditingTagControl.font = [UIFont systemFontOfSize:20];
    [_defaultEditingTagControl reloadTagSubviews];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TLTagsControlDelegate
- (void)tagsControl:(TLTagsControl *)tagsControl tappedAtIndex:(NSInteger)index {
    NSLog(@"Tag \"%@\" was tapped", tagsControl.tags[index]);
}

@end
