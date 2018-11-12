//
//  CLSpreadButton.h
//  CLFloatingPoint
//
//  Created by bx_zhen on 2018/11/12.
//  Copyright © 2018 yemaozi. All rights reserved.
//

#import "CLSpredComponentry.h"

NS_ASSUME_NONNULL_BEGIN

@protocol CLSpreadButtonDelegate;

@interface CLSpreadButton : CLSpredComponentry

@property (nonatomic, weak) id <CLSpreadButtonDelegate> delegate;
@property (nonatomic, strong) UIImage *normalImage;
@property (nonatomic, strong) UIImage *selImage;
@property (nonatomic, strong) NSArray *images;
@property (nonatomic, assign) NSUInteger itemsNum;

+ (instancetype)spreadButtonWithCapacity:(NSUInteger)itemsNum;
- (void)spreadButtonDidClickItemAtIndex:(void(^)(NSUInteger index))indexBlock;

@end


@protocol CCZSpreadButtonDelegate <NSObject>
@optional
- (void)spreadButton:(CLSpreadButton *)spreadButton didSelectedAtIndex:(NSUInteger)index withSelButton:(UIButton *)button;
@end

NS_ASSUME_NONNULL_END
