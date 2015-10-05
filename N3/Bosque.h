//
//  Bosque.h
//  teste
//
//  Created by William Glück on 02/10/15.
//  Copyright © 2015 Jáno Gilson Torres. All rights reserved.
//

#ifndef Bosque_h
#define Bosque_h

#include <Foundation/Foundation.h>
#include "Arvore.h"

/**
 @brief Classe que representa um bosque e suas árvores.
 */
@interface Bosque : NSObject 

/**
 @brief Lista de árvores.
 */
@property NSMutableArray<Arvore*>* arvores;

/**
 @brief Adiciona uma árvore na lista de árvores.
 @param arvore
 */
-(void) addArvore: (Arvore*) arvore;

/**
 @brief Adiciona uma árvore na lista de árvores na posição passada.
 @param arvore
 @param index
 */
-(void) insertArvore: (Arvore*) arvore posicao:(int) index;

/**
 @return Árvore que se encontra na posição passada.
 */
-(Arvore*) arvoreAtIndex: (int) index;

/**
 @brief Remove a Árvore que se encontra na posição passada.
 */
-(void) removeArvoreAtIndex: (int) index;

@end

#endif /* Bosque_h */
