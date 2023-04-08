import 'package:simplesnacional_teste1/simplesnacional_teste1.dart'
    as simplesnacional_teste1;

void main() {
  Empresa teste1 = Empresa('Eficaz', '03.435.487/0001-10', '126789',
      '256.748-20', ['4771-7/01'], 180984.87);
 
 SimplesNacional calculo1 = SimplesNacional();

 double resultado = calculo1.funcCalculaSimplesNacional('Anexo V', 178000.00)*100;

 print('$resultado %');

 double resultado2 = calculo1.funcCalculaSimplesNacional('Anexo II', 365000)*100;
 print(resultado2.toStringAsFixed(3));

  
  

}

class Empresa {
  String nome = '';
  String cnpj = '';
  String im = '';
  String ie = '';
  List<dynamic> cnae = [];

  double faturamento = 0;
  double alq = 0;
  double rbt12 = 0;
  double pd = 0;

  List<dynamic> listaRbt12 = [];

  Empresa(this.nome, this.cnpj, this.im, this.ie, this.cnae, this.faturamento);

  funcRbt12(faturamento) {
    listaRbt12.add(faturamento);
  }

  funcSomaRbt12() {
    double soma = 0;
    for (int i = 0; i <= listaRbt12.length; i++) {
      soma = soma + listaRbt12[i];
    }
    return soma;
  }

  funcAlqEfetiva(double rbt12, double alq, double pd) {
    double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;

    return alqEfetiva;
  }
}

class SimplesNacional {
  

 funcCalculaSimplesNacional(String anexo, double rbt12) {
    if (anexo == 'Anexo I'  ) {
      if (rbt12 < 180000) {
        double alq = (4 / 100);
        double pd = 0;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        double alq = (7.3 / 100);
        double pd = 5940.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        double alq = (9.5 / 100);
        double pd = 13860.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        double alq = (10.7 / 100);
        double pd = 22500.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        double alq = (14.3 / 100);
        double pd = 87300.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        double alq = (19 / 100);
        double pd = 378000;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        print('Você está na última faixa do Simples Nacional');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo II' ) {
      if (rbt12 < 180000) {
        double alq = (4.5 / 100);
        double pd = 0;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        double alq = (7.8 / 100);
        double pd = 5940.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        double alq = (10 / 100);
        double pd = 13860.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        double alq = (11.2/ 100);
        double pd = 22500.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        double alq = (14.7 / 100);
        double pd = 87300.00;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        double alq = (30 / 100);
        double pd = 720000;
        double alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo III') {
      if (rbt12 < 180000) {
        double alq = (6 / 100);
        int pd = 0;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        double alq = (11.2 / 100);
        int pd = 9360;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        double alq = (13.5 / 100);
        int pd = 17640;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        double alq = (16/ 100);
        int pd = 35640;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        double alq = (21 / 100);
        double pd = 125640;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        double alq = (33 / 100);
        int pd = 648000;
        double alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo IV' ) {
      if (rbt12 < 180000) {
        double alq = (4.5 / 100);
        int pd = 0;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        double alq = (9/ 100);
        int pd = 8100;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        double alq = (10.2 / 100);
        int pd = 12420;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        double alq = (14/ 100);
        int pd = 39780;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        double alq = (22 / 100);
        double pd = 183780;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        double alq = (33 / 100);
        int pd = 828000;
        double alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo V'  ) {
      if (rbt12 < 180000) {
        double alq = (15.5 / 100);
        int pd = 0;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        double alq = (18/ 100);
        int pd = 4500;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        double alq = (19.5/ 100);
        int pd = 9900;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        double alq = (20.5/ 100);
        int pd = 17100;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        double alq = (23 / 100);
        double pd = 62100;
        double alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        double alq = (30.50/ 100);
        int pd = 540000;
        double alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    else{
      print('Você escreveu o $anexo errado');}
    
  }
}
