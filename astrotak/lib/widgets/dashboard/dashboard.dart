import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  TextEditingController _locationCtrl = TextEditingController();
  TextEditingController _dateCtrl = TextEditingController();
  Color boxColor = Color(0xfffae3db);
  DateTime selectedDate = DateTime.now();

  @override
  void initState() {
    _locationCtrl.text = 'Delhi, India';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * .92,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                ///Daily Panchang
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    const Text(
                      'Daily Panchang',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                const Text(
                  'India is a country known for its festival but knowing the exact'
                  'dates can sometimes be difficult. To ensure vou do not miss out'
                  'on the critical dates we bring you the daily panchang',
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),

                ///CARD
                Card(
                  child: Column(
                    children: [
                      ///DATE & LOCATION
                      Container(
                        color: boxColor,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .18,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ///DATE FIELD
                                Text(
                                  'Date: ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    print('Calender');
                                    _selectDate(context);
                                  },
                                  child: Container(
                                    color: Colors.white,
                                    width: MediaQuery.of(context).size.width * .6,
                                    child: TextField(
                                      readOnly: true,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(Icons.arrow_drop_down_outlined),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ],
                            ),

                            ///LOCATION FIELD
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Location: ',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.01,
                                ),
                                Container(
                                  color: Colors.white,
                                  width: MediaQuery.of(context).size.width * .6,
                                  child: TextField(
                                    controller: _locationCtrl,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      ///SunSet-SunRise-MoonSet-MoonRise
                      Container(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                  width: 1,
                                  height: 20,
                                  color: Colors.grey,
                                  child: VerticalDivider()),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_balance_outlined),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Sunrise',
                                            style: TextStyle(
                                                color: Colors.blueAccent),
                                          ),
                                          Text(
                                            '07:07 AM',
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width: 1,
                                  height: 20,
                                  color: Colors.grey,
                                  child: VerticalDivider()),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_balance_outlined),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Sunset',
                                            style: TextStyle(
                                                color: Colors.blueAccent),
                                          ),
                                          Text(
                                            '05:26 PM',
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width: 1,
                                  height: 20,
                                  color: Colors.grey,
                                  child: VerticalDivider()),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_balance_outlined),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Mooneise',
                                            style: TextStyle(
                                                color: Colors.blueAccent),
                                          ),
                                          Text(
                                            '04:05 PM',
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                  width: 1,
                                  height: 20,
                                  color: Colors.grey,
                                  child: VerticalDivider()),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_balance_outlined),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Moonset',
                                            style: TextStyle(
                                                color: Colors.blueAccent),
                                          ),
                                          Text(
                                            '05:22 AM',
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Tithi',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                ///TITHI
                Column(
                  children: [
                    ///Tithi Number
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Tithi Number:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            '13',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Tithi Name
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Tithi Name:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Shukla Trayodashi',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Special
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Special:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Jaya Tithi',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Summary
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Summary:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Auspicious day to start important businesses, wearing new clothes fulfilment of promises and sensual pleasures.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Deity:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Deity:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Cupid',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'End Time:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            '4 hr 42 min 15 sec',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Nakshatra',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                ///NAKSHATRA
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Column(
                  children: [
                    ///Tithi Number
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Nakshatra Number:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Tithi Name
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Nakshatra Name:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Krittika',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Special
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Ruler:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Sun',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Deity:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Deity:',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Agni',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),

                    ///Summary
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Summary',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'Auspicious day to start important businesses, wearing new clothes fulfilment of promises and sensual pleasures.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            'End Time•',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: Text(
                            '4 hr 42 min 15 sec',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

   _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1999),
      lastDate: DateTime(2041),
    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }
}
