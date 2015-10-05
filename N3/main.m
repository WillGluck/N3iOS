//
//  main.m
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Limoeiro.h"
#import "Laranjeira.h"
#import "Bosque.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Criar Bosque
        Bosque* bosque = [[Bosque alloc] init];
        
        //Criar Arvores
        Laranjeira* laranjeira = [[Laranjeira alloc] init];
        Limoeiro* limoeiro = [[Limoeiro alloc] init];
        ArvoreFrutifera* arvoreFrutifera = [[ArvoreFrutifera alloc] init];
        Arvore* arvore = [[Arvore alloc] init];
        
        //Criar Frutass
        Fruta* laranja = [[Fruta alloc] init];
        Fruta* laranjaTemp = [[Fruta alloc] init];
        Fruta* limao = [[Fruta alloc] init];
        Fruta* limaoTemp = [[Fruta alloc] init];
        
        //CarregarFrutas
        
        [laranja appendAnalise:@"Tava bonita"];

        [limao appendAnalise:@"Tava feia"];
        
        
        NSNumber* notaLaranja = [[NSNumber alloc] initWithInt:10];
        NSNumber* notaLimao = [[NSNumber alloc] initWithInt: 1];
        
        laranja.nota = notaLaranja;
        limao.nota = notaLimao;
        
        //Carregar Arvores
        [laranjeira addFruta:laranja];
        [laranjeira addFruta:laranjaTemp];
        [limoeiro addFruta: limao];
        [limoeiro addFruta: limaoTemp];
        
        [laranjeira appendAnotacao:@"Árvore de laranja ta bonita" dia:1];
        [laranjeira appendAnotacao:@"Árvore de laranja ainda ta bonita" dia:2];
        [limoeiro appendAnotacao:@"Árvore de limão ta feia" dia:1];
        [limoeiro appendAnotacao:@"Árvore de limão ainda ta feia" dia:2];
        
        [laranjeira setQuantidadeFrutas:10];
        [laranjeira setQuantidadeFrutas:15];
        [limoeiro setQuantidadeFrutas:15];
        [limoeiro setQuantidadeFrutas:10];
        
        //Carregar Bosque
        [bosque addArvore:laranjeira];
        [bosque addArvore:limoeiro];
        [bosque addArvore:arvore];
        [bosque addArvore:arvoreFrutifera];
        
        //Testes e chamadas de leitura.
        
        NSLog(@"%@", laranjeira.getNomeCientifico);
        NSLog(@"%@", laranjeira.getNomePopular);
        NSLog(@"%@", [limoeiro getNomeCientifico]);
        NSLog(@"%@", [limoeiro getNomePopular]);
        
        NSLog(@"%d", [arvoreFrutifera isArvoreFrutifera:laranjeira]);
        NSLog(@"%d", [arvoreFrutifera isArvoreFrutifera:arvore]);

    }
    return 0;
}
