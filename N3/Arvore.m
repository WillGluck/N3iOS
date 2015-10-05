//
//  Arvore.m
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Arvore.h"

@implementation Arvore

- (id)init {
    self = [super init];
    if (self) {
        nomeCientifico = nil;
        nomePopular = nil;
        anotacoes = [@"" mutableCopy];
    }
    return self;
}

+ (id)alloc {
    return [super alloc];
}

- (NSString *)getNomePopular{
    return nomePopular;
}
- (NSString*)getNomeCientifico{
    return nomeCientifico;
}

- (void) appendAnotacao:(NSString *)novaAnotacao dia: (int) dia {
    NSMutableString* stringParaFormatar = [@"\nAnálise do dia %d :" mutableCopy];
    [stringParaFormatar appendString:novaAnotacao];
    [anotacoes appendString:[NSString stringWithFormat:stringParaFormatar, dia]];
}

-(NSString*) getAnotacoes {
    return anotacoes;
}

@end
