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
        
        NSLog(@"Inicializando...");
        
        //Criar Bosque
        NSLog(@"Criando bosque");
        Bosque* bosque = [[Bosque alloc] init];
        
        //Criar Arvores
        NSLog(@"Criando árvores");
        Laranjeira* laranjeira = [[Laranjeira alloc] init];
        Limoeiro* limoeiro = [[Limoeiro alloc] init];
        ArvoreFrutifera* arvoreFrutifera = [[ArvoreFrutifera alloc] init];
        Arvore* arvore = [[Arvore alloc] init];
        
        //Criar Frutass
        NSLog(@"Criando frutas");
        Fruta* laranja = [[Fruta alloc] init];
        Fruta* laranjaTemp = [[Fruta alloc] init];
        Fruta* limao = [[Fruta alloc] init];
        Fruta* limaoTemp = [[Fruta alloc] init];
        
        //CarregarFrutas
        NSLog(@"Carregando frutas: adicionando anotações e notas das frutas...");
        [laranja appendAnalise:@"Tava bonita"];
        [limao appendAnalise:@"Tava feia"];
        [limao appendAnalise:@", mas gostosa até."];
        
        
        NSNumber* notaLaranja = [[NSNumber alloc] initWithInt:10];
        NSNumber* notaLimao = [[NSNumber alloc] initWithInt: 1];
        
        laranja.nota = notaLaranja;
        limao.nota = notaLimao;
        
        //Carregar Arvores
        NSLog(@"Carregando árvores: adicionando frutas (add e insert), adicionando anotaçoes de dois dias diferentes, setando quantidade de frutas...");
        [laranjeira addFruta:laranja];
        [laranjeira insertFruta:laranjaTemp posicao:1];
        [limoeiro insertFruta:limao posicao:0];
        [limoeiro addFruta: limaoTemp];
        
        [laranjeira appendAnotacao:@"Árvore de laranja ta bonita" dia:1];
        [laranjeira appendAnotacao:@"Árvore de laranja ainda ta bonita" dia:2];
        [limoeiro appendAnotacao:@"Árvore de limão ta feia" dia:1];
        [limoeiro appendAnotacao:@"Árvore de limão ainda ta feia" dia:2];
        
        [laranjeira setQuantidadeFrutas:15];
        [limoeiro setQuantidadeFrutas:5];
        
        //Carregar Bosque
        NSLog(@"Carregando o bosque: adicionando árvores (add e insert)...");
        [bosque addArvore:laranjeira];
        [bosque insertArvore:limoeiro posicao:1];
        [bosque addArvore:arvore];
        [bosque insertArvore:arvoreFrutifera posicao:3];
        
        //Testes e chamadas de leitura.
        NSLog(@"-----------------------------Vamos testar-----------------------------");
        NSLog(@"--------------Primeiro as frutas--------------");
        
        NSLog(@"Nota da laranja foi de %@. A análise disse que: %@", laranja.nota, laranja.analise);
        NSLog(@"Nota do limão foi de %@. A análise disse que: %@", limao.nota, limao.analise);
        
        NSLog(@"--------------Agora as árvores--------------");
        
        NSLog(@"Nome científico da laranjeira é %@", laranjeira.getNomeCientifico);
        NSLog(@"Nome popular da laranjeira é %@", laranjeira.getNomePopular);
        NSLog(@"Nome científico do limoeiro é %@", [limoeiro getNomeCientifico]);
        NSLog(@"Nome popular do limoeiro é %@", [limoeiro getNomePopular]);
        
        NSLog(@"A laranjeira analisada tinha em média %d frutas. A época frutífera dela é %s", [laranjeira getQuantidadeFrutas], [laranjeira getEpocaFrutifera]);
        NSLog(@"O limoeiro analisado tinha em média %d frutas. A época frutífera dela é %s", [limoeiro getQuantidadeFrutas], [limoeiro getEpocaFrutifera]);
        
        NSLog(@"Comparando árvores. Laranjeira é do tipo arvoreFrutífera? %d", [arvoreFrutifera isArvoreFrutifera:laranjeira]);
        NSLog(@"Comparando árvores. Árvore é do tipo árvore frutífera? %d", [arvoreFrutifera isArvoreFrutifera:arvore]);
        NSLog(@"Comparando árvores. Laranjeira é membro da classe laranjeiras? %d", [laranjeira isLaranjeira:laranjeira]);
        NSLog(@"Comparando frutífera. Limoeiro é membro da classe laranjeiras? %d", [laranjeira isLaranjeira:limoeiro]);
        
        NSLog(@"Laranjeira tem %d frutas analisadas antes de remover alguma. Removendo da posição 1...", (unsigned int)[laranjeira getQuantidadeFrutasAnalisadas]);
        [laranjeira removeFrutaAtIndex:1];
        NSLog(@"Laranjeira tem %d frutas analisadas agora", (unsigned int)[laranjeira getQuantidadeFrutasAnalisadas]);
        NSLog(@"Limoeiro tem %d fruta analisada antes de remover alguma. Removendo da posição 1...", (unsigned int)[limoeiro getQuantidadeFrutasAnalisadas]);
        [limoeiro removeFrutaAtIndex:1];
        NSLog(@"Limoeiro tem %d fruta analisada agora", (unsigned int)[limoeiro getQuantidadeFrutasAnalisadas]);

        Fruta* frutaLaranjeiraRestante = [laranjeira frutaAtIndex:0];
        Fruta* frutaLimoeiroRestante = [limoeiro frutaAtIndex:0];
        NSLog(@"Fruta restante na laranjeira recuperada na posição 0. Tem nota %@", frutaLaranjeiraRestante.nota);
        NSLog(@"Fruta restante no limoeiro recuperada na posição 0. Tem nota %@", frutaLimoeiroRestante.nota);
        
        NSLog(@"Anotações da laranjeira: %@", [laranjeira getAnotacoes]);
        NSLog(@"Anotações do limoeiro: %@", [limoeiro getAnotacoes]);
        
        NSLog(@"--------------Agora finalmente o Bosque--------------");
        NSLog(@"Bosque tem %d árvores. Vamos remover uma da posição 1...", (unsigned int)bosque.arvores.count);
        [bosque removeArvoreAtIndex:1];
        NSLog(@"Sobraram %d árvores", (unsigned int)bosque.arvores.count);
        
        Arvore* arvoreRecuperadaBosque = [bosque arvoreAtIndex:0];
        NSLog(@"E a árvore que sobrou, recuperada pelo índice 0 é a %@", arvoreRecuperadaBosque.getNomePopular);
        
        NSLog(@"--------------Final--------------");
        NSLog(@"Todos os métodos foram executados e testados");

    }
    return 0;
}
