import 'package:astrotak/model/astro_model.dart';
import 'package:astrotak/model/language_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AstrologerCard extends StatefulWidget {
  final AstroModel astroModel;
  AstrologerCard(this.astroModel);

  @override
  _AstrologerCardState createState() => _AstrologerCardState();
}
class _AstrologerCardState extends State<AstrologerCard> {
  String imageUrl = '';
  String firstLanguage ='English';
  String secondLanguage ='Hindi';

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageUrlFunc();


  }

  imageUrlFunc(){
    if (widget.astroModel.image.small.imageUrl == '')
    {imageUrl = widget.astroModel.image.medium.imageUrl;}
    else if (widget.astroModel.image.medium.imageUrl == '')
    {imageUrl = widget.astroModel.image.large.imageUrl;}
    else if (widget.astroModel.image.large.imageUrl == '')
    {imageUrl = widget.astroModel.image.small.imageUrl;}
  }
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
                    // color: Colors.red,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.astroModel.firstName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' ${widget.astroModel.lastName}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text(
                            '${widget.astroModel.skill.length >= 1 ? widget.astroModel.skill[0].name : ''},'
                            ' ${widget.astroModel.skill.length >= 2 ? widget.astroModel.skill[1].name : ''},'
                            ' ${widget.astroModel.skill.length >= 3 ? widget.astroModel.skill[2].name : ''},'
                            ' ${widget.astroModel.skill.length >= 4 ? widget.astroModel.skill[3].name : ''},'
                            ' ${widget.astroModel.skill.length >= 5 ? widget.astroModel.skill[4].name : ''},'
                            ' ${widget.astroModel.skill.length >= 6 ? widget.astroModel.skill[5].name : ''},'
                            ' ${widget.astroModel.skill.length >= 7 ? widget.astroModel.skill[6].name : ''},'
                            ' ${widget.astroModel.skill.length >= 8 ? widget.astroModel.skill[7].name : ''},'
                            ' ${widget.astroModel.skill.length >= 9 ? widget.astroModel.skill[8].name : ''},'
                            ' ${widget.astroModel.skill.length >= 10 ? widget.astroModel.skill[9].name : ''}'
                            ,style: TextStyle(color: Colors.grey[850]),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text('${widget.astroModel.languages[0].name.toString()},'
                              ' ${widget.astroModel.languages[1].name.toString()}'),
                          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                          Text(
                            '${widget.astroModel.additionalPerMinuteCharges.toInt()}₹/Min',
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
                  Text('${widget.astroModel.experience.toInt().toString()} Years'),
                ],
              ),
              Divider()
            ],
          ),
        ));
  }
}