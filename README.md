# ZZJBlockButton
block封装按钮,简单易用

## 使用方法
```objc
/**
 *  快速创建带block回调的按钮,并添加到父控件
 *
 *  @param tapHandler 回调事件
 *  @param frame      位置信息
 *  @param superview  父控件
 */
+ (instancetype)blockedButtonWithTapHandler:(void(^)())tapHandler frame:(CGRect)frame addToSuperview:(UIView *)superview;

```
