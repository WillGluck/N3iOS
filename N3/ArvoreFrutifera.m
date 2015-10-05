//
//  ArvoreFrutifera.m
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "ArvoreFrutifera.h"

@implementation ArvoreFrutifera

- (id)init {
    self = [super init];
    if (self) {
        epocaFrutifera = malloc(sizeof(char) * 10);
        quantidadeFrutas = malloc(sizeof(int) * 1);
        frutasAnalisadas = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}

-(int)getQuantidadeFrutas{
    return *quantidadeFrutas;
}

-(void) setQuantidadeFrutas: (int) qtdFrutas {
    *quantidadeFrutas = qtdFrutas;
}

-(char *)getEpocaFrutifera {
    return epocaFrutifera;
}

-(void) addFruta: (Fruta*) fruta {
    [frutasAnalisadas addObject:fruta];
}

-(void) insertFruta: (Fruta*) fruta posicao:(int) index {
    [frutasAnalisadas insertObject:fruta atIndex:index];
}

-(Fruta*) frutaAtIndex: (int) index {
    return [frutasAnalisadas objectAtIndex:index];
}

-(void) removeFrutaAtIndex: (int) index {
    [frutasAnalisadas removeObjectAtIndex:index];
}

-(BOOL) isArvoreFrutifera: (Arvore*) arvore {
    return [arvore isKindOfClass:[ArvoreFrutifera class]];
}

@end
