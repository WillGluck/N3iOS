//
//  Arvore.h
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 @brief Classe que representa uma árvore.
 */
@interface Arvore : NSObject {
    
    /**
     @brief Nome científico da árvore.
     */
    NSString* nomeCientifico;
    /**
     @brief Nome popular da árvore.
     */
    NSString* nomePopular;
    /**
     @brief Anotações  feitas  sobre a árvore, organizadas por dia.
     */
    NSMutableString* anotacoes;
}
    /**
     @return Retorna o nome popular da árvore.
     */
    -(NSString*)getNomePopular;
    /**
     @return Retorna o nome científico da árvore.
     */
    -(NSString*)getNomeCientifico;
    /**
     @brief Adiciona anotação no dia passado.
     @param novaAnotacao
     @param dia
     */
    -(void)appendAnotacao: (NSString*) novaAnotacao dia:(int) dia;
@end
