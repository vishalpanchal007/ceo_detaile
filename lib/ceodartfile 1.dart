import 'package:ceo_10_1/ceodartfile%202.dart';
import 'package:flutter/material.dart';

class CEO extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CEOState();
  }
}

class CEOState extends State<CEO> {
  @override
  List<List<String>> image1 = [];

  void initState() {
    image1 = [
      [
        "https://logos-world.net/wp-content/uploads/2020/10/Tesla-Logo.png",
        "Tesla",
        "Elon Musk",
        "assets/elonmusk.jpg",
        "Tesla Inc (Tesla) is an automotive and energy company. It designs, develops, manufactures, sells, and leases electric vehicles and energy generation and storage systems. The company produces and sells the Model Y, Model 3, Model X, Model S, Cybertruck, Tesla Semi, and Tesla Roadster vehicles."
      ],
      [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx3I58lkfFwaypBIgRjr5oaQpHhpbrRIGobarl5IP1sYsfuD690yHJh3FeLMOVw4ePlYM&usqp=CAU",
        "Tata",
        "Guenter Butschek",
        "assets/guenterbutschek6.jpg",
        "Tata Group, privately owned conglomerate of nearly 100 companies encompassing several primary business sectors: chemicals, consumer products, energy, engineering, information systems, materials, and services. Headquarters are in Mumbai. Ratan Tata."
      ],
      [
        "https://media.idownloadblog.com/wp-content/uploads/2018/07/Apple-logo-black-and-white.png",
        "Apple",
        "Tim Cock",
        "assets/timcock.jpg",
        "The iPhone is a smartphone made by Apple that combines a computer, iPod, digital camera and cellular phone into one device with a touchscreen interface. The iPhone runs the iOS operating system, and in 2021 when the iPhone 13 was introduced, it offered up to 1 TB of storage and a 12-megapixel camera."
      ],
      [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png",
        "Google",
        "Sundar Pinch",
        "assets/sundarpinchai.jpg",
        "What Does Google Mean? Google is an internet search engine. It uses a proprietary algorithm that's designed to retrieve and order search results to provide the most relevant and dependable sources of data possible."
      ],
      [
        "https://1000logos.net/wp-content/uploads/2020/05/Wipro-logo.jpg",
        "Wipro",
        "Thierry Delaporte",
        "assets/Thierry Delaporte.jpg",
        "Wipro Limited (NYSE: WIT, BSE: 507685, NSE: WIPRO) is a leading technology services and consulting company focused on building innovative solutions that address clients' most complex digital transformation needs. OVER. 1,400. ACTIVE GLOBAL CLIENTS.",
      ],
      [
        "https://1000logos.net/wp-content/uploads/2020/08/Logo-Infosys.jpg",
        "Infosys",
        "Salil Parekh",
        "assets/Salil Parekh.jpg",
        "Infosys is a global leader in next-generation digital services and consulting. We enable clients in more than 50 countries to navigate their digital transformation."
      ],
      [
        "https://1000logos.net/wp-content/uploads/2017/03/LG-logo.png",
        "LG",
        "William Cho",
        "assets/William Cho.jpg",
        "LG Electronics, Inc. engages in the manufacturing of display devices, home appliances, multimedia goods, electronic parts and develops software. It operates through the following business areas: Home Entertainment, Mobile Communications, Home Appliance, Air-Conditioning, Energy Solution and Independent business area."
      ]
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('M N C   C E O s'),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey,
          child: SingleChildScrollView(
            child: Column(
              children: image1.map((e) {
                return InkWell(
                  onTap: () {
                    setState(() {});
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Man()));
                    e[0];
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 100,
                    width: 370,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [BoxShadow(blurRadius: 5)]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 80,
                              child: Center(
                                child: Image.network(
                                  e[0],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  alignment: Alignment.center,
                                  child: Text(
                                    e[1],
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20, top: 20),
                                  child: Text(
                                    e[2],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.grey,
                                    radius: 40,
                                    backgroundImage: AssetImage(e[3]),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
