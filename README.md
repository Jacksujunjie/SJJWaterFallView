# SJJWaterFallView
利用collectionView，最简单的方式实现瀑布流功能

1，引入自定义的JWatterLayout.h，JJCollectionViewCell.h的头文件

2，创建一个JWatterLayout的对象self.waterLayout（也可以不使用懒加载）；
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

3，利用self.waterLayout创建一个collectionView的对象self.collectionView（也可以不使用懒加载）；
- (UICollectionView *)collectionView {
    if (_collectionView == nil) {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) collectionViewLayout:self.waterLayout];
        _collectionView.backgroundColor = [UIColor cyanColor];
        [_collectionView registerClass:[JJCollectionViewCell class] forCellWithReuseIdentifier:kIdentifierCell];
        _collectionView.dataSource = self;
    }
    return _collectionView;
}

4.实现你需要collectionView代理；

5.实现self.waterLayout的dataSource，返回返回每个cell的高度（高度按情况返回）
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

6.详情看demo

