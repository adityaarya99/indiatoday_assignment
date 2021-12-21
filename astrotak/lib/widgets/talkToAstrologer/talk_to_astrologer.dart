import 'dart:developer';

import 'package:astrotak/bloc/talk_astrologer/astrologer_bloc.dart';
import 'package:astrotak/model/astro_model.dart';
import 'package:astrotak/shared/empty_screen.dart';
import 'package:astrotak/widgets/talkToAstrologer/astrologer_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TalkToAstrologer extends StatefulWidget {
  const TalkToAstrologer({Key? key}) : super(key: key);

  @override
  _TalkToAstrologerState createState() => _TalkToAstrologerState();
}

class _TalkToAstrologerState extends State<TalkToAstrologer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AstroBloc, AstroState>(
      builder: (BuildContext context,AstroState state) {
        if(state is AstroInitial){
          BlocProvider.of<AstroBloc>(context).add(FetchAstroData());
        }
        if(state.entries!= null){
          log("entries: ${state.entries!.length}");
          return _buildBody(context, state);
        }
        return EmptyScreen();
      });
  }
   _buildBody(BuildContext context, AstroState state) {
     return CupertinoPageScaffold(
         child: Center(
           child: Container(
             height: double.infinity,
             width: MediaQuery.of(context).size.width * .95,
             child: Column(
               children: [
                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.01,
                 ),
                 ///Talk to an Astrologer
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     const Text(
                       'Talk to an Astrologer',
                       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset('assets/images/search.png', width: 27),

                         SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                         Image.asset('assets/images/filter.png', width: 27),

                         SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                         Image.asset('assets/images/sort.png', width: 27)
                       ],
                     ),
                   ],
                 ),


                 SizedBox(
                   height: MediaQuery.of(context).size.height * 0.01,
                 ),

                 ///ASTROLOGERS LIST
                 _buildList(state.entries!, context)
               ],
             ),
           ),
         ));
  }

  _buildList(List<AstroModel> entries,BuildContext context){
    var count = entries.length;
    return Expanded(
      child: ListView.builder(
        itemCount: count,
        itemBuilder: (context, index) {
          return AstrologerCard(entries[index]);
        },
      ),
    );
  }

}
