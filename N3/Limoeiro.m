//
//  Limoeiro.m
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Limoeiro.h"

@implementation Limoeiro

- (id)init {
    self = [super init];
    if (self) {
        nomeCientifico = @"Citrus limon";
        nomePopular = @"Limoeiro";
        epocaFrutifera = "Primavera\0";
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}

- (BOOL) isLimoeiro: (Arvore*) arvore {
    return [arvore isMemberOfClass:[Limoeiro class]];
}

@end
