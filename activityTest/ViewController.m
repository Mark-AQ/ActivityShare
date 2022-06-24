//
//  ViewController.m
//  activityTest
//
//  Created by Mark on 2022/6/24.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)sharedClick:(UIButton *)sender {
    
    NSString *textToShare =@"测试Share标题";

//    NSURL *url = [NSURL URLWithString:@"https://doutuprd.obs.cn-south-1.myhuaweicloud.com/www.ziliaoh.com.pdf"];
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"docx"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"xlsx"];
//    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"001" ofType:@"xlsx"];
    NSURL *url = [NSURL fileURLWithPath:path];

    NSArray *activityItems =@[textToShare, url];

    UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:nil];
    [self presentViewController:activityVC animated:YES completion:nil];
    
}


@end
