//
//  Bosque.m
//  teste
//
//  Created by William Glück on 02/10/15.
//  Copyright © 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Bosque.h"

@implementation Bosque

@synthesize arvores = _arvores;

- (id)init {
    self = [super init];
    if (self) {
        _arvores = [[NSMutableArray alloc] init];
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}

-(void) addArvore: (Arvore*) arvore {
    [_arvores addObject:arvore];
}

-(void) insertArvore: (Arvore*) arvore posicao:(int) index {
    [_arvores insertObject:arvore atIndex:index];
}

-(Arvore*) arvoreAtIndex: (int) index {
    return [_arvores objectAtIndex:index];
}

-(void) removeArvoreAtIndex: (int) index {
    [_arvores removeObjectAtIndex:index];
}

@end