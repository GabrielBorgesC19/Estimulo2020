import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import './videoplayer.page.dart';

class LeassonItem {
  String videoCode;
  String title;
  String description;
  List<String> tags;
  String mentor;
  LeassonItem(
      this.videoCode, this.title, this.description, this.tags, this.mentor);
}

class ModuleItem {
  bool isSelected = false;
  String title;
  List<LeassonItem> leassons;
  ModuleItem(this.title, this.isSelected, this.leassons);
}

class CapacitacaoGeral extends StatefulWidget {
  @override
  _CapacitacaoGeralState createState() => _CapacitacaoGeralState();
}

class _CapacitacaoGeralState extends State<CapacitacaoGeral> {
  List<ModuleItem> modules;
  List<LeassonItem> activeLeassons;

  @override
  void initState() {
    super.initState();

    var leasson1 = LeassonItem(
        "e--xnFnwPTU",
        "Acompanhe o seu caixa de perto",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        null,
        "Eduardo Coutinho");
    var leasson5 = LeassonItem(
        "SvWmLfMc6Dk",
        "Renegocie suas dívidas",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        null,
        "George Sales");
    var leasson6 = LeassonItem(
        "xxgb43JJUCc",
        "Explique a situação para os seus fornecedores",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        null,
        "George Sales");
    var leasson2 = LeassonItem(
        "U2Dkxj2hMAM",
        "Planeje suas receitas e despesas",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        List.from(["Receitas", "Despesas"]),
        "Cristiano Correa");
    var leasson3 = LeassonItem(
        "FL4oqFqhy4k",
        "Comece a vender por canais digitais",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        List.from(["Vendas", "Online"]),
        "Marcos Rocha");
    var leasson4 = LeassonItem(
        "zbnm-_8t3fs",
        "Adapte suas vendas ao isolamento social",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        List.from(["Vendas", "Online"]),
        "Marcos Rocha");
    var leasson8 = LeassonItem(
        "SJyX3mD7sxE",
        "Férias e Banco de Horas",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas quis ex sem. Praesent elit dui, iaculis at interdum eu, rutrum et mi. ",
        List.from(["Vendas", "Online"]),
        "Juliano Barra");
    modules = [
      ModuleItem("Financeiro", true,
          List.from([leasson1, leasson2, leasson5, leasson6])),
      ModuleItem(
          "Comunicação e Marketing", false, List.from([leasson3, leasson4])),
      ModuleItem("Tecnologia e inovação", false, null),
      ModuleItem("Recursos Humanos", false, List.from([leasson8])),
    ];
    activeLeassons = modules[0].leassons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
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
          child: SizedBox(
            width: 100,
            height: 60,
            child: Image.asset("assets/estimulo_logo.png"),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 60,
          ),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(color: Color(0xFFECF0F3)),
          alignment: Alignment(0.0, 1.15),
          child: ListView(
            children: <Widget>[
              Container(
                height: 140.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: modules.map((element) {
                    return moduleBubble(
                        element.isSelected, modules.indexOf(element));
                  }).toList(),
                ),
              ),
              Column(
                  children: activeLeassons != null && activeLeassons.isNotEmpty
                      ? activeLeassons.map((e) => cardItem(e)).toList()
                      : List()),
            ],
          )),
    );
  }

  Widget moduleBubble(active, index) {
    return Container(
        child: InkWell(
            onTap: () {
              setState(() {
                modules = modules.map((e) {
                  e.isSelected = false;
                  return e;
                }).toList();
                modules[index].isSelected = true;

                activeLeassons = modules[index].leassons;
              });
            },
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(bottom: 0, top: 10, left: 10, right: 10),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(active ? 0xFF6C63FF : 0xFFE4E4E4),
                        width: 3),
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: new ExactAssetImage("assets/senha.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 35,
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: Text(
                        modules[index].title,
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(active ? 0xFF6C63FF : 0xFF848788),
                            fontWeight: FontWeight.bold),
                      )),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(active ? 0xFF6C63FF : 0xFFE4E4E4),
                              width: 3))),
                  padding: EdgeInsets.symmetric(horizontal: 22, vertical: 2),
                )
              ],
            )));
  }

  Widget cardItem(LeassonItem leassonItem) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.push(
                  //
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerPage(leassonItem),
                  ),
                );
              },
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://img.youtube.com/vi/${leassonItem.videoCode}/0.jpg",
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      )),
                  Positioned.fill(
                    child: Container(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Stack(children: [
                          Align(
                            child: Icon(
                              Icons.play_circle_outline,
                              size: 75,
                              color: Colors.white,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                leassonItem.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))
                        ]),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Color(0x880A0A0A)
                                ])),
                      ),
                    ),
                  )
                ], //VideoPlayer(videoCode),
              )),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Mentor: ",
                      style: TextStyle(
                          color: Colors.pink[500], fontWeight: FontWeight.bold),
                    ),
                    Text(leassonItem.mentor)
                  ],
                ),
                Text(
                  "Tags: ${leassonItem.tags != null && leassonItem.tags.isNotEmpty ? leassonItem.tags.join(', ') : 'Nenhuma'}",
                  style: TextStyle(fontSize: 12, color: Color(0xFF848788)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
