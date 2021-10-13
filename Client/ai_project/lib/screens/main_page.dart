// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sweetalert/sweetalert.dart';


class MainPage extends StatefulWidget {
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
  doing() {
    if (_formKey.currentState.validate()) {
      String month_string = controllerMonth.text;
      String grade_string = controllerGrade.text;
      String center_pressure_string = controllerCenterPressure.text;
      String max_wind_speed_string = controllerMaxWindSpeed.text;
      String fifty_major_direction_string = controller50KTMajorAxisDirection.text;
      String fifty_major_diameter_string = controller50KTMajorAxisDiameter.text;
      String fifty_minor_diameter_string = controller50KTMinorAxisDiameter.text;
      String thirty_major_direction_string = controller30KTMajorAxisDirection.text;
      String thirty_major_diameter_string = controller30KTMajorAxisDiameter.text;
      String thirty_minor_diameter_string = controller30KTMinorAxisDiameter.text;

      var month = double.parse(month_string);
      var grade = double.parse(grade_string);
      var center_pressure = double.parse(center_pressure_string);
      var max_wind_speed = double.parse(max_wind_speed_string);
      var fifty_major_direction = double.parse(fifty_major_direction_string);
      var fifty_major_diameter = double.parse(fifty_major_diameter_string);
      var fifty_minor_diameter = double.parse(fifty_minor_diameter_string);
      var thirty_major_direction = double.parse(thirty_major_direction_string);
      var thirty_major_diameter = double.parse(thirty_major_diameter_string);
      var thirty_minor_diameter = double.parse(thirty_minor_diameter_string);

      var Monthint = double.parse(month_string);
      var Hourint = double.parse(grade_string);
      var Gradeint = double.parse(grade_string);
      var Centerpressureint = double.parse(center_pressure_string);
      var Windmaxspeedint = double.parse(max_wind_speed_string);
      var fiftyktmajoraxisdirectionint = double.parse(fifty_major_direction_string);
      var fiftyktmajoraxisdiameterint = double.parse(fifty_major_diameter_string);
      var fiftyktminoraxisdiameterint = double.parse(fifty_minor_diameter_string);
      var thirtyktmajoraxisdirectionint = double.parse(thirty_major_direction_string);
      var thirtyktmajoraxisdiameterint = double.parse(thirty_major_diameter_string);
      var thirtyktminoraxisdiameterint = double.parse(thirty_minor_diameter_string);
      int sum = 0;


      if(thirtyktmajoraxisdiameterint<=15){
        SweetAlert.show(
          context,
          title: "No Landing",
          subtitle: "ไม่ขึ้นฝั่ง",
          style: SweetAlertStyle.error,
        );
      }else{
        if(thirtyktmajoraxisdirectionint<=3.5){
          if(thirtyktmajoraxisdirectionint<=2.5){
            if(fiftyktmajoraxisdiameterint<=105){
              if(Monthint<=6){
                SweetAlert.show(
                  context,
                  title: "No Landing",
                  subtitle: "ไม่ขึ้นฝั่ง",
                  style: SweetAlertStyle.error,
                );

              }else{
                if(Centerpressureint<=957.5){
                  if(Monthint<=8.5){
                    SweetAlert.show(
                      context,
                      title: "No Landing",
                      subtitle: "ไม่ขึ้นฝั่ง",
                      style: SweetAlertStyle.error,
                    );

                  }else{
                    if(fiftyktmajoraxisdiameterint<=70){
                      SweetAlert.show(
                        context,
                        title: "No Landing",
                        subtitle: "ไม่ขึ้นฝั่ง",
                        style: SweetAlertStyle.error,
                      );
                    }else{
                      if(fiftyktminoraxisdiameterint<=95){
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }else{
                        SweetAlert.show(
                          context,
                          title: "No Landing",
                          subtitle: "ไม่ขึ้นฝั่ง",
                          style: SweetAlertStyle.error,
                        );
                      }
                    }
                  }

                }else{
                  if(fiftyktmajoraxisdirectionint<=1.5){
                    if(thirtyktminoraxisdiameterint<=35){
                      SweetAlert.show(
                        context,
                        title: "Landing",
                        subtitle: "ขึ้นฝั่ง",
                        style: SweetAlertStyle.success,
                      );
                    }else{
                      if(thirtyktmajoraxisdiameterint<=135){
                        if(Centerpressureint<=1000){
                          SweetAlert.show(
                            context,
                            title: "No Landing",
                            subtitle: "ไม่ขึ้นฝั่ง",
                            style: SweetAlertStyle.error,
                          );

                        }else{
                          if(thirtyktmajoraxisdiameterint<=110){
                            SweetAlert.show(
                              context,
                              title: "No Landing",
                              subtitle: "ไม่ขึ้นฝั่ง",
                              style: SweetAlertStyle.error,
                            );
                          }else{
                            SweetAlert.show(
                              context,
                              title: "Landing",
                              subtitle: "ขึ้นฝั่ง",
                              style: SweetAlertStyle.success,
                            );
                          }
                        }

                      }else{
                        if(thirtyktmajoraxisdiameterint<=215){
                          SweetAlert.show(
                            context,
                            title: "Landing",
                            subtitle: "ขึ้นฝั่ง",
                            style: SweetAlertStyle.success,
                          );

                        }else{
                          if(Windmaxspeedint<=42.5){
                            SweetAlert.show(
                              context,
                              title: "No Landing",
                              subtitle: "ไม่ขึ้นฝั่ง",
                              style: SweetAlertStyle.error,
                            );
                          }else{
                            if(Windmaxspeedint<=47.5){
                              SweetAlert.show(
                                context,
                                title: "Landing",
                                subtitle: "ขึ้นฝั่ง",
                                style: SweetAlertStyle.success,
                              );
                            }else{
                              if(thirtyktmajoraxisdiameterint<=255){
                                SweetAlert.show(
                                  context,
                                  title: "No Landing",
                                  subtitle: "ไม่ขึ้นฝั่ง",
                                  style: SweetAlertStyle.error,
                                );
                              }else{
                                if(Centerpressureint<=979.5){
                                  if(fiftyktmajoraxisdiameterint<=50){
                                    SweetAlert.show(
                                      context,
                                      title: "No Landing",
                                      subtitle: "ไม่ขึ้นฝั่ง",
                                      style: SweetAlertStyle.error,
                                    );

                                  }else{
                                    SweetAlert.show(
                                      context,
                                      title: "No Landing",
                                      subtitle: "ไม่ขึ้นฝั่ง",
                                      style: SweetAlertStyle.error,
                                    );
                                  }
                                }else{
                                  SweetAlert.show(
                                    context,
                                    title: "Landing",
                                    subtitle: "ขึ้นฝั่ง",
                                    style: SweetAlertStyle.success,
                                  );
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                  }else{
                    if(thirtyktminoraxisdiameterint<=205){
                      if(Centerpressureint<=967.5){
                        if(fiftyktmajoraxisdiameterint<=70){
                          SweetAlert.show(
                            context,
                            title: "No Landing",
                            subtitle: "ไม่ขึ้นฝั่ง",
                            style: SweetAlertStyle.error,
                          );
                        }else{
                          SweetAlert.show(
                            context,
                            title: "Landing",
                            subtitle: "ขึ้นฝั่ง",
                            style: SweetAlertStyle.success,
                          );
                        }

                      }else{
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }

                    }else{
                      SweetAlert.show(
                        context,
                        title: "No Landing",
                        subtitle: "ไม่ขึ้นฝั่ง",
                        style: SweetAlertStyle.error,
                      );
                    }
                  }
                }
              }

            }else{
              SweetAlert.show(
                context,
                title: "Landing",
                subtitle: "ขึ้นฝั่ง",
                style: SweetAlertStyle.success,
              );
            }
          }else{
            if(Centerpressureint<=937.5){
              SweetAlert.show(
                context,
                title: "No Landing",
                subtitle: "ไม่ขึ้นฝั่ง",
                style: SweetAlertStyle.error,
              );

            }else{
              if(thirtyktmajoraxisdiameterint<=55){
                SweetAlert.show(
                  context,
                  title: "No Landing",
                  subtitle: "ไม่ขึ้นฝั่ง",
                  style: SweetAlertStyle.error,
                );
              }else{
                if(thirtyktmajoraxisdiameterint<=230){
                  SweetAlert.show(
                    context,
                    title: "Landing",
                    subtitle: "ขึ้นฝั่ง",
                    style: SweetAlertStyle.success,
                  );

                }else{
                  if(thirtyktmajoraxisdiameterint<=290){
                    if(thirtyktminoraxisdiameterint<=110){
                      SweetAlert.show(
                        context,
                        title: "No Landing",
                        subtitle: "ไม่ขึ้นฝั่ง",
                        style: SweetAlertStyle.error,
                      );
                    }else{
                      if(Centerpressureint<=966.5){
                        if(thirtyktminoraxisdiameterint<=165){
                          SweetAlert.show(
                            context,
                            title: "No Landing",
                            subtitle: "ไม่ขึ้นฝั่ง",
                            style: SweetAlertStyle.error,
                          );
                        }else{
                          if(Windmaxspeedint<=72.5){
                            SweetAlert.show(
                              context,
                              title: "Landing",
                              subtitle: "ขึ้นฝั่ง",
                              style: SweetAlertStyle.success,
                            );
                          }else{
                            SweetAlert.show(
                              context,
                              title: "No Landing",
                              subtitle: "ไม่ขึ้นฝั่ง",
                              style: SweetAlertStyle.error,
                            );
                          }
                        }

                      }else{
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }
                    }

                  }else{
                    if(Windmaxspeedint<=37.5){
                      SweetAlert.show(
                        context,
                        title: "No Landing",
                        subtitle: "ไม่ขึ้นฝั่ง",
                        style: SweetAlertStyle.error,
                      );
                    }else{
                      SweetAlert.show(
                        context,
                        title: "Landing",
                        subtitle: "ขึ้นฝั่ง",
                        style: SweetAlertStyle.success,
                      );
                    }
                  }
                }
              }
            }
          }


        }else{
          if(fiftyktmajoraxisdiameterint<=125){
            if(Monthint<=9.5){
              if(Monthint<=6.5){
                SweetAlert.show(
                  context,
                  title: "No Landing",
                  subtitle: "ไม่ขึ้นฝั่ง",
                  style: SweetAlertStyle.error,
                );
              }else{
                if(fiftyktminoraxisdiameterint<=37.5){
                  if(Centerpressureint<=987.5){
                    SweetAlert.show(
                      context,
                      title: "Landing",
                      subtitle: "ขึ้นฝั่ง",
                      style: SweetAlertStyle.success,
                    );
                  }else{
                    if(thirtyktmajoraxisdiameterint<=165){
                      if(thirtyktmajoraxisdiameterint<=40){
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }else{
                        if(Monthint<=7.5){
                          if(Windmaxspeedint<=37.5){
                            SweetAlert.show(
                              context,
                              title: "Landing",
                              subtitle: "ขึ้นฝั่ง",
                              style: SweetAlertStyle.success,
                            );

                          }else{
                            SweetAlert.show(
                              context,
                              title: "No Landing",
                              subtitle: "ไม่ขึ้นฝั่ง",
                              style: SweetAlertStyle.error,
                            );
                          }

                        }else{
                          SweetAlert.show(
                            context,
                            title: "No Landing",
                            subtitle: "ไม่ขึ้นฝั่ง",
                            style: SweetAlertStyle.error,
                          );
                        }
                      }

                    }else{
                      if(Centerpressureint<=993){
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }else{
                        SweetAlert.show(
                          context,
                          title: "No Landing",
                          subtitle: "ไม่ขึ้นฝั่ง",
                          style: SweetAlertStyle.error,
                        );

                      }
                    }
                  }

                }else{
                  if(fiftyktmajoraxisdiameterint<=55){
                    SweetAlert.show(
                      context,
                      title: "No Landing",
                      subtitle: "ไม่ขึ้นฝั่ง",
                      style: SweetAlertStyle.error,
                    );
                  }else{
                    if(fiftyktminoraxisdiameterint<=65){
                      if(fiftyktminoraxisdiameterint<=45){
                        SweetAlert.show(
                          context,
                          title: "No Landing",
                          subtitle: "ไม่ขึ้นฝั่ง",
                          style: SweetAlertStyle.error,
                        );
                      }else
                      {
                        SweetAlert.show(
                          context,
                          title: "Landing",
                          subtitle: "ขึ้นฝั่ง",
                          style: SweetAlertStyle.success,
                        );
                      }


                    }else{
                      if(thirtyktmajoraxisdirectionint<=8.5){
                        SweetAlert.show(
                          context,
                          title: "No Landing",
                          subtitle: "ไม่ขึ้นฝั่ง",
                          style: SweetAlertStyle.error,
                        );
                      }else{
                        if(thirtyktminoraxisdiameterint<=145){
                          SweetAlert.show(
                            context,
                            title: "No Landing",
                            subtitle: "ไม่ขึ้นฝั่ง",
                            style: SweetAlertStyle.error,
                          );
                        }else{
                          if(Centerpressureint<=967.5){
                            SweetAlert.show(
                              context,
                              title: "Landing",
                              subtitle: "ขึ้นฝั่ง",
                              style: SweetAlertStyle.success,
                            );
                          }else{
                            if(Centerpressureint<=980){
                              SweetAlert.show(
                                context,
                                title: "No Landing",
                                subtitle: "ไม่ขึ้นฝั่ง",
                                style: SweetAlertStyle.error,
                              );
                            }else{
                              SweetAlert.show(
                                context,
                                title: "Landing",
                                subtitle: "ขึ้นฝั่ง",
                                style: SweetAlertStyle.success,
                              );
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

            }else{
              if(thirtyktmajoraxisdiameterint<=255){
                SweetAlert.show(
                  context,
                  title: "No Landing",
                  subtitle: "ไม่ขึ้นฝั่ง",
                  style: SweetAlertStyle.error,
                );

              }else{
                if(Windmaxspeedint<=57.5){
                  SweetAlert.show(
                    context,
                    title: "No Landing",
                    subtitle: "ไม่ขึ้นฝั่ง",
                    style: SweetAlertStyle.error,
                  );
                }else{
                  SweetAlert.show(
                    context,
                    title: "Landing",
                    subtitle: "ขึ้นฝั่ง",
                    style: SweetAlertStyle.success,
                  );
                }
              }
            }

          }else{
            SweetAlert.show(
              context,
              title: "Landing",
              subtitle: "ขึ้นฝั่ง",
              style: SweetAlertStyle.success,
            );
          }
        }
      }


    }
  }


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
                    left: _heigth *0.5,
                    right: _heigth * 0.5,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(_heigth * 0.03),
                    child: Form(
                      key: _formKey,
                      child: ListView(
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              SizedBox(
                                height: _heigth * 0.009,
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '*Please enter Center Pressure';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controllerCenterPressure,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: 'Center Pressure',
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
                                    return '*Please enter Max Wind Speed';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controllerMaxWindSpeed,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: 'Max Wind Speed',
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
                                    return '*Please enter 50KT Major Axis Direction';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller50KTMajorAxisDirection,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '50KT Major Axis Direction',
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
                                    return '*Please enter 50KT Major Axis Diameter';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller50KTMajorAxisDiameter,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '50KT Major Axis Diameter',
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
                                    return '*Please enter 50KT Minor Axis Diameter';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller50KTMinorAxisDiameter,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '50KT Minor Axis Diameter',
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
                                    return '*Please enter 30KT Major Axis Direction';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller30KTMajorAxisDirection,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '30KT Major Axis Direction',
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
                                    return '*Please enter 30KT Major Axis Diameter';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller30KTMajorAxisDiameter,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '30KT Major Axis Diameter',
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
                                    return '*Please enter 30KT Minor Axis Diameter';
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: _heigth * 0.025,
                                    color: Color(0xFF7ebafe)),
                                controller: controller30KTMinorAxisDiameter,
                                obscureText: false,
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                      fontFamily: 'Varela',
                                      fontSize: _heigth * 0.019),
                                  labelText: '30KT Minor Axis Diameter',
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
                              width: _width/5,
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontFamily: 'Varela',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                            onTap: () => {doing()},
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
