
package br.pucpr.prog4.lojaoldschool.models;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class ProdutoManager implements IProdutoManager
{
    @Override
    public List<Produto> obterTodos() {
        
        List<Produto> produtos;
        produtos = new ArrayList<>();
        Produto p1 = new Produto();
        p1.setId(1);
        p1.setNome("Panela");
        p1.setPreço(new BigDecimal(500.0f));
        
        Produto p2 = new Produto();
        p2.setId(2);
        p2.setNome("Forma");
        p2.setPreço(new BigDecimal(70.0f));
        
        Produto p3 = new Produto();
        p3.setId(3);
        p3.setNome("Bracelete");
        p3.setPreço(new BigDecimal(150.0f));        
                
        produtos.add(p1);
        produtos.add(p2);
        produtos.add(p3);
        
        
        return produtos;
    }
   
}
