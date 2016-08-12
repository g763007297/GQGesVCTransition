//
//  DetailViewController.m
//  GQGesVCTransitionDemo
//
//  Created by tusm on 16/5/1.
//  Copyright © 2016年 gaoqi. All rights reserved.
//

#import "DetailViewController.h"

#import "GQGesVCTransition.h"

@interface DetailViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UICollectionViewFlowLayout *layout  = [[UICollectionViewFlowLayout alloc] init];
//    
//    [layout setScrollDirection:UICollectionViewScrollDirectionVertical];
//    
//    UICollectionView *collection =[[UICollectionView alloc] initWithFrame:CGRectMake(0, 80, 300, 300) collectionViewLayout:layout];
//    
//    collection.delegate = self;
//    
//    collection.dataSource = self;
//    
//    [collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"DemoCollectionCell"];
//    
//    [self.view addSubview:collection];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(50, 100, 200, 300)];
    
    scrollView.backgroundColor = [UIColor yellowColor];
    
    scrollView.contentSize = CGSizeMake(600, 600);
    
    [scrollView addSubview:CreatView(CGRectMake(0, 0, 200, 300),[UIColor redColor])];
    
    [scrollView addSubview:CreatView(CGRectMake(200, 0, 200, 300),[UIColor greenColor])];
    
    [scrollView addSubview:CreatView(CGRectMake(400, 0, 200, 300),[UIColor blueColor])];
    
    scrollView.scrollEnabled = YES;
    
    [scrollView setPagingEnabled:YES];
    
    [self.view addSubview:scrollView];
    
    [self configureView];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1000;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *identifier = @"DemoCollectionCell";
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(30, 30);
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end