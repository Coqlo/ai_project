import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controllerMonth = TextEditingController();
  TextEditingController controllerGrade = TextEditingController();
  TextEditingController controllerCenterPressure = TextEditingController();
  TextEditingController controllerMaxWindSpeed = TextEditingController();
  TextEditingController controller50KTMajorAxisDirection = TextEditingController();
  TextEditingController controller50KTMajorAxisDiameter = TextEditingController();
  TextEditingController controller50KTMinorAxisDiameter = TextEditingController();
  TextEditingController controller30KTMajorAxisDirection = TextEditingController();
  TextEditingController controller30KTMajorAxisDiameter = TextEditingController();
  TextEditingController controller30KTMinorAxisDiameter = TextEditingController();

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _heigth = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          LayoutBuilder(
            builder: (context, contrain) {
              return Container(
                  width: _width,
                  height: _heigth,
                  padding: EdgeInsets.only(
                    left: _heigth * 0.01,
                    right: _heigth * 0.01,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(_heigth * 0.03),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: _heigth / 6,
                            child: Column(
                              children: [
                                Text(
                                  "Typhoon",
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: size.height * .06,
                                      color: Color(0xFF117FCD),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: _heigth * 0.02,
                                ),
                                Text(
                                  "AI Project",
                                  style: TextStyle(
                                      fontSize: _heigth * 0.03,
                                      color: Color(0xFF117FCD),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '*Please enter Month';
                                        }
                                        return null;
                                      },
                                      style: TextStyle(
                                          fontFamily: 'Varela',
                                          fontSize: _heigth * 0.025,
                                          color: Color(0xFF7ebafe)),
                                      controller: controllerMonth,
                                      obscureText: false,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                            fontFamily: 'Varela',
                                            fontSize: _heigth * 0.019),
                                        labelText: 'Month',
                                        labelStyle: TextStyle(
                                          fontFamily: 'Varela',
                                          color: Colors.grey,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.text_snippet_outlined,
                                          color: Color(0xFF7ebafe),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white30,
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                    SizedBox(
                                      height: _heigth * 0.009,
                                    ),
                                    TextFormField(
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return '*Please enter Grade';
                                        }
                                        return null;
                                      },
                                      style: TextStyle(
                                          fontFamily: 'Varela',
                                          fontSize: _heigth * 0.025,
                                          color: Color(0xFF7ebafe)),
                                      controller: controllerGrade,
                                      obscureText: false,
                                      textAlign: TextAlign.start,
                                      decoration: InputDecoration(
                                        errorStyle: TextStyle(
                                            fontFamily: 'Varela',
                                            fontSize: _heigth * 0.019),
                                        labelText: 'Grade',
                                        labelStyle: TextStyle(
                                          fontFamily: 'Varela',
                                          color: Colors.grey,
                                        ),
                                        prefixIcon: Icon(
                                          Icons.text_snippet_outlined,
                                          color: Color(0xFF7ebafe),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(25.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white30,
                                      ),
                                      keyboardType: TextInputType.text,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),

                          SizedBox(
                            height: _heigth * 0.009,
                          ),

                          SizedBox(
                            height: _heigth * 0.05,
                          ),
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: Color(0xFF117FCD),
                              ),
                              alignment: Alignment.center,
                              height: _heigth * 0.07,
                              width: _width*0.0001,
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                            onTap: () => {},
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
