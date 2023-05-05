import 'package:flutter/material.dart';
import 'package:project/bottom_nav_bar_screen_three.dart';





class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    print(screenSize);
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      bottomNavigationBar: const BottomTwo(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: <Widget>[

              //container that holds the three row widgets

              Row(

                  children: <Widget>[

                    //the first container inside the top container

                    Container(
                      color: Color(0xffFFFFFF),
                      width: 139,
                      margin: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
                      child: Image.asset(
                          'images/commerce.png'),
                    ),
                    SizedBox(width: 18,),
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
                            primary: Color(0xffFFDCE5),
                            //onPrimary: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          child: const Text(
                            'Agent',
                            style: TextStyle(
                              fontFamily: 'Avenir Next',
                              fontWeight: FontWeight.bold,
                              color: Color(0xff531423),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 112,),

                    //the third container inside the top container

                    Container(
                      child: Icon(
                        Icons.menu_sharp,
                        color: Colors.black,
                      ),
                      color: Colors.white,
                      width: 30,
                      height: 14,
                    ),
                  ]
              ),
              SizedBox(
                height: 32,
              ),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        child: const Text(
                          'BUSINESSES',
                            style: TextStyle(
                            fontFamily: 'Avenir Next Medium',
                            fontWeight: FontWeight.bold,
                            fontSize: 10, color: Color(0xff7C8191),
                        ),),
                      ),
                      const SizedBox(
                        height: 15,//9
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 18),
                        child: const Text('All businesses',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff262626),
                            fontSize: 18,
                          ),),
                      ),],),
                  const SizedBox(width: 104),
                  Align(
                      alignment: Alignment.topRight,
                      child:  Container(
                        width: 145,
                        height: 40,
                        margin: EdgeInsets.only(right: 18),//24
                        decoration: BoxDecoration(
                          color: Colors.grey,
                        ),
                        alignment:  Alignment.center,
                        child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 2),
                       child: Row(
                         children: <Widget>[
                           Text('All businesses',
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
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search business place',
                    // hintText: 'e.g. bananas',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                color: Color(0xffE7EAF4),
                margin: const EdgeInsets.only(left: 18, right: 18),
                height: 48,
                width: 400,
                //alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'NAME',
                    style: TextStyle(
                      color: Color(0xff646A86),
                      fontSize: 12, fontWeight: FontWeight.bold,
                    ),),
                ),
              ),

              Card(
                color: const Color(0xffFCFCFC),
                margin: const EdgeInsets.only(right: 16, left: 16),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 9,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/fourth');},
                      child: const ListTile(
                        title: Text(
                          'Paragraph Ltd.',
                          style: TextStyle(
                            color: Color(0xff646A86),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(Icons.arrow_right),
                      ),
                    );
                  },
                ),
              )


            ],
          ),



        ),),
    );
  }
}