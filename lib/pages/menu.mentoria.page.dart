import 'package:estimulo2020/pages/mentoria.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class MenuMentoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue[100],
          shadowColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                border: new Border.all(color: Colors.transparent, width: 2.0),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFF525aaff),
                    Color(0XFFFF66FF),
                  ],
                )),
          ),
          title: Center(
            child: Align(
                child: Text('FORMULÁRIO DE MENTORIA',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))),
          ),
          actions: <Widget>[
            Container(
              width: 60,
            ),
          ],
        ),
        body: formulario(context));
  }

  Widget formulario(context) {
    return Container(
      child: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              'Informações da Empresa:',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF6C63FF)),
            ),
            SizedBox(height: 20),
            formuLario('Razão Social', TextInputType.text),
            SizedBox(height: 15),
            formuLario('CNPJ', TextInputType.number),
            SizedBox(height: 15),
            formuLario('Idade da empresa', TextInputType.number),
            SizedBox(height: 15),
            multiSelect('O negocio eh familiar?'),
            SizedBox(height: 15),
            formuLario('Endereço comercial', TextInputType.text),
            SizedBox(height: 15),
            formuLario('Município', TextInputType.text),
            SizedBox(height: 15),
            formuLario('Telefone Comercial', TextInputType.number),
            SizedBox(height: 15),
            formuLario('Site/Rede Social da empresa', TextInputType.text),
            SizedBox(height: 15),
            formuLario(
                'Nº de funcionários antes da crise', TextInputType.number),
            SizedBox(height: 15),
            formuLario('Telefone Comercial', TextInputType.number),
            SizedBox(height: 15),
            multiSelect('Faixa de faturamento mensal antes da crise:'),
            SizedBox(height: 15),
            multiSelect('Qual é o setor de atuação da empresa?'),
            SizedBox(height: 15),
            multiSelect('Qual é a segmentação de nicho de mercado da empresa?'),
            SizedBox(height: 15),
            multiSelect(
                'Marque a(s) especialidade(s) que você acredita necessitar de assessoria:'),
            SizedBox(height: 15),
            multiSelect(
                'A sua empresa se beneficiou do programa emergencial de manutenção do emprego (Medida Provisória 936)? '),
            SizedBox(height: 15),
            multiSelect(
                'A empresa recebeu algum empréstimo dos fundos públicos destinados ao socorro de pequenas e médias empresas afetadas pela Covid-19? (Exemplo: Programa Nacional de Apoio às Microempresas e Empresas de Pequeno Porte (Pronampe), Programa Emergencial de Suporte ao Emprego (Pese), Programa de Capital de Giro para Preservação de Empresa (CGPE), dentre outras).'),
            SizedBox(height: 15),
            formuLario(
                'Se você respondeu sim a pergunta anterior, informe qual(is) linha(s) de empréstimo(s) a empresa acessou e qual(is) o(s) valor(es) total(is) do(s) empréstimo(s) recebido(s)?',
                TextInputType.text),
            SizedBox(height: 15),
            multiSelect(
                'Durante a pandemia, quantos funcionários você demitiu?'),
            SizedBox(height: 15),
            multiSelect(
                'Durante a pandemia, qual foi o percentual de redução de seu faturamento mensal?'),
            multiSelect(
                'O seu negócio possui filiais? Se sim, quantas estavam operando antes da pandemia e quantas atualmente?'),
            SizedBox(height: 15),
            formuLario(
                'Se o negócio possui filiais, informe em qual(is) cidade(s) estão localizadas.',
                TextInputType.text),
            SizedBox(height: 15),
            multiSelect('A empresa faz parte de uma Franquia?'),
            SizedBox(height: 15),
            multiSelect(
                'Se respondeu sim a pergunta anterior, a franquia concedeu algum apoio durante a pandemia?'),
            SizedBox(height: 15),
            multiSelect(
                'Durante a pandemia, você precisou encerrar contrato com quantos fornecedores?'),
            SizedBox(height: 15),
            Text(
              'Motivação:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0xFF6C63FF),
              ),
            ),
            SizedBox(height: 20),
            multiSelect(
                'Qual é o grau de importância do negócio na sua vida? Considerando que 1 é pouco importante e 10 é muito importante.'),
            SizedBox(height: 15),
            multiSelect('Qual é o seu tempo de dedicação para o negócio?'),
            SizedBox(height: 15),
            multiSelect(
                'Você estaria disposto a se dedicar no mínimo 3 (três) horas semanais para participar deste processo nas ações de assessoramento?'),
            SizedBox(height: 15),
            formuLario(
                'Por que eu quero participar deste programa? Justifique sua resposta.',
                TextInputType.text),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: FlatButton(
                child: Text(
                  'Enviar Solicitação',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mentoria(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget formuLario(String dadoUsuario, TextInputType input) {
    return Container(
        child: Column(
      children: [
        TextFormField(
          // autofocus: true,

          keyboardType: input,
          decoration: InputDecoration(
            labelText: dadoUsuario,
            labelStyle: TextStyle(
              color: Color(0xFF848788),
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    ));
  }

  Widget multiSelect(String dadosmultiplos) {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.blue[200],
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            dadosmultiplos,
            style: TextStyle(fontSize: 16, color: Color(0xFF848788)),
          ),
          dataSource: [
            {
              "display": "Sim",
              "value": "Sim",
            },
            {
              "display": "Nao",
              "value": "Nao",
            },
          ],
          textField: 'display',
          valueField: 'value',
          okButtonLabel: 'OK',
          cancelButtonLabel: 'CANCEL',
          hintWidget: Text('Selecione a opcao',
              style: TextStyle(
                color: Colors.white54,
              )),
          initialValue: List(),
          onSaved: (value) {
            if (value == null) return;
          }),
    );
  }
}
