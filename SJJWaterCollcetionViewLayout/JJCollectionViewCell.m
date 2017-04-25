




//
//  JJCollectionViewCell.m
//  SJJWaterCollcetionViewLayout
//
//  Created by Jack on 16/3/8.
//  Copyright © 2016年 sujunjie. All rights reserved.
//

#import "JJCollectionViewCell.h"

@implementation JJCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor colorWithRed:arc4random()%255/255.0 green:arc4random()%255/255.0 blue:arc4random()%255/255.0 alpha:1];
    }
    return self;
}

@end
