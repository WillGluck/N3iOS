//
//  Laranjeira.h
//  teste
//
//  Created by Jáno Gilson Torres on 9/21/15.
//  Copyright (c) 2015 Jáno Gilson Torres. All rights reserved.
//

#import "ArvoreFrutifera.h"

/**
 @brief Classe que representa uma laranjeira.
 */
@interface Laranjeira : ArvoreFrutifera

/**
 @param arvore
 @return Flag indicando se a arvore passada é uma laranjeira.
 */
- (BOOL) isLaranjeira: (Arvore*) arvore;

@end
