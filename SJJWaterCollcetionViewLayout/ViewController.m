//
//  ViewController.m
//  SJJWaterCollcetionViewLayout
//
//  Created by Jack on 16/3/8.
//  Copyright © 2016年 sujunjie. All rights reserved.
//

#import "ViewController.h"

static NSString * const kIdentifierCell = @"JJCollectionViewCell";

@interface ViewController ()<JWatterLayoutDataSource,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) JWatterLayout   *waterLayout;
@property (nonatomic, strong) NSMutableArray   *dataArray;


@property (nonatomic, assign) NSInteger         count;
@end

@implementation ViewController

#pragma mark - 生命周期
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view addSubview:self.collectionView];
    
    self.count =45;
    
    [self.collectionView reloadData];
    
}


#pragma mark - UICollectionViewDataSource Method
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return  self.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    JJCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kIdentifierCell forIndexPath:indexPath];
    return cell;
}

#pragma mark - JWatterLayoutDataSource

- (CGFloat)itemHeightWithIndexPath:(NSIndexPath *)indexPath itemWidth:(CGFloat)width
{
    //返回每个cell的高度
    if(indexPath.row%3 == 0)
    {
        return 200;
    }
    else if(indexPath.row%3 == 1)
    {
        return 150;
    }else
    {
        return 230;
    }
}


#pragma mark-懒加载

- (UICollectionView *)collectionView {
    if (_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) collectionViewLayout:self.waterLayout];
        _collectionView.backgroundColor = [UIColor cyanColor];
        [_collectionView registerClass:[JJCollectionViewCell class] forCellWithReuseIdentifier:kIdentifierCell];
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

- (JWatterLayout *)waterLayout {
    if (_waterLayout == nil) {
        
        _waterLayout = [[JWatterLayout alloc] init];
        _waterLayout.dataSource    = self;
        _waterLayout.sectionInset = UIEdgeInsetsMake(20, 10, 10, 10);
        _waterLayout.lineNumber = 2;
        _waterLayout.rowSpacing = 10.0f;
        _waterLayout.lineSpacing = 10.0f;
    }
    return _waterLayout;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
