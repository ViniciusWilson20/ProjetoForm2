#!/bin/bash 
function inserir(){
echo "Inserir novo Cliente"
echo "-------------------"
echo "Informe o seu nome: "
read nome
echo "Informe o seu cpf: "
read cpf
echo "Informe o a sua data de nascimento: "
read data
echo "Informe o seu telefone:" 
read telefone
echo "Informe o seu email: "
read email

reg="-e --------------------------------
        \nNome: $nome 
        \nCPF: $cpf
        \nData Nasc.: $data 
        \nTelefone: $telefone 
        \nEmail: $email
	\n--------------------------------"
echo $reg
echo "Deseja Salvar os Registros?"
echo "(1)-> Sim / (2)-> Não"
read op
case $op in 
	1) echo "Salvando Registros..."
	   echo $reg >> cliente_reg.txt
	;;
	2) echo "Cancelando..."
		exit 0 
	;;
esac
}

function buscar(){
echo "Buscando Registros dos Clientes"
echo "Como Deseja Buscar os Registros?"
echo "(1)-> Consultar Pelo Nome / (2)-> Consultar Pelo Histórico Completo"
read op
case $op in 
	1)echo "Insira o Nome do Registro que Deseja Buscar: "
	  read nome
	  grep -i $nome cliente_reg.txt
	;;
	2)echo "Histórico de Registros: "
		cat cliente_reg.txt
	;;
esac
}

echo "Formulário Eletrônico"
echo "Escolha uma Operação: "
echo "(1)-> Inserir novo Cliente"
echo "(2)-> Consultar Cliente Inserido"
echo "(3)-> Sair"
read opcao
case $opcao in 
	1)
		inserir    
	;;
	2)
		buscar
	;;
	3)      
		exit 0 
	;;
esac
exit 0

