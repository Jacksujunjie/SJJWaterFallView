//
//  JWatterLayout.h
//  SJJWaterCollcetionViewLayout
//
//  Created by Jack on 16/3/8.
//  Copyright © 2016年 sujunjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JWatterLayoutDataSource <NSObject>

- (CGFloat)itemHeightWithIndexPath:(NSIndexPath *)indexPath itemWidth:(CGFloat)width;

@end

@interface JWatterLayout : UICollectionViewLayout


// 列数
@property (nonatomic, assign) NSInteger lineNumber;
// 行间距
@property (nonatomic, assign) CGFloat rowSpacing;
// 列间距
@property (nonatomic, assign) CGFloat lineSpacing;
// 内边距
@property (nonatomic, assign) UIEdgeInsets sectionInset;
// 代理
@property (nonatomic, assign) id<JWatterLayoutDataSource>dataSource;

@end

