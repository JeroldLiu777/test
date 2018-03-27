//
//  ViewController.m
//  PlayForFun
//
//  Created by jeroldliu on 2018/3/18.
//  Copyright © 2018年 jeroldliu. All rights reserved.
//

#import "ViewController.h"
#include <stdio.h>
void bubbleSort(int a[], int n);
@interface ViewController ()

@end

@implementation ViewController
typedef NS_ENUM(NSInteger, Test)
{
    TestA = 0,
    TestB,
    TestC,
    TestD
};
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int number[8] = {95, 45, 15, 78, 84, 51, 24, 12};
    int i;
    bubbleSort(number, 8);
    for (i = 0; i < 8; i++)
    {
        printf("%d", number[i]);
    }
    printf("\n");
    Test hhaha = TestB;
}

void bubbleSort(int a[], int n){
    int i, j, temp;
    for (j = 0; j < n-1; j++) {
        BOOL noChange = YES;
        for (i = 0; i < n-1-j; i++) {
            if (a[i]>a[i+1]) {
                temp = a[i];
                a[i] = a[i+1];
                a[i+1] = temp;
                noChange = NO;
            }
        }
        if (noChange) {
            break;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
