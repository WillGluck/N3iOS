//
//  ArvoreFrutifera.h
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "Arvore.h"
#import "Fruta.h"

/**
 @brief Classe que representa uma árvore frutífera.
 */
@interface ArvoreFrutifera : Arvore {
    /**
     @brief String com o nome da estação frutífera.
     */
    char* epocaFrutifera;
    /**
     @brief Inteiro indicando a quantidade de frutas vistas na árvore (média).
     */
    int* quantidadeFrutas;
    /**
     @brief Lista de frutas que foram analisadas desta árvore.
     */
    NSMutableArray<Fruta*>* frutasAnalisadas;
}

/**
 @return Retorna quantidade média de frutas que a árvore possuia na hora da análise.
 */
-(int) getQuantidadeFrutas;
/**
 @brief Seta a quantidade média de frutas que a árvore possuía na hora da análise.
 @param qtdFrutas
 */
-(void) setQuantidadeFrutas: (int) qtdFrutas;
/**
 @return Retorna nome da estação frutífera desta árvore.
 */
-(char*) getEpocaFrutifera;
/**
 @brief Adiciona fruta na lista de frutas analisadas.
 @param fruta
 */
-(void) addFruta: (Fruta*) fruta;
/**
 @brief Adiciona fruta na lista de frutas analisadas na posição passada.
 @param fruta
 @param index
 */
-(void) insertFruta: (Fruta*) fruta posicao:(int) index;
/**
 @param index
 @return Fruta que se encontra na posição passada.
 */
-(Fruta*) frutaAtIndex: (int) index;
/**
 @brief Remove fruta que se encontra na posição passada.
 @param index
 */
-(void) removeFrutaAtIndex: (int) index;
/**
 @param arvore
 @return Flag indicando se a arvore passada é uma árvore frutífera ou subclasse dela.
 */
-(BOOL) isArvoreFrutifera: (Arvore*) arvore;

@end
