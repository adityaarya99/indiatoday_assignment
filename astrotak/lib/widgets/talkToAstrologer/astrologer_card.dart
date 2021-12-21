import 'package:astrotak/model/astro_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AstrologerCard extends StatefulWidget {
  final AstroModel astroModel;
  AstrologerCard(this.astroModel);

  @override
  _AstrologerCardState createState() => _AstrologerCardState();
}
class _AstrologerCardState extends State<AstrologerCard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Container(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.astroModel.firstName,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text(
                            'Coffee Cup Reading, Falut Jyotish,'
                                'Kundali Grah Dosh,Vastu,'
                                'Astrology, Vedic Astrology,'
                                'Palmistry Numerology, Face '
                                'Reading, Tarot',
                            style: TextStyle(color: Colors.grey[850]),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text('English,Hindi'),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text(
                            '100/ Min',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton.icon(
                              icon: const Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 25.0,
                              ),
                              label: Text('Talk on Call'),
                              onPressed: () {
                                print('Button Pressed');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Text('25 Years'),
                ],
              ),
              Divider()
            ],
          ),
        ));
  }
}