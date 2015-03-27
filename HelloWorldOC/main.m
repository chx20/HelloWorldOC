/**
 xcode4.3引入ARC，release这块就有些变化，当你使用ARC，就必须将NSAutoreleasePool的地方换成 @autoreleasepool
 关于NSAutoreleasePool的解释官方的最清楚
    Important If you use Automatic Reference Counting (ARC), 
    you cannot use autorelease pools directly. Instead, 
    you use @autoreleasepool blocks instead. For example, in place of:
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init;
        // Code benefitting from a local autorelease pool.
        [pool release];
    you would write:
        @autoreleasepool {
            // Code benefitting from a local autorelease pool.
        }
    @autoreleasepool blocks are more efficient than using an instance of NSAutoreleasePool directly; 
    you can also use them even if you do not use ARC.
 **/

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Person* p = [[Person alloc] init]; //会自动初始化成员变量为0.
        p.age = 20;
        [p printInfo];
        
        @try {
            @throw p;
        }
        @catch (Person *exception) {
            NSLog(@"@catch");
        }
        @finally {
            NSLog(@"@finally");
        }
    }
    return 0;
}
