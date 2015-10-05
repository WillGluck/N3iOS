//
//  Laranjeira.m
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Laranjeira.h"

@implementation Laranjeira

- (id)init {
    self = [super init];
    if (self) {
        nomeCientifico = @"Citrus sinensis";
        nomePopular = @"Laranjeira";
        epocaFrutifera = "Inverno\0";
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}


- (BOOL) isLaranjeira: (Arvore*) arvore {
    return [arvore isMemberOfClass:[Laranjeira class]];
}


@end
