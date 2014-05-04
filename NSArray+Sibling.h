//
//  NSArray+Sibling.h
//  iOS-Categories
//
//  Created by Ludovic Riviere on 11/04/2014.
//  Copyright (c) 2014 Ludovic Riviere. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Sibling)

/**
 *  Retourne le N+1 de l'objet passé en paramètre dans le tableau ciblé.
 *  Si l'objet n'est pas trouvé ou si l'objet en paramètre est le dernier,
 *  cette fonction retourne nil.
 *
 *  @param object Objet de référence
 *
 *  @return retourne l'objet voisin suivant dans le tableau ciblé.
 */
- (id)nextSiblingOfObject:(id)object;

/**
 *  Retourne le N-1 de l'objet passé en paramètre dans le tableau ciblé.
 *  Si l'objet n'est pas trouvé ou si l'objet en paramètre est le premier,
 *  cette fonction retourne nil.
 *
 *  @param object Objet de référence
 *
 *  @return retourne l'objet voisin précédent dans le tableau ciblé.
 */
- (id)previousSiblingsOfObject:(id)object;

@end
