import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multiselect_formfield/multiselect_formfield.dart';

class MenuMentoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFF525aaff),
                  Color(0XFFFF66FF),
                ],
              ),
            ),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.red,
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.article_outlined),
                      child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xFFF525aaff),
                                Color(0XFFFF66FF),
                              ],
                            ),
                          ),
                          child: new Center(
                              child: Text('Informações da Empresa '))),
                    ),
                    Tab(icon: Icon(Icons.directions_transit)),
                    Tab(icon: Icon(Icons.directions_bike)),
                  ],
                ),
                title: Text('Estimulo 2020'),
              ),
              body: TabBarView(
                children: [
                  formulario(),
                  formulario2(),
                  formulario(),
                ],
              ),
            )),
      ),
    );
  }

  Widget formulario() {
    return Container(
      child: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            formuLario('Razão Social', TextInputType.text),
            SizedBox(height: 15),
            formuLario('Cnpj', TextInputType.number),
            SizedBox(height: 15),
            formuLario('Telefone', TextInputType.number),
            SizedBox(height: 15),
            formuLario('Idade da empresa', TextInputType.number),
            SizedBox(height: 15),
            multiSelect(),
            formuLario('Endereço comercial', TextInputType.text),
            SizedBox(height: 15),
            formuLario('Município', TextInputType.text),
            SizedBox(height: 15),
            formuLario('Estado', TextInputType.text),
            SizedBox(height: 15),
            formuLario2('Telefone Comercial', TextInputType.number),
            SizedBox(height: 15),
            formuLario2('Email', TextInputType.emailAddress),
            SizedBox(height: 15),
            formuLario2('site', TextInputType.text),
            SizedBox(height: 15),
            formuLario2(
                'Nº de funcionários antes de crise: ', TextInputType.number),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget formulario2() {
    return Container(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            multiSelectFaturamento(),
            SizedBox(height: 15),
            multiSelectSetor(),
            SizedBox(height: 15),
            multiSelectSegmentacao(),
            multiSelectEspecialidade(),
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
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    ));
  }

  Widget formuLario2(String dadoUsuario, TextInputType input) {
    return Container(
        child: Column(
      children: [
        TextFormField(
          // autofocus: true,

          keyboardType: input,
          decoration: InputDecoration(
            labelText: dadoUsuario,
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 20,
            ),
          ),
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ],
    ));
  }

  Widget multiSelect() {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.black,
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            "O negócio é familiar ?",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          dataSource: [
            {
              "display": "Sim",
              "value": "Running",
            },
            {
              "display": "Nao",
              "value": "Climbing",
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

  Widget multiSelectFaturamento() {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.black,
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            "Faixa de faturamento mensal antes da crise:  ?",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          dataSource: [
            {
              "display": "30 a 60 mil",
              "value": "30 a 60 mil",
            },
            {
              "display": "90 a 150 mil",
              "value": "90 a 150 mil",
            },
            {
              "display": "150 a  210 mil",
              "value": "150 a  210 mil",
            },
            {
              "display": "210 a 270 mil",
              "value": "210 a 270 mil",
            },
            {
              "display": "Acima de 270 mil",
              "value": "Acima de 270 mil",
            },
            {
              "display": "Outros",
              "value": "Outros",
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

  Widget multiSelectSetor() {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.black,
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            "Faixa de faturamento mensal antes da crise:  ?",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          dataSource: [
            {
              "display": "Varejo",
              "value": "Varejo",
            },
            {
              "display": "Atacado",
              "value": "Atacado",
            },
            {
              "display": "Indústria",
              "value": "Indústria",
            },
            {
              "display": "Serviço",
              "value": "Serviço",
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

  Widget multiSelectSegmentacao() {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.black,
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            "Faixa de faturamento mensal antes da crise:  ?",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          dataSource: [
            {
              "display": "Alimentação",
              "value": "Alimentação",
            },
            {
              "display": "Beleza",
              "value": "Beleza",
            },
            {
              "display": "Brinquedos",
              "value": "Brinquedos",
            },
            {
              "display": "Educação",
              "value": "Educação",
            },
            {
              "display": "Esporte",
              "value": "Esporte",
            },
            {
              "display": "Livraria",
              "value": "Livraria",
            },
            {
              "display": "Mecardos e/ou Mecearia",
              "value": "Mecardos e/ou Mecearia",
            },
            {
              "display": "Moda",
              "value": "Moda",
            },
            {
              "display": "Papelaria",
              "value": "Papelaria",
            },
            {
              "display": "Produtos para Animais",
              "value": "Produtos para Animais",
            },
            {
              "display": "Produtos para artesanato",
              "value": "Mecardos e/ou Mecearia",
            },
            {
              "display": "Saúde",
              "value": "Saúde",
            },
            {
              "display": "Outro",
              "value": "Outro",
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

  Widget multiSelectEspecialidade() {
    return Container(
      child: MultiSelectFormField(
          fillColor: Colors.transparent,
          autovalidate: false,
          chipBackGroundColor: Colors.black,
          chipLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          dialogTextStyle: TextStyle(fontWeight: FontWeight.bold),
          checkBoxActiveColor: Colors.blue[50],
          checkBoxCheckColor: Colors.green,
          dialogShapeBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(
            "Marque a(s) especialidade(s) que você acredita necessitar de assessoria. É possível marcar mais de uma opção:  ?",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          dataSource: [
            {
              "display": "Contabilidade",
              "value": "Contabilidade",
            },
            {
              "display": "E-Commerce",
              "value": "E-Commerce",
            },
            {
              "display": "Brinquedos",
              "value": "Brinquedos",
            },
            {
              "display": "Educação",
              "value": "Educação",
            },
            {
              "display": "Esporte",
              "value": "Esporte",
            },
            {
              "display": "Livraria",
              "value": "Livraria",
            },
            {
              "display": "Mecardos e/ou Mecearia",
              "value": "Mecardos e/ou Mecearia",
            },
            {
              "display": "Moda",
              "value": "Moda",
            },
            {
              "display": "Papelaria",
              "value": "Papelaria",
            },
            {
              "display": "Produtos para Animais",
              "value": "Produtos para Animais",
            },
            {
              "display": "Produtos para artesanato",
              "value": "Mecardos e/ou Mecearia",
            },
            {
              "display": "Saúde",
              "value": "Saúde",
            },
            {
              "display": "Outro",
              "value": "Outro",
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
