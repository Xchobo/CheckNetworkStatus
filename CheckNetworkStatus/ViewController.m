//
//  ViewController.m
//  CheckNetworkStatus
//
//  Created by Xchobo on 2014/3/31.
//  Copyright (c) 2014年 Xchobo. All rights reserved.
//

#import "ViewController.h"
#import "CheckInternet.h"

@interface ViewController ()

@property (strong, nonatomic) CheckInternet *checkinternet;
@property (strong, nonatomic) IBOutlet UILabel *statusField;

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _checkinternet = [[CheckInternet alloc] init];
    
    // 0:無網路、1:行動網路、2:Wifi網路
    int value = [_checkinternet networkCheck];
    NSLog(@"網路狀態");
    
    switch (value) {
        case 0:
            NSLog(@"無網路");
            [_statusField setText:@"無網路"];
            break;
        case 1:
            NSLog(@"行動網路");
            [_statusField setText:@"行動網路"];
            break;
        case 2:
            NSLog(@"Wifi網路");
            [_statusField setText:@"Wifi網路"];
            break;
        default:
            break;
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
