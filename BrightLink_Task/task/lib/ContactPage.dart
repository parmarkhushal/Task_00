import 'package:flutter/material.dart';

class Contactpage extends StatefulWidget {
  const Contactpage({super.key});

  @override
  State<StatefulWidget> createState() => _ContactpageState();
}

class _ContactpageState extends State {
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
          "Contact List",
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
            SizedBox(
                height: 600,
                child: ListView(children: [
                  Padding(
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 10, top: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Account Name",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Umme abiha zaidi",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Department",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Technical",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: 1,
                                  height: 75,
                                  color:
                                      const Color.fromARGB(223, 177, 177, 177),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/gmail_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Mail",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/call_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "9389134538",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 10, top: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Account Name",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Umme abiha zaidi",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Department",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Technical",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: 1,
                                  height: 75,
                                  color:
                                      const Color.fromARGB(223, 177, 177, 177),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/gmail_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Mail",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/call_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "9389134538",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 10, top: 10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Account Name",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Umme abiha zaidi",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Department",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 128, 128, 128),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Technical",
                                      style: TextStyle(
                                          color: Colors.blue[600],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: 1,
                                  height: 75,
                                  color:
                                      const Color.fromARGB(223, 177, 177, 177),
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/gmail_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Mail",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/call_icon.png",
                                          scale: 2,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "9389134538",
                                          style: TextStyle(
                                              color: Colors.blue[600],
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]))
          ],
        ),
      ),
      bottomNavigationBar: customNavBar(context),
    );
  }
}
