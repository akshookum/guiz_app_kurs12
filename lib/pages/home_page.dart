import 'package:flutter/material.dart';
import 'package:guiz_app_kurs12/data/quiz_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool buutubu = false;
  void userdinjoobu(bool userdinJoobu) {
    final jooptor = quizData.joopAlypkel();
    if (userdinjoobu == jooptor) {
      iconcalar.add(
        Icon(
          Icons.close,
          size: 50,
          color: Colors.red,
        ),
      );
    } else {
      iconcalar.add(
        Icon(
          Icons.check,
          size: 50,
          color: Colors.green,
        ),
      );
    }
    quizData.otkoz();
    if (quizData.suroonuAlipKel() == '') {
      buutubu = true;
    }
    setState(() {});
  }

  List<Icon> iconcalar = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.78),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buutubu == true
                ? AlertDialog(
                    title: Text("Аягы"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            buutubu = false;
                            iconcalar = [];
                            quizData.kairabashta();
                            setState(() {});
                          },
                          child: const Text("Kaita bashta"))
                    ],
                  )
                : Text(
                    quizData.suroonuAlipKel(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                userdinjoobu(true);
              },
              child: Container(
                color: Color(0xff4CB050),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 100,
                    vertical: 10,
                  ),
                  child: Text(
                    'Туура',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                userdinjoobu(false);
              },
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 68, vertical: 10),
                  child: Text(
                    'Туура эмес',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Row(children: iconcalar)
          ],
        ),
      ),
    );
  }

  showAlert(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Аягы!"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
