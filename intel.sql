SELECT* FROM tb_funcionario WHERE genero = 'F';
SELECT * FROM tb_funcionario WHERE id_fun ="F005";
SELECT * FROM tb_salario WHERE salario > 6000;
SELECT * FROM tb_salario WHERE salario <= 6000;
SELECT * FROM tb_cargo;

SELECT DISTINCT genero FROM tb_funcionario;
SELECT DISTINCT cargo FROM tb_cargo;

#AND
SELECT * FROM tb_salario WHERE salario >= 5000 AND salario <=10000;
#OR (||)
SELECT * FROM tb_salario WHERE salario >= 2000 AND salario <=10000 AND fun_id('F005');
#NOT

SELECT * FROM tb_cargo WHERE cargo = ('Tester') ||  cargo=('Ux Designer') ;

SELECT * FROM tb_cargo WHERE NOT cargo = 'Tester' AND NOT cargo = 'Engenheiro de Software';

# ORDENANDO RESULTADOS 
  #  ORDER BY utiliza dois parâmentros
   #ASC: Ordes ascendente
   #DESC: Ordem descendente
   
   SELECT * FROM tb_salario WHERE salario<12000 ORDER BY  salario ASC;	
   
   #SElecionar na tabela argos todas a clunas porem com os cargos em ordem DESC e ASC
	SELECT * FROM tb_cargo  ORDER BY  cargo DESC LIMIT 10;
   