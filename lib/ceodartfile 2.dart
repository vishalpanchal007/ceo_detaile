import 'package:flutter/material.dart';

class Man extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ManState();
  }
}

class ManState extends State<Man> {
  @override
  List<List<String>> list = [
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Detail Page",
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: list.map((e) {
          return Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: CircleAvatar(
                    maxRadius: 80,
                    minRadius: 50,
                    backgroundImage: AssetImage(e[3]),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 170,
                      margin: const EdgeInsets.only(top: 60, left: 20),
                      child: Text(
                        e[2],
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        "CEO",
                        style: TextStyle(
                            fontSize: 30, color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10),
                  child: const Text(
                    "Company Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 150,
                    width: 150,
                    margin: const EdgeInsets.only(top: 30),
                    child: Image.network(e[0])),
                Container(
                  height: 150,
                  width: 150,
                  margin: const EdgeInsets.only(top: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    e[1],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10),
                  child: const Text(
                    "Company Description",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 10),
                    child: Text(
                      e[4],
                      maxLines: 10,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ]);
          // ),
        }).toList()),
      ),
    );
  }
}
