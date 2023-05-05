import 'package:flutter/material.dart';
import 'package:project/bottom_navigation_bar.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
  //this line of code defines a Stateful Widget that uses the SecondPage widget and creates an instance of its associated state object _SecondPageState using the createState() method.
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: const BottomNavBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //container that holds the three row widgets
              Row(
                  children: <Widget>[
                    //the first container inside the top container

                    Container(
                      //#FFFFFF
                      color: const Color(0xffFFFFFF),
                      width: 139,
                      margin: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
                      child: Opacity(
                        opacity: 1,
                        child: Image.asset(
                            'images/commerce.png'),
                      ),
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
                            //#FFDCE5
                            primary: Color(0xffFFDCE5),
                            //color: Color(0xffFFFFFF),
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          child: const Opacity(
                            opacity: 1,
                            child: Text(
                              'Agent',
                              style: TextStyle(
                                fontFamily: 'Avenir Next',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff531423),
                                fontSize: 13,
                              ),
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
                      margin: const EdgeInsets.only(left: 18),
                      child: const Opacity(
                        opacity: 1,
                        child: Icon(
                          Icons.menu_sharp,
                          color: Colors.black,
                        ),
                      ),
                      color: Colors.white,
                      width: 30,
                      height: 14,
                    ),
                  ]
              ),

              const SizedBox(
                height: 32,
              ),



              //second layer
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Container(
                        margin: const EdgeInsets.only(left: 36,),
                        child: const Text(
                          'DASHBOARD',
                          style: TextStyle(
                          fontFamily: 'Avenir Next Medium',
                          fontWeight: FontWeight.bold,
                          //#7C8191
                          color: Color(0xff7C8191),

                          fontSize: 10,
                        ),),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 36),
                        child: const Text(
                          'Overview',
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 18,
                        ),),
                      ),],),
                  const SizedBox(width: 104),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.only(left: 32),
                      child: ElevatedButton(
                        child: const Text('+ Business Place'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff186F93),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25,),
              //third layer
              Card(
                margin: const EdgeInsets.only(left: 32, right: 24),
                //elevation: 0,
                child: Container(
                  width: 411.4,
                  height: 196,
                  color: const Color(0xffE7F0F4),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                            children: <Widget>[
                              const Text(
                                'Revenue',
                                style: TextStyle(
                                  //
                                  color: Color(0xff186F93),
                                  fontSize: 19, fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 130,),

                              Container(
                                width: 75,
                                height: 28,
                                margin: const EdgeInsets.only(left: 12, top: 21, right: 24,bottom: 20),//24
                                decoration: const BoxDecoration(
                                  color: Color(0xff319DC9),
                                ),

                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0, right: 2),
                                        child: Row(
                                          children: const <Widget>[
                                            Text('Today',
                                              style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 15, fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Icon(Icons.keyboard_arrow_down,
                                              color: Color(0xffFFFFFF),),
                                          ],
                                        ),
                                      ),
                              ),
                            ],
                          ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.currency_bitcoin,size: 28,
                            color: Color(0xff0E465D),),
                          Text(
                            '4,000,000.',
                            style: TextStyle(
                              color: Color(0xff0E465D),
                              fontSize: 28, fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                              '00',
                            style: TextStyle(
                              color: Color(0xff0E465D),
                              fontSize: 18, fontWeight: FontWeight.bold,
                              textBaseline: TextBaseline.alphabetic,
                            ),
                            ),



                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text(
                            'REVENUE COLLECTED',
                            style: TextStyle(
                              //#000000
                              color: Color(0xff000000),
                              fontSize: 15, fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
          ),
        ),


              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      color: const Color(0xffFFFFFF),
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(14),
                            child: CircleAvatar(
                              child: Icon(
                                  Icons.event_note_outlined,
                                //size: 1.5,
                                color: Colors.pink,
                              ),
                              radius: 25,
                              //backgroundImage: Icon(Icons.insert_drive_file_sharp),
                              backgroundColor: Color(0xffFFE6E6),
                            ),
                          ),
                          const SizedBox(width: 2,),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 107,
                            height: 40,
                            margin: const EdgeInsets.only(right: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text('1',
                                  style: TextStyle(
                                    color: Color(0xff262626),
                                    fontSize: 18, fontWeight: FontWeight.bold,
                                  ), ),
                                SizedBox(height: 2,),
                                Text('Applications',
                                  style: TextStyle(
                                    color: Color(0xff646A86),
                                    fontSize: 13, fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                          //Text('Applications'),
                        ],
                      ),
                      height: 97,
                      width: 209,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      color: const Color(0xffFFFFFF),
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(14),
                            child: CircleAvatar(
                              child: Icon(
                                  Icons.add_business_sharp,
                              color: Color(0xff5C533F),
                              ),
                              radius: 25,
                              //backgroundImage: Icon(Icons.insert_drive_file_sharp),
                              backgroundColor: Color(0xffF8E3B1),
                            ),
                          ),
                          const SizedBox(width: 2,),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 107,
                            height: 40,
                            margin: const EdgeInsets.only(right: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text('50,67',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 18, fontWeight: FontWeight.bold,
                                  ), ),
                                SizedBox(height: 2,),
                                Text('My Business',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 13, fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                          //Text('Applications'),
                        ],
                      ),
                      height: 97,
                      width: 209,
                    ),
                    const SizedBox(width: 16),

                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.all(14),
                            child: CircleAvatar(
                              radius: 25,
                              //backgroundImage: Icon(Icons.insert_drive_file_sharp),
                              backgroundColor: Colors.pinkAccent,
                            ),
                          ),
                          const SizedBox(width: 2,),
                          Container(
                            alignment: Alignment.centerLeft,
                            width: 107,
                            height: 40,
                            margin: const EdgeInsets.only(right: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text('1',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 18, fontWeight: FontWeight.bold,
                                  ), ),
                                SizedBox(height: 2,),
                                Text('Applications',
                                  style: TextStyle(
                                    color: Colors.brown,
                                    fontSize: 13, fontWeight: FontWeight.bold,
                                  ),),
                              ],
                            ),
                          ),
                          //Text('Applications'),
                        ],
                      ),
                      color: Colors.red,
                      height: 97,
                      width: 209,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 34,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 36),
                    child: const Text(
                      'My Businesses',
                      style: TextStyle(
                        color: Color(0xff2E2E2E),
                        fontSize: 16, fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Card(
                margin: const EdgeInsets.only(left: 2),
                child: Container(
                  color: Colors.grey,
                  height: 48,
                  width: 339,
                  //margin: const EdgeInsets.only(left: 2),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 24, top: 16),
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 14, fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Card(
                  color: const Color(0xffFCFCFC),
                  margin: const EdgeInsets.only(right: 36, left: 38),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 6,
                    separatorBuilder: (context, index) => const Divider(),
                    itemBuilder: (context, index) {
                      return const ListTile(
                        title: Text(
                          'Paragraph Ltd.',
                          style: TextStyle(
                            color: Color(0xff646A86),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_right),
                      );
                    },
                  ),
                )/*Card(color: Colors.white,
                  margin: const EdgeInsets.only(right: 36, left: 38),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text('Paragraph Ltd.',
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 14, fontWeight: FontWeight.bold,
                          ),),
                        trailing: Icon(Icons.arrow_right),
                      );
                    },),
                ),*/
              ),
              const SizedBox(height: 24,),
              Row(
                children: [
                  Container(
                    color: const Color(0xffE4EDF1),
                    height: 33,
                    width: 128,
                    margin: const EdgeInsets.only(left: 38),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/third');
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: Text(
                          'All businesses',
                          style: TextStyle(
                            color: Color(0xff186F93),
                            fontSize: 14, fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),),
                ],
              ),
              const SizedBox(
                height: 16,
              ),







            ],
      ),),),
    );
  }
}
