import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class TabMutual extends StatefulWidget {
  const TabMutual({Key? key}) : super(key: key);

  @override
  State<TabMutual> createState() => _TabMutualState();
}

class _TabMutualState extends State<TabMutual> with TickerProviderStateMixin {
  TabController? _tabController_indus1;
  TabController? _tabController_indus2;
  TabController? _tabController_produc1;
  TabController? _tabController_produc2;
  TabController? _tabController_produc3;
  TabController? _tabController_produc4;
  bool _industry = true;
  bool _product = false;
  bool _intelligence = false;

  List outperform_benchmark = [
    "24 of 43",
    "24 of 43",
    "24 of 43",
    "24 of 43",
  ];

  List fund_manager_title = [
    "Manulife Aset Manajemen Indonesia (MAMI)",
    "Bahana TCW Investment Management",
    "Sucorinvest Asset Management",
    "Mandiri Manajemen Investasi",
    "Batavia Prosperindo Aset Manajemen",
  ];

  List fund_manager_harga = [
    "IDR 52,422,384,758,579",
    "IDR 40,879,584,506,115",
    "IDR 38,604,177,248,685",
    "IDR 37,464,383,536,587",
    "IDR 36,343,937,440,559",
  ];

  List perform_fund_title = [
    "Panin Dana Ultima",
    "HPAM Ekuitas Syariah Berkah",
    "Sucorinvest Saham Dinamis",
    "Panin Dana Maksima",
    "Panin Dana Teladan",
  ];

  List perform_fund_balanced = [
    "Panin Dana Bersama",
    "Sucorinvest Anak Pintar",
    "Prospera Value Fund",
    "Sucorinvest Citra Dana Berimbang",
    "SAM Providentia Balanced Fund",
  ];

  List perform_fund_persen = [
    "55.23%",
    "44.27%",
    "55.23%",
    "43.21%",
    "43.10%",
  ];

  List sharpe_ratio_title = [
    "Panin Dana Ultima",
    "OSO Mollucas Equity Fund",
    "Panin Dana Maksima",
    "Panin Dana Teladan",
    "Sucorinvest Equity Fund",
  ];

  List sharpe_ratio_value = [
    "3.38",
    "3.13",
    "2.85",
    "2.58",
    "2.30",
  ];

  List category = [
    "Equity",
    "Balanced",
    "Fixed Income",
    "Money Market",
  ];

  List downside_risk_value = [
    "7.52",
    "7.83",
    "8.58",
    "9.43",
    "9.68",
  ];

  List downside_risk_name = [
    "Victoria Equity Maxima",
    "Simas Equity Syariah",
    "Pacific Equity Optimum Fund",
    "Shinhan Mitra Maxima Ekuitas",
    "Pinnacle Dana Ekuitas Nusantara",
  ];

  final _tabs_indus1 = [
    Tab(text: '1 Month'),
    Tab(text: '3 Month'),
    Tab(text: '6 Month'),
    Tab(text: 'YTD'),
    Tab(text: '1 Year'),
    Tab(text: '3 Year'),
    Tab(text: '5 Year'),
  ];

  final _tabs_produc = [
    Tab(text: 'ALL'),
    Tab(text: '< 100M'),
    Tab(text: '100M - 500M'),
    Tab(text: '500M - 1T'),
    Tab(text: '> 1T'),
  ];

  final _tabs_indus2 = [
    Tab(text: 'Industry'),
    Tab(text: 'Top Product'),
    Tab(text: 'Intelligence'),
  ];

  List<Color?> _colors = [
    Colors.red[200],
    Colors.yellow[600],
    Colors.green[200],
    Colors.blue[200],
  ];

  List<Color?> _color = [
    Colors.red[300],
    Colors.yellow[700],
    Colors.green[300],
    Colors.blue[300],
  ];

  @override
  void initState() {
    _tabController_indus1 =
        TabController(length: _tabs_indus1.length, vsync: this);
    _tabController_indus2 =
        TabController(length: _tabs_indus2.length, vsync: this);
    _tabController_produc1 =
        TabController(length: _tabs_produc.length, vsync: this);
    _tabController_produc2 =
        TabController(length: _tabs_produc.length, vsync: this);
    _tabController_produc3 =
        TabController(length: _tabs_produc.length, vsync: this);
    _tabController_produc4 =
        TabController(length: _tabs_produc.length, vsync: this);
    _tabController_indus2!.addListener(() {
      if (_tabController_indus2!.index == 0) {
        setState(() {
          _industry = true;
          _product = false;
          _intelligence = false;
        });
      } else if (_tabController_indus2!.index == 1) {
        setState(() {
          _industry = false;
          _product = true;
          _intelligence = false;
        });
      } else if (_tabController_indus2!.index == 2) {
        setState(() {
          _industry = false;
          _product = false;
          _intelligence = true;
        });
      } else {}
    });
    super.initState();
  }

  Widget _buildTableProductRows() {
    Widget cont = Container(child: Text("No Data"));
    if (outperform_benchmark.length > 0) {
      List<Widget> widgets = [];
      outperform_benchmark.asMap().forEach((index, _) {
        widgets.add(tableBody(index));
      });
      cont = Column(
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  Widget tableBody(int index) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red[50],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(outperform_benchmark[index],
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue[50],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(outperform_benchmark[index],
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.green[50],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(outperform_benchmark[index],
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.yellow[50],
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(outperform_benchmark[index],
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildColumnValueDownsideRisk() {
    Widget cont = Container(child: Text("No Data"));
    if (downside_risk_value.length > 0) {
      List<Widget> widgets = [];
      downside_risk_value.asMap().forEach((index, _) {
        widgets.add(valueBodyDownsideRisk(index));
      });
      cont = Column(
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  Widget valueBodyDownsideRisk(int index) {
    return Card(
        color: Colors.grey[800],
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Center(
            child: Text(
              downside_risk_value[index],
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ));
  }

  Widget _buildColumnNameDownsideRisk() {
    Widget cont = Container(child: Text("No Data"));
    if (downside_risk_name.length > 0) {
      List<Widget> widgets = [];
      downside_risk_name.asMap().forEach((index, _) {
        widgets.add(nameBodyDownsideRisk(index));
      });
      cont = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  Widget nameBodyDownsideRisk(int index) {
    return Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Text(
        downside_risk_name[index],
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildRowDownsideRisk() {
    Widget cont = Container(child: Text("No Data"));
    if (_color.length > 0) {
      List<Widget> widgets = [];
      _color.asMap().forEach((index, _) {
        widgets.add(rowBodyDownsideRisk(index));
      });
      cont = Row(
        children: widgets,
      );
    }
    return Container(child: cont);
  }

  Widget rowBodyDownsideRisk(int index) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.057,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: _colors[index],
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30), bottom: Radius.circular(20))),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                    color: _color[index],
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      width: MediaQuery.of(context).size.width * 0.02,
                      decoration: BoxDecoration(
                        color: _colors[index],
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.011,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  child: _buildColumnValueDownsideRisk(),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Text(category[index],
                        style: TextStyle(
                            color: Colors.red[300],
                            fontWeight: FontWeight.w600)),
                  ),
                  _buildColumnNameDownsideRisk(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerBuilder() {
    return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3.0, color: Colors.blue.shade300),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red[50],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("< 100 M",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue[50],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("100 M - 500 M",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green[50],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("500 M - 1 T",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow[50],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("> 1 T",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.blue[700],
                          fontSize: 11,
                          fontWeight: FontWeight.w600)),
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                littletab_indust(),
                tabbar_indust(),
              ],
            ),
            _industry
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column_indust_1(),
                      Column_indust_2(),
                      Column_indust_3(),
                    ],
                  )
                : _product
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column_produ_1(),
                          Column_produ_2(),
                          Column_produ_3(),
                          Column_produ_4(),
                        ],
                      )
                    : _intelligence
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [],
                          )
                        : Container(),
          ],
        ),
      ),
    );
  }

  Column_indust_1() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                        ),
                        Text("Benchmark Performance",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.red[200],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/chart.png", scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("-1.05%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Equity Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.yellow[100],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/doughnut-chart.png",
                                        scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("8.85%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Balanced Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.green[100],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/line-chart.png",
                                        scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("6.75%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Fixed Income Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Card(
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.blue[200],
                          elevation: 2,
                          shadowColor: Colors.black,
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("assets/money.png", scale: 1),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: Text("3.05%",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Infovesta Money Market Fund Index",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column_indust_2() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 13,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                ),
                              ),
                              Text(
                                  "Asset Under Management (AUM) Growth by Type",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                      child: Center(child: Text("Chart")),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                              ),
                              Text("% Outperform Benchmark",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 75),
                              Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Equity",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red[200],
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Balanced",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.yellowAccent[700],
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 27),
                              Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.green[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Fixed Income",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green[200],
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[200],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Money Market",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue[200],
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text("Asset Under Management (AUM)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue[700],
                                        fontWeight: FontWeight.bold)),
                              ),
                              headerBuilder(),
                              _buildTableProductRows(),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column_indust_3() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Positioned(
                                top: 10,
                                left: 12,
                                child: Container(
                                  color: Colors.grey[200],
                                  height: 13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.16,
                                ),
                              ),
                              Text("Top Fund Manager by AUM",
                                  style: TextStyle(
                                      color: Colors.blue[700],
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Image.asset("assets/share.png", scale: 1.5),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                      child: Stack(
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/bigchart.png",
                              scale: 2.4,
                            ),
                          ),
                          Column(
                            children: [
                              listBody_TopFundManager(),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(12),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      color: Colors.grey[200],
                                      height: 13,
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                    ),
                                  ),
                                  Text("Top Fund Manager by AUM Growth (%)",
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Image.asset("assets/share.png", scale: 1.5),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                          child: Center(child: Text("Chart")),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Container(
                                      color: Colors.grey[200],
                                      height: 13,
                                      width: MediaQuery.of(context).size.width *
                                          0.19,
                                    ),
                                  ),
                                  Text("Best Fund Manager Performance",
                                      style: TextStyle(
                                          color: Colors.blue[700],
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              Image.asset("assets/share.png", scale: 1.5),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(5, 20, 5, 5),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    color: Colors.red[200],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Equity",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "STAR",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "30.04%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.yellow[100],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Balanced",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Jasa Capital AM",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "28.59%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.green[100],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Fixed Income",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Net Assets",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "7.07%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Card(
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.blue[200],
                                    elevation: 2,
                                    shadowColor: Colors.black,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 3),
                                            child: Text(
                                              "Money Market",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: Text(
                                              "Valbury Capital",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 5),
                                            child: Text(
                                              "5.01%",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 8, 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                              Expanded(
                                  child: Text("+ See more",
                                      style: TextStyle(fontSize: 9))),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column_produ_1() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.16,
                          ),
                        ),
                        Text("Best Perform Fund (Return)",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                        "This category indicates appreciation in the value of fund investment over a period compared to the initial investment made.",
                        style: TextStyle(fontSize: 10)),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              tabColumn_PerformFund(),
              isiColumn_PerformFund(),
            ],
          ),
        ),
      ),
    );
  }

  Column_produ_2() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.14,
                          ),
                        ),
                        Text("Best Sharpe Ratio Fund",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                        "This category indicates the degree of returns generated by fund investment after taking into account all kinds of risks.",
                        style: TextStyle(fontSize: 10)),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              tabColumn_SharpeRatio(),
              isiColumn_SharpeRatio(),
            ],
          ),
        ),
      ),
    );
  }

  Column_produ_3() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.13,
                          ),
                        ),
                        Text("Lowest Downside Risk",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                        "This category represents fund's ability to manage the uncertainty of the actual return being below the expected return.",
                        style: TextStyle(fontSize: 10)),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              tabColumn_DownsideRisk(),
              _buildRowDownsideRisk(),
            ],
          ),
        ),
      ),
    );
  }

  Column_produ_4() {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Card(
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        shadowColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 9,
                          left: 13,
                          child: Container(
                            color: Colors.grey[200],
                            height: MediaQuery.of(context).size.height * 0.02,
                            width: MediaQuery.of(context).size.width * 0.1,
                          ),
                        ),
                        Text("Best Value at Risk",
                            style: TextStyle(
                                color: Colors.blue[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                        "This category represents the maximum possible loss of the investment made.",
                        style: TextStyle(fontSize: 10)),
                    Image.asset("assets/share.png", scale: 1.5),
                  ],
                ),
              ),
              tabColumn_BestValue(),
              isiColumn_BestValue(),
            ],
          ),
        ),
      ),
    );
  }

  tabbar_indust() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Container(
          decoration: BoxDecoration(color: Colors.blue[200]),
          child: TabBar(
            controller: _tabController_indus1,
            indicator: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: _tabs_indus1,
          ),
        ),
      ),
    );
  }

  littletab_indust() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(25),
        child: TabBar(
          labelStyle: TextStyle(fontSize: 12), //For Selected tab
          unselectedLabelStyle: TextStyle(fontSize: 12),
          labelColor: Colors.blue[300],
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
          controller: _tabController_indus2,
          tabs: _tabs_indus2,
        ),
      ),
    );
  }

  headerlist_TopFundManager(int index, int num) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 25),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green[200],
              shape: BoxShape.circle,
            ),
            child: Text(num.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 43)),
          ),
        ),
        Container(
          color: Colors.green[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: Text(fund_manager_title[index],
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(12, 6, 12, 12),
                child: Text(fund_manager_harga[index]),
              ),
            ],
          ),
        )
      ],
    );
  }

  listBody_TopFundManager() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            int number = index + 1;
            return index == 0
                ? headerlist_TopFundManager(index, number)
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 7),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(60, 10, 30, 10),
                              child: Text(
                                number.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[600],
                                    fontSize: 30),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(fund_manager_title[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green[600],
                                        fontSize: 13)),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(fund_manager_harga[index],
                                      style: TextStyle(
                                          color: Colors.green[600],
                                          fontSize: 13)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        indent: 50,
                        endIndent: 50,
                        color: Colors.green[200],
                      ),
                    ],
                  );
          }),
    );
  }

  isiColumn_PerformFund() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.red[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Equity",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[200],
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.yellow[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Balanced",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellowAccent[700],
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.green[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Fixed Income",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[200],
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Colors.blue[200],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Money Market",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[200],
                            fontSize: 12),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 15, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.red[200],
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            int num = index + 1;
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 7),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      num.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Card(
                                      color: Colors.red[50],
                                      elevation: 1,
                                      shadowColor: Colors.black,
                                      child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                perform_fund_title[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  perform_fund_persen[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 15, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.yellow[600],
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            int num = index + 1;
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 7),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      num.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Card(
                                      color: Colors.yellow[50],
                                      elevation: 1,
                                      shadowColor: Colors.black,
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                perform_fund_balanced[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  perform_fund_persen[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 15, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.green[200],
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            int num = index + 1;
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 7),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      num.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Card(
                                      color: Colors.green[50],
                                      elevation: 1,
                                      shadowColor: Colors.black,
                                      child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                perform_fund_title[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  perform_fund_persen[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 15, top: 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: Colors.blue[200],
                  elevation: 2,
                  shadowColor: Colors.black,
                  child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.48,
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            int num = index + 1;
                            return Padding(
                              padding: EdgeInsets.only(top: 0, bottom: 7),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      num.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 25),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 7,
                                    child: Card(
                                      color: Colors.blue[50],
                                      elevation: 1,
                                      shadowColor: Colors.black,
                                      child: Padding(
                                        padding: EdgeInsets.all(12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Text(
                                                perform_fund_title[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  perform_fund_persen[index],
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  tabColumn_PerformFund() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.57,
          decoration: BoxDecoration(
              color: Colors.blue[200], borderRadius: BorderRadius.circular(10)),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 12),
            controller: _tabController_produc1,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.blue[200],
            unselectedLabelColor: Colors.white,
            tabs: _tabs_produc,
          ),
        ),
      ),
    );
  }

  tabColumn_SharpeRatio() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.57,
          decoration: BoxDecoration(
              color: Colors.blue[200], borderRadius: BorderRadius.circular(10)),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 12),
            controller: _tabController_produc2,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.blue[200],
            unselectedLabelColor: Colors.white,
            tabs: _tabs_produc,
          ),
        ),
      ),
    );
  }

  isiColumn_SharpeRatio() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Card(
              color: _colors[index],
              elevation: 2,
              shadowColor: Colors.black,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        category[index],
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      flex: 13,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: IntrinsicHeight(
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        color: _colors[index],
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(sharpe_ratio_title[0],
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400)),
                                      Text(sharpe_ratio_value[0],
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: VerticalDivider(
                                    thickness: 2,
                                    indent: 1,
                                    endIndent: 1,
                                    color: _colors[index],
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                    color: _colors[index],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Text(sharpe_ratio_title[1],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(sharpe_ratio_value[1],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    color: _colors[index],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Text(sharpe_ratio_title[2],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text(sharpe_ratio_value[2],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "4",
                                                style: TextStyle(
                                                    color: _colors[index],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Text(sharpe_ratio_title[3],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(sharpe_ratio_value[3],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "5",
                                                style: TextStyle(
                                                    color: _colors[index],
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 5,
                                              child: Text(sharpe_ratio_title[4],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Text(sharpe_ratio_value[4],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  tabColumn_DownsideRisk() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.57,
          decoration: BoxDecoration(
              color: Colors.blue[200], borderRadius: BorderRadius.circular(10)),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 12),
            controller: _tabController_produc3,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.blue[200],
            unselectedLabelColor: Colors.white,
            tabs: _tabs_produc,
          ),
        ),
      ),
    );
  }

  tabColumn_BestValue() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.57,
          decoration: BoxDecoration(
              color: Colors.blue[200], borderRadius: BorderRadius.circular(10)),
          child: TabBar(
            padding: EdgeInsets.symmetric(horizontal: 12),
            controller: _tabController_produc4,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.blue.shade300, width: 1)),
            labelColor: Colors.blue[200],
            unselectedLabelColor: Colors.white,
            tabs: _tabs_produc,
          ),
        ),
      ),
    );
  }

  isiColumn_BestValue() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1),
                    right: BorderSide(width: 1),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                clipBehavior: Clip.hardEdge,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 5,
                                shadowColor: Colors.grey,
                                child: _buildRadialEquity(),
                              ),
                              Positioned(
                                top: -12,
                                left: 37,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Card(
                                    color: Colors.red,
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 2,
                                    shadowColor: Colors.grey,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: Text("1",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.red[200],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.red,
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("2",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.red[200],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.red,
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("3",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.red[200],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.red[600],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.red,
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("4",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.red[200],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.red[600],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.red,
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("5",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 30, bottom: 20),
                      child: Text(
                        "Equity",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[700]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Card(
                                  clipBehavior: Clip.hardEdge,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 5,
                                  shadowColor: Colors.grey,
                                  child: _buildRadialBalanced(),
                                ),
                                Positioned(
                                  top: -12,
                                  left: 37,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Card(
                                      color: Colors.yellow[800],
                                      clipBehavior: Clip.hardEdge,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      elevation: 2,
                                      shadowColor: Colors.grey,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40),
                                        child: Text("1",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              elevation: 5,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 20),
                                                child: IntrinsicWidth(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "-10.52%",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 10),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                        indent: 1,
                                                        endIndent: 1,
                                                        color:
                                                            Colors.yellow[800],
                                                      ),
                                                      Text(
                                                        "-6.68%",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "Trimegah Saham Nusantara",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                          Positioned(
                                            top: -12,
                                            left: 43,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 25),
                                              child: Card(
                                                color: Colors.yellow[800],
                                                clipBehavior: Clip.hardEdge,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                elevation: 2,
                                                shadowColor: Colors.grey,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25),
                                                  child: Text("2",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.yellow[800],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -13,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.yellow[800],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("3",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Stack(
                                        clipBehavior: Clip.none,
                                        children: [
                                          Card(
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              elevation: 5,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25,
                                                    vertical: 20),
                                                child: IntrinsicWidth(
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "-10.52%",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 10),
                                                      ),
                                                      Divider(
                                                        thickness: 2,
                                                        indent: 1,
                                                        endIndent: 1,
                                                        color:
                                                            Colors.yellow[800],
                                                      ),
                                                      Text(
                                                        "-6.68%",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        "Trimegah Saham Nusantara",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors
                                                                .yellow[800],
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )),
                                          Positioned(
                                            top: -12,
                                            left: 43,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 25),
                                              child: Card(
                                                color: Colors.yellow[800],
                                                clipBehavior: Clip.hardEdge,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),
                                                elevation: 2,
                                                shadowColor: Colors.grey,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 25),
                                                  child: Text("4",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.yellow[800],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Colors
                                                              .yellow[800],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -13,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.yellow[800],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("5",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 20),
                        child: Text(
                          "Balanced",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.yellow[800]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(width: 1),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 30, top: 20),
                      child: Text(
                        "Fixed Income",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                clipBehavior: Clip.hardEdge,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 5,
                                shadowColor: Colors.grey,
                                child: _buildRadialFixedIncome(),
                              ),
                              Positioned(
                                top: -12,
                                left: 37,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Card(
                                    color: Colors.green[700],
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 2,
                                    shadowColor: Colors.grey,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: Text("1",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.green[500],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.green[700],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("2",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.green[500],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.green[700],
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("3",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.green[500],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.green[700],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.green[700],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("4",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.green[500],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Colors.green[700],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.green[700],
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("5",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 5, top: 20),
                      child: Text(
                        "Money Market",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[800]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Card(
                                clipBehavior: Clip.hardEdge,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                elevation: 5,
                                shadowColor: Colors.grey,
                                child: _buildRadialMoneyMarket(),
                              ),
                              Positioned(
                                top: -12,
                                left: 37,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 25),
                                  child: Card(
                                    color: Colors.blue[700],
                                    clipBehavior: Clip.hardEdge,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 2,
                                    shadowColor: Colors.grey,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 40),
                                      child: Text("1",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.blue[700],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.blue[700],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("2",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.blue[700],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.blue[700],
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("3",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            elevation: 5,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25, vertical: 20),
                                              child: IntrinsicWidth(
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "-10.52%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 10),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      indent: 1,
                                                      endIndent: 1,
                                                      color: Colors.blue[700],
                                                    ),
                                                    Text(
                                                      "-6.68%",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Trimegah Saham Nusantara",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.blue[700],
                                                          fontSize: 8),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )),
                                        Positioned(
                                          top: -12,
                                          left: 43,
                                          child: Padding(
                                            padding: EdgeInsets.only(right: 25),
                                            child: Card(
                                              color: Colors.blue[700],
                                              clipBehavior: Clip.hardEdge,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              elevation: 2,
                                              shadowColor: Colors.grey,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 25),
                                                child: Text("4",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Card(
                                          clipBehavior: Clip.hardEdge,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          elevation: 5,
                                          shadowColor: Colors.grey,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25, vertical: 20),
                                            child: IntrinsicWidth(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "-10.52%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 10),
                                                  ),
                                                  Divider(
                                                    thickness: 2,
                                                    indent: 1,
                                                    endIndent: 1,
                                                    color: Colors.blue[700],
                                                  ),
                                                  Text(
                                                    "-6.68%",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 10),
                                                  ),
                                                  Text(
                                                    "Trimegah Saham Nusantara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.blue[700],
                                                        fontSize: 8),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )),
                                      Positioned(
                                        top: -13,
                                        left: 43,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 25),
                                          child: Card(
                                            color: Colors.blue[700],
                                            clipBehavior: Clip.hardEdge,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            elevation: 2,
                                            shadowColor: Colors.grey,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 25),
                                              child: Text("5",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _buildRadialEquity() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsets.symmetric(vertical: 40),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    angle: 90,
                    positionFactor: 0.7,
                    widget: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "-6.68%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.red[600],
                              fontSize: 12),
                        ),
                        Text(
                          "Sucorinvest Saham Dinamis",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.red[600],
                              fontSize: 10),
                        ),
                      ],
                    ))
              ],
              showTicks: false,
              startAngle: 180,
              endAngle: 360,
              canScaleToFit: false,
              showLabels: false,
              pointers: <GaugePointer>[
                RangePointer(
                    cornerStyle: CornerStyle.bothCurve,
                    width: 15,
                    value: 25,
                    animationDuration: 2000,
                    enableAnimation: true,
                    animationType: AnimationType.elasticOut,
                    color: Colors.red[500]),
                NeedlePointer(
                    value: 25,
                    needleColor: Colors.black,
                    enableAnimation: true,
                    animationDuration: 2000,
                    animationType: AnimationType.elasticOut)
              ],
              axisLineStyle: AxisLineStyle(thickness: 15))
        ],
      ),
    );
  }

  _buildRadialBalanced() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsets.symmetric(vertical: 40),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    angle: 90,
                    positionFactor: 0.7,
                    widget: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "-6.68%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.yellow[800],
                              fontSize: 12),
                        ),
                        Text(
                          "Sucorinvest Saham Dinamis",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.yellow[800],
                              fontSize: 10),
                        ),
                      ],
                    ))
              ],
              showTicks: false,
              startAngle: 180,
              endAngle: 360,
              canScaleToFit: false,
              showLabels: false,
              pointers: <GaugePointer>[
                RangePointer(
                    cornerStyle: CornerStyle.bothCurve,
                    width: 15,
                    value: 25,
                    animationDuration: 2000,
                    enableAnimation: true,
                    animationType: AnimationType.elasticOut,
                    color: Colors.yellow[800]),
                NeedlePointer(
                    value: 25,
                    needleColor: Colors.black,
                    enableAnimation: true,
                    animationDuration: 2000,
                    animationType: AnimationType.elasticOut)
              ],
              axisLineStyle: AxisLineStyle(thickness: 15))
        ],
      ),
    );
  }

  _buildRadialFixedIncome() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsets.symmetric(vertical: 40),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    angle: 90,
                    positionFactor: 0.7,
                    widget: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "-6.68%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.green[700],
                              fontSize: 12),
                        ),
                        Text(
                          "Sucorinvest Saham Dinamis",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.green[700],
                              fontSize: 10),
                        ),
                      ],
                    ))
              ],
              showTicks: false,
              startAngle: 180,
              endAngle: 360,
              canScaleToFit: false,
              showLabels: false,
              pointers: <GaugePointer>[
                RangePointer(
                    cornerStyle: CornerStyle.bothCurve,
                    width: 15,
                    value: 25,
                    animationDuration: 2000,
                    enableAnimation: true,
                    animationType: AnimationType.elasticOut,
                    color: Colors.green[700]),
                NeedlePointer(
                    value: 25,
                    needleColor: Colors.black,
                    enableAnimation: true,
                    animationDuration: 2000,
                    animationType: AnimationType.elasticOut)
              ],
              axisLineStyle: AxisLineStyle(thickness: 15))
        ],
      ),
    );
  }

  _buildRadialMoneyMarket() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.15,
      margin: EdgeInsets.symmetric(vertical: 40),
      child: SfRadialGauge(
        axes: <RadialAxis>[
          RadialAxis(
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    angle: 90,
                    positionFactor: 0.7,
                    widget: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "-6.68%",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.blue[700],
                              fontSize: 12),
                        ),
                        Text(
                          "Sucorinvest Saham Dinamis",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.blue[700],
                              fontSize: 10),
                        ),
                      ],
                    ))
              ],
              showTicks: false,
              startAngle: 180,
              endAngle: 360,
              canScaleToFit: false,
              showLabels: false,
              pointers: <GaugePointer>[
                RangePointer(
                    cornerStyle: CornerStyle.bothCurve,
                    width: 15,
                    value: 25,
                    animationDuration: 2000,
                    enableAnimation: true,
                    animationType: AnimationType.elasticOut,
                    color: Colors.blue[700]),
                NeedlePointer(
                    value: 25,
                    needleColor: Colors.black,
                    enableAnimation: true,
                    animationDuration: 2000,
                    animationType: AnimationType.elasticOut)
              ],
              axisLineStyle: AxisLineStyle(thickness: 15))
        ],
      ),
    );
  }
}
