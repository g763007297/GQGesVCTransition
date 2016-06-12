//
//  DetailViewController.m
//  GQGesVCTransitionDemo
//
//  Created by tusm on 16/5/1.
//  Copyright © 2016年 gaoqi. All rights reserved.
//

#import "DetailViewController.h"

#import "GQGesVCTransition.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

UIView* CreatView (CGRect rect, UIColor *color){
    UIView *view;
    view = [[UIView alloc] initWithFrame:rect];
    view.backgroundColor = color;
    return view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(50, 100, 200, 100)];
    
    scrollView.contentSize = CGSizeMake(600, 100);
    
    [scrollView addSubview:CreatView(CGRectMake(0, 0, 200, 100),[UIColor redColor])];
    
    [scrollView addSubview:CreatView(CGRectMake(200, 0, 200, 100),[UIColor greenColor])];
    
    [scrollView addSubview:CreatView(CGRectMake(400, 0, 200, 100),[UIColor blueColor])];
    
    scrollView.scrollEnabled = YES;
    
    [self.view addSubview:scrollView];
    
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
