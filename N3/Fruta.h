//
//  Fruta.h
//  teste
//
//  Created by William Glück on 02/10/15.
//  Copyright © 2015 Jáno Gilson Torres. All rights reserved.
//

#ifndef Fruta_h
#define Fruta_h

#include <Foundation/Foundation.h>

/**
 @brief classe que representa uma fruta.
 */
@interface Fruta : NSObject

/**
 @brief Nota recebida pela fruta diante da análise da mesma.
 */
@property NSNumber* nota;
/**
 @brief Análises da fruta.
 */
@property NSMutableString* analise;

/**
 @brief Adiciona análise da fruta.
 @param analise
 */
- (void) appendAnalise: (NSString*) analise;
/**
 @return Análise da fruta.
 */
- (NSString*) getAnalise;
@end

#endif /* Fruta_h */
