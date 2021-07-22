
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LRTorchUtil : NSObject
+ (void)inverseLerp:(NSArray<NSNumber *> *)src tra:(NSArray<NSNumber *> *)tra tArr:(NSMutableArray<NSNumber *> *)tArr idxArr:(NSMutableArray<NSNumber *> *)idxArr;
@end

NS_ASSUME_NONNULL_END
