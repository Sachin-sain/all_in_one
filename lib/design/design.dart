import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Design extends StatelessWidget {
  const Design({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
        backgroundColor: const Color(0xff15171C),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(15.0),
          child: AppBar(
            backgroundColor: const Color(0xff15171C),
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Color((0xff15171C)),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xff393c44),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xff393c44),
                                border: Border.all(
                                  color: Colors.red,
                                ),
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Image.asset(
                              'assets/images/Ganpti.png',
                              scale: 1,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Text(
                            "God Ganesh",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          const Expanded(
                            child: Icon(
                              Icons.navigate_next,
                              color: Colors.red,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.notifications_none_rounded,
                        color: Colors.white, size: 30),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xff393c44),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(Icons.document_scanner_rounded,
                            color: Colors.white, size: 30)),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "TOTAL BALANCE",
                          style: TextStyle(
                            color: Color(0xff393c44),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "\$13,1370.96",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                  color: const Color(0xff393c44),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.currency_exchange,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "\$39.44",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            const Text("Cashback Saved ",
                                style: TextStyle(
                                  color: Color(0xff393c44),
                                )),
                            const Icon(
                              Icons.navigate_next,
                              color: Color(0xff393c44),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: 25.0,
                            left: -15.0,
                            right: -20.0,
                            child: Container(
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              height: 100,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.zero),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.zero,
                            height: 150,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.zero),
                                gradient: LinearGradient(colors: [
                                  Colors.redAccent,
                                  Colors.pinkAccent,
                                  Colors.deepOrange
                                ])),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Icon(
                                    Icons.bubble_chart_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "** 9567",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 180,
                      width: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xff393c44),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color(0xff696a6c),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Icon(
                                Icons.wallet,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "TOTAL OPERATIONS",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Expenses in Dec, 2023",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "\$2,186.53",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const ColorCombination(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color(0xff393c44),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xff696a6c),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "CONSUMER LOAN",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                "-\$6,496.00",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 30,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Text(
                                  'Next payment in 6 day',
                                  maxLines: 2,
                                  style: TextStyle(color: Colors.green),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff393c44),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "QUICK MONEY TRANSFER",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "SEE MORE >",
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff696a6c),
                                  ),
                                  child: const Text(
                                    "SB",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    // borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff696a6c),
                                  ),
                                  child: const Text(
                                    "SB",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    // borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff696a6c),
                                  ),
                                  child: const Text(
                                    "BS",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    // borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              width: 5,
                            ),
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff696a6c),
                                  ),
                                  child: const Text(
                                    "DS",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                    // borderRadius: BorderRadius.circular(10)
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff696a6c),
                              ),
                              child: const Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                ListView.builder(
                  clipBehavior: Clip.hardEdge,
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                    itemBuilder: (BuildContext context, int index){
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff393c44),
                      ),
                      child: const Column(
                        children: [
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "EXCHANGE RATE",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "SEE MORE >",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,), Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5,),
                              Text("data",style:TextStyle(color: Colors.white) ,),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              Text("data",style:TextStyle(color: Colors.white)),
                              SizedBox(width: 5,),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],
                      ),
                    );
                    })
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          selectedLabelStyle: const TextStyle(color: Colors.white),
          unselectedLabelStyle: const TextStyle(color: Colors.red),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                label: "Home",
                backgroundColor: Color(0xff15171C)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wallet,
                  color: Color(0xff393c44),
                ),
                label: 'wallet'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_chart,
                  color: Color(0xff393c44),
                ),
                label: 'chart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.messenger_outline,
                  color: Color(0xff393c44),
                ),
                label: 'message'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.alarm,
                  color: Color(0xff393c44),
                ),
                label: 'clock'),
          ],
        ),
      ),
    );
  }
}

class ColorCombination extends StatelessWidget {
  const ColorCombination({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(4)),
        ),
        Container(
          height: 10,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.deepPurpleAccent,
          ),
        ),
        Container(
          height: 10,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.blueAccent,
          ),
        ),
        Container(
          height: 10,
          width: 20,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(4)),
        ),
      ],
    );
  }
}
