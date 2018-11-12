# 浮点


## 游戏中常使用的浮点封装

### 使用方案

> 在你需要添加浮点的地方使用下面的代码即可
> 需要引用头文件#import "CLSpreadButton.h"

```

CLSpreadButton *spreadButton  = [[CLSpreadButton alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
spreadButton.itemsNum = 4;
[self.view addSubview:spreadButton];
self.spreadButton = spreadButton;
self.spreadButton.spreadButtonOpenViscousity = YES;
spreadButton.normalImage = [UIImage imageNamed:@"fload_1190"];
spreadButton.selImage = [UIImage imageNamed:@"fload_1190"];
spreadButton.images = @[@"float_user_bg",@"float_server_bg",@"float_gift_bg",@"float_ic_action_cancelball"];
[spreadButton spreadButtonDidClickItemAtIndex:^(NSUInteger index) {
    NSLog(@"%ld",index);
    if (index==3) {
        spreadButton.hidden = YES;
    }
}];

```






