
#import "LRTorchUtil.h"

@implementation LRTorchUtil

+ (void)inverseLerp:(NSArray<NSNumber *> *)src tra:(NSArray<NSNumber *> *)tra tArr:(NSMutableArray<NSNumber *> *)tArr idxArr:(NSMutableArray<NSNumber *> *)idxArr {
	NSInteger j = 0;
	for (NSInteger i = 0; i < tra.count ; i++) {
		for (; j < src.count; j++) {
			if (tra[i].doubleValue < src[j].doubleValue) {
				if (j <= 0) {
					[tArr replaceObjectAtIndex:i withObject:@(0.0)];
					[idxArr replaceObjectAtIndex:i withObject:@(0)];
				} else {
					[tArr replaceObjectAtIndex:i withObject:@((tra[i].doubleValue - src[j - 1].doubleValue) / (src[j].doubleValue - src[j - 1].doubleValue))];
					[idxArr replaceObjectAtIndex:i withObject:@(j - 1)];
				}
				break;
			}
		}
		if (j == src.count) {
			[tArr replaceObjectAtIndex:i withObject:@(0.0)];
			[idxArr replaceObjectAtIndex:i withObject:@(j - 1)];
		}
	}
}

@end
