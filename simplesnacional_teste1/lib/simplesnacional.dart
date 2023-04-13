class SimplesNacional {
  double alq = 0;
  double pd = 0;
  
  bool optante = true;
  String anexo = '';
  List<List<double>> _faixa = [];
  double rbt12 = 0;


 SimplesNacional({required double rbt12,required String anexo});

  double? funcCalculaAliqEfetiva(double rbt12, String anexo) {
    double? alqEfetiva;
    if(anexo=='Anexo I'){
    _faixa = [
      [180000, 3 / 100, 0],
      [360000, 6.3 / 100, 5939],
      [720000, 8.5 / 100, 13859],
      [1800000, 9.7 / 100, 22499],
      [3600000, 13.3 / 100, 87299],
      [4800000, 18 / 100, 377999]
    ];
    }else if(anexo=='Anexo II'){
       _faixa = [
      [180000, 4.5 / 100, 0],
      [360000, 7.8 / 100, 5940],
      [720000, 10 / 100, 13860],
      [1800000, 12.2 / 100, 22500],
      [3600000, 14.7 / 100, 85500],
      [4800000, 30 / 100, 720000]
    ];
    }else if(anexo=='Anexo III'){
       _faixa = [
      [180000, 6 / 100, 0],
      [360000, 11.2 / 100, 9360],
      [720000, 13.5 / 100, 17640],
      [1800000, 16 / 100, 35640],
      [3600000, 21 / 100, 125640],
      [4800000, 33 / 100, 648000]
    ];
    }else if(anexo=='Anexo IV'){
       _faixa = [
      [180000, 4.5 / 100, 0],
      [360000, 9 / 100, 8100],
      [720000, 10.2 / 100, 12420],
      [1800000, 14 / 100, 39780],
      [3600000, 22 / 100, 183780],
      [4800000, 33 / 100, 828000]
    ];
    }else if(anexo=='Anexo V'){
       _faixa = [
      [180000, 15.5 / 100, 0],
      [360000, 18 / 100, 4500],
      [720000, 19.5 / 100, 9900],
      [1800000, 20.5 / 100, 17100],
      [3600000, 23 / 100, 62100],
      [4800000, 30.5 / 100, 540000]
    ];
    } else {print('Erro nos Anexos');}

    for (int i = 0; i < _faixa.length; i++) {
      if (rbt12 < _faixa[i][0]) {
        alq = _faixa[i][1];
        pd = _faixa[i][2];
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        if (i == _faixa.length - 1) {
          optante = false;
        }
      }
    }
    return alqEfetiva;
  }
}

/*
 funcCalculaAliqEfetiva(String anexo, double rbt12) {
    if (anexo == 'Anexo I'  ) {
      if (rbt12 < 180000) {
        alq = (3 / 100);
        pd = 0;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        alq = (6.3 / 100);
        pd = 5939;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        alq = (8.5 / 100);
        pd = 13859;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        alq = (9.7 / 100);
        pd = 22499;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        alq = (13.3 / 100);
        pd = 87299;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        alq = (18 / 100);
        pd = 377999;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        print('Você está na última faixa do Simples Nacional');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo II' ) {
      if (rbt12 < 180000) {
        alq = (3.5 / 100);
        pd = -1;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        alq = (6.8 / 100);
        pd = 5939;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        alq = (9 / 100);
        pd = 13859;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        alq = (10.2/ 100);
        pd = 22499;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        alq = (13.7 / 100);
        pd = 87299;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        alq = (29 / 100);
        pd = 719999;
        alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo III') {
      if (rbt12 < 180000) {
        alq = (5 / 100);
        int pd = -1;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        alq = (10.2 / 100);
        int pd = 9359;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        alq = (12.5 / 100);
        int pd = 17639;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        alq = (15/ 100);
        int pd = 35639;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        alq = (20 / 100);
        pd = 125639;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        alq = (32 / 100);
        int pd = 647999;
        alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo IV' ) {
      if (rbt12 < 180000) {
        alq = (3.5 / 100);
        int pd = -1;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        alq = (8/ 100);
        int pd = 8099;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        alq = (9.2 / 100);
        int pd = 12419;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        alq = (13/ 100);
        int pd = 39779;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        alq = (21 / 100);
        pd = 183779;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        alq = (32 / 100);
        int pd = 827999;
        alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    if (anexo == 'Anexo V'  ) {
      if (rbt12 < 180000) {
        alq = (14.5 / 100);
        int pd = -1;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else if (rbt12 < 360000) {
        alq = (17/ 100);
        int pd = 4499;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 720000) {
        alq = (18.5/ 100);
        int pd = 9899;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 1800000) {
        alq = (19.5/ 100);
        int pd = 17099;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }
      else if (rbt12 < 3600000) {
        alq = (22 / 100);
        pd = 62099;
        alqEfetiva = (((rbt12 * alq)) - pd) / rbt12;
        return alqEfetiva;
      }else{
        alq = (29.50/ 100);
        int pd = 539999;
        alqEfetiva = ((((rbt12 * alq)) - pd) / rbt12);
        print('Você está na última faixa do Simples Nacional do $anexo');
        return alqEfetiva;
      }}
    else{
      print('Você escreveu o $anexo errado');}
    
  }
  } */