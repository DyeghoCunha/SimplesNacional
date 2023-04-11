# SimplesNacional
Inicio de codigo para calculo de simples nacional

# Como calcular o Simples Nacional

O Simples Nacional é um regime tributário simplificado que se aplica a micro e pequenas empresas com faturamento anual de até R$ 4,8 milhões. Ele unifica o pagamento de diversos impostos federais, estaduais e municipais em uma única guia de recolhimento.

O cálculo do Simples Nacional é feito por meio de uma tabela que leva em consideração a atividade da empresa e o seu faturamento. A tabela é dividida em faixas de faturamento e cada faixa tem uma alíquota específica que varia de acordo com a atividade econômica da empresa.

Para calcular o valor a ser pago, basta multiplicar o faturamento mensal pela alíquota correspondente da faixa em que a empresa se enquadra. O valor resultante é a parcela a ser paga de imposto unificado, que já inclui todos os tributos federais, estaduais e municipais. O valor do Simples Nacional a ser pago é informado em uma única guia de pagamento.

É importante destacar que o Simples Nacional não é aplicável a todas as atividades econômicas, e há algumas exceções, como empresas que prestam serviços de consultoria ou aquelas que têm participação de sócio no exterior, entre outras. Por isso, é importante verificar se a sua empresa se enquadra no regime do Simples


---- Incluir Esta solução

Pasta 1 
class Empresa {
  String nome;
  String cnpj;
  String cnae;

  Empresa(this.nome,this.cnpj,this.cnae);

  
}

class Cnae {
  String numeroCnae = '';
  dynamic cnae = '';

  Cnae(String anexoCnae) : cnae = '' {
    cnae = retornaAnexo(anexoCnae);
  }

  String retornaAnexo(String anexoCnae) {
    if (anexoCnae == '111111') {
      return 'Anexo 1';
    } else if (anexoCnae == '222222') {
      return 'Anexo 2';
    } else if (anexoCnae == '333333') {
      return 'Anexo 3';
    } else {
      return 'Deu Merda';
    }
  }
}

pasta 2
void main(){
  Empresa empresa1 = Empresa('Eficaz', '03241032000123', '222222');
  Empresa empresa2 = Empresa('TopEletros', '03243123320001', '333333');
  var testeCnae = empresa1.cnae;
  Cnae anexo = Cnae(empresa1.cnae);
  print(testeCnae);
  print(anexo.retornaAnexo(empresa1.cnae));
  
}