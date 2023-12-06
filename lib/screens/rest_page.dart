import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:svg_flutter/svg.dart';

class RestPage extends StatefulWidget {
  const RestPage({super.key});

  @override
  State<RestPage> createState() => _RestPageState();
}

class _RestPageState extends State<RestPage> {
  Color backGroundColor = HexColor('#dde1e5');
  Color textColor = HexColor('#919eab');
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 12,top: 11),child:SvgPicture.asset('assets/Frame.svg'),),
                  SizedBox(height: MediaQuery.of(context).size.height*0.34,),
                 SizedBox(
                   height: MediaQuery.of(context).size.height*0.38,
                   child: Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SvgPicture.asset('assets/ic_round-lock-reset.svg'),
                           Text('Rest Password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: HexColor('#212B36')),),
                          Text('Enter the email address and well send you a code',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color:HexColor('#637381')),),
                         const SizedBox(height: 24,),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 16),
                           child: SizedBox(
                             height: 40,
                             width: 328,
                             child: TextField(
                               onChanged: (val){
                                 setState(() {
                                   backGroundColor = val.isEmpty?HexColor('#dde1e5'):HexColor('#3F4760');
                                   textColor = val.isEmpty?HexColor('#919eab'):HexColor('#FFFFFF');
                                 });
                               },
                               controller:controller,
                               decoration:  InputDecoration(
                                 labelText: 'Email',
                                 floatingLabelStyle:  TextStyle(color: HexColor("#212B36")),
                                 focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide:  BorderSide(color: HexColor("#3F4760"))),
                                 hintText: 'Email',
                                 enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Color.fromRGBO(145, 158, 171, 0.32),width: 1)),
                                 hintStyle:  TextStyle(fontSize:14,fontWeight: FontWeight.w400,color: HexColor("#919EAB")),
                               ),
                             ),
                           ),
                         ),
                         const SizedBox(height: 24,),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 16.0),
                           child: ElevatedButton(
                               onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(328, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),

                              ),
                              backgroundColor: backGroundColor,
                            ),
                               child:   Text('Submit',style: TextStyle(color: textColor,fontWeight: FontWeight.w700,fontSize: 14),),
                           ),
                         ),
                         const SizedBox(height: 8,),
                         TextButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           SvgPicture.asset('assets/ic_chevron_left.svg'),
                          const SizedBox(width: 8,),
                            Text('Return to Sign in',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700,color: HexColor('#3F4760')),)
                         ],)),

                       ],
                     ),
                   ),
                 ),
               SizedBox(height: MediaQuery.of(context).size.height*0.13,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Powered By ',style: TextStyle(color: HexColor('#637381')),),
                  Text('HOITEK.FI',style: TextStyle(color: HexColor('#7DD1C1'),decoration:TextDecoration.underline),),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
