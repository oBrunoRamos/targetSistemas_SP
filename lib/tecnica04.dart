main(){

  List<Map<String, dynamic>> faturamentoMes =[
    {
      "estado": "SP",
      "faturamento": 67836.43
    },
    {
      "estado": "RJ",
      "faturamento": 36678.66
    },
    {
      "estado": "MG",
      "faturamento": 29229.88
    },
    {
      "estado": "ES",
      "faturamento": 27165.48
    },
    {
      "estado": "Outros",
      "faturamento": 19849.53
    }
  ];

  double faturamentoTotal = 0;

  for(int i =0; i<faturamentoMes.length; i++){
    faturamentoTotal += faturamentoMes[i]["faturamento"];
  }

  double umPOrcento = faturamentoTotal/100;

print("Faturamento do mês por estado:");

  for(int i =0; i<faturamentoMes.length; i++){

    faturamentoMes[i]["porcentagem"] = faturamentoMes[i]["faturamento"]/umPOrcento;

    print("\nFauramento em ${faturamentoMes[i]["estado"]}\n"
        "Total faturado: ${faturamentoMes[i]["estado"]}\n"
        "Porcentagem de faturamento: ${faturamentoMes[i]["porcentagem"].toStringAsFixed(2)}%\n");
  }




}