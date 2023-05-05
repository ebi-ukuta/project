import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';


class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(

            children: <Widget>[
              Row(
                  children: <Widget>[
                    //the first container inside the top container

                    Container(
                      color: Colors.white,
                      width: 139,
                      margin: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
                      child: Image.asset(
                          'images/commerce.png'),
                    ),
                    const SizedBox(width: 18,),
                    //Expanded(child: SizedBox.shrink(),
                    //flex: 1,


                    //the second container inside the top container

                    Container(
                      width: 77,
                      height: 21,
                      //color: Colors.green,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.pinkAccent,
                            onPrimary: Colors.white,
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                          ),
                          child: const Text(
                            'Agent',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.brown,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 96,
                    ),

                    //the third container inside the top container

                    Container(
                      //margin: EdgeInsets.only(left: 18),
                      child: const Icon(
                        Icons.menu_sharp,
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      width: 30,
                      height: 14,
                    ),
                  ]
              ),

              const SizedBox(height: 25,),

              Container(
                margin: const EdgeInsets.only(left: 18, right: 18),
                height: 153,
                width: 339,
                child: Card(
                  color: const Color(0xFF135B79),
                  child:
                  Row(
                    children: [
                      Container( child: const Icon(
                        Icons.add_business_sharp,
                        color: Color(0XFFFCFCFC),
                      ),
                        margin: const EdgeInsets.only(left: 18, bottom: 75, top: 32),
                        height: 46,
                        width: 46,
                        color: const Color(0XFF5C9AB3),
                      ),
                      const SizedBox(
                        width: 18,
                      ),

                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: const [
                              Text('Paragraph Limited',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFFFFFFFF),
                                  fontSize: 18,
                                ),),
                            ],
                          ),

                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 32, left: 6),
                                width: 122,
                                height: 21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(11),
                                  color: const Color(0XFFD0F0FD),
                                ),


                                child: const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Text(
                                    'Informal sector',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF335F71),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),

                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 20, left: 6),
                            child: const Text('ID: MCI-23-02-00001',style: TextStyle(
                              color: Color(0XFFD0F0FD),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),),
                          ),
                        ],

                      ),
                    ],
                  ),
                ),
              ),
              //const SizedBox(height: 20,),

              SizedBox(
                height: 59,
                width: 339,
                child: Row(
                  children: <Widget>[
                     Container(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 12, right: 12,top: 4, bottom: 4),
                        child: Text(
                          'General Information',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF186F93),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 24),
                      width: 154,
                      height: 27,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1,
                            style: BorderStyle.solid
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Text(
                      'Applications',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF646A86),
                        fontSize: 13,
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Address',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7A809B),
                            fontSize: 13,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('14 Ogboko Street, Mgbuoba',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),
                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Obi-Akpor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),
                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 16,),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('L.G.A',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7A809B),
                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Obi-Akpor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),
                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 16,),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Ward',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7A809B),                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Obi-Akpor',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),
                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 16,),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Phone',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7A809B),                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('08012345678',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 16,),

                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('Email',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF7A809B),                            fontSize: 16,
                          ),),),
                    ],
                  ),
                  const SizedBox(height: 6,),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 64),
                        child: const Text('08012345678',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF374072),                            fontSize: 16,
                          ),),),
                    ],
                  ),
                ],

              ),



            ],

          ),),),
    );
  }
}
/*   Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12,top: 4, bottom: 4),
                        child: Text(
                          'General Information',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 24),
                      width: 154,
                      height: 27,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1,
                          style: BorderStyle.solid
                        ),
                      ),
                    ),*/