//
//  Fruta.m
//  teste
//
//  Created by William Glück on 02/10/15.
//  Copyright © 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Fruta.h"

@implementation Fruta

@synthesize nota = _nota;
@synthesize analise = _analise;

- (id)init {
    self = [super init];
    if (self) {
        _analise = [@"" mutableCopy];;
        _nota = nil;
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}

- (void) appendAnalise: (NSString*) analise{
    [_analise appendString:analise];
}

- (NSString*) getAnalise {
    return _analise;
}

@end