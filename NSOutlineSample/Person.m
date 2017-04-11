//
//  Person.m
//  NSOutlineSample
//
//  Created by adeveloper on 10.04.17.
//  Copyright © 2017 adeveloper. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)init {
    self->_isRoot = false;
    
    return self;
}

-(id)initWithName:(NSString*) name age:(int)age{
    
    self->_name = name;
    self->_age = age;
    self->_isRoot = false;
    self->_children = [[NSMutableArray alloc] init];
    
    return self;
}

-(void)addChild:(Person *)p {
    [_children addObject:p];
}

@end
