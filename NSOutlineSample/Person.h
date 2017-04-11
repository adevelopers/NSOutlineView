//
//  Person.h
//  NSOutlineSample
//
//  Created by adeveloper on 10.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic)  NSString* name;
@property (assign, nonatomic)  int age;
@property (readonly, copy) NSMutableArray *children;
@property (assign, atomic)   bool isRoot;

- (id)init;
- (id)initWithName:(NSString*) name age:(int)age;
- (void)addChild:(Person*)p;
@end
