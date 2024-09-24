import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<StatefulWidget> createState() => _AccountpageState();
}

class _AccountpageState extends State {
  final TextEditingController _search = TextEditingController();
  int pageIndex = 0;

  Container customNavBar(BuildContext context) {
    return Container(
      height: 80,
      color: const Color.fromARGB(255, 0, 58, 157),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.white,
                          size: 30,
                        )
                      : const Icon(
                          Icons.home_filled,
                          color: Colors.blue,
                          size: 30,
                        )),
              const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  icon: pageIndex == 1
                      ? const Icon(
                          Icons.notification_add_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      : const Icon(
                          Icons.notification_add_rounded,
                          color: Colors.blue,
                          size: 30,
                        )),
              const Text(
                "Notification",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 2;
                    });
                  },
                  icon: pageIndex == 2
                      ? const Icon(
                          Icons.radio_button_on_sharp,
                          color: Colors.white,
                          size: 30,
                        )
                      : const Icon(
                          Icons.radio_button_on_sharp,
                          color: Colors.blue,
                          size: 30,
                        )),
              const Text(
                "Reminder",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      pageIndex = 3;
                    });
                  },
                  icon: pageIndex == 3
                      ? const Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                          size: 30,
                        )
                      : const Icon(
                          Icons.account_circle_rounded,
                          color: Colors.blue,
                          size: 30,
                        )),
              const Text(
                "Account",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          "Account List",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_rounded,
                color: Colors.white,
              ))
        ],
        flexibleSpace: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, 1],
                  begin: FractionalOffset(0, 0),
                  end: FractionalOffset(1, 0),
                  tileMode: TileMode.clamp,
                  colors: [
                    Color.fromARGB(255, 0, 58, 157),
                    Color.fromARGB(255, 57, 166, 255)
                  ])),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10, top: 20, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 2,
                        color: const Color.fromARGB(130, 208, 208, 208))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10),
                  child: TextField(
                    controller: _search,
                    cursorColor: Colors.black54,
                    decoration: const InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Search contact name",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 128, 128, 128),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                      suffixIcon: Icon(
                        Icons.search_rounded,
                        color: Color.fromARGB(255, 128, 128, 128),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(1, -1),
                                blurRadius: 5,
                                color: Color.fromARGB(143, 193, 193, 193),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, top: 10, bottom: 5),
                              child: Text(
                                "BrightLink",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue[600]),
                              ),
                            ),
                            const Divider(
                              //height: 10,
                              thickness: 3,
                              color: Color.fromARGB(118, 177, 177, 177),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text("2323"),
                                  Text("Reseller"),
                                  Text("9927314147")
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 58, 157),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: customNavBar(context),
    );
  }
}
