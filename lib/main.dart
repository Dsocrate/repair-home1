import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage('images/background.png'),
          ) ,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Repair(),
        ),
      ),
    );
  }
}

class Repair extends StatefulWidget {
  const Repair({Key? key}) : super(key: key);

  @override
  _RepairState createState() => _RepairState();
}

class _RepairState extends State<Repair> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 7,
              child: Center(
                child: Image(
                    image: AssetImage('images/babe.png')
                ),
              )),
          Text('login to your account',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              )),
          Container(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Email'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(18),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context ){
                            return Scaffold(
                              body: WelcomePage(),
                            );
                          }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      shadowColor: Colors.grey,
                      elevation: 7,

                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              )
          ),
          Center(
            child: Text(
              ' or sign in with -',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,


              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/facebook.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/goggle2.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/twitter2.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                children: [
                  Text(
                    '. Dont have an account?',
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.grey
                    ),
                  ),
                  Space(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
            return Scaffold(
              body: SignUp(),
            );
          }));
        },
        child: Text(
          'Sign up',
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue.shade900,
          ),
        ));
  }
}
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage('images/background3.png'),
        ) ,
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child:  Report(),
      ),
    );
  }
}
class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 5,
              child: Center(
                child: Image(
                    image: AssetImage('images/babe.png')
                ),
              )),
          Text('Create new account',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,

              )),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Confirm Password'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(18),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context ){
                          return Scaffold(
                            body: WelcomePage(),
                          );
                        }));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    shadowColor: Colors.grey,
                    elevation: 7,

                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            )
          ),
          Center(
            child: Text(
              ' or sign up with -',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,


              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/facebook.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/goggle2.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/twitter2.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/backdround7.png')
        )
      ),
      child: Padding(
        padding: EdgeInsets.all(25),
        child:  Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch ,
              children: [
                IconButton(
                  icon: Icon(Icons.dashboard, size: 25,color: Colors.black,),
                  tooltip: 'dashboard',
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.add_shopping_cart, size: 25,color: Colors.black,),
                  tooltip: 'Cart',
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(BuildContext context){
                          return Scaffold(
                            body: Cart(),



                          );
                        } ));
                  },
                )

              ],
            ),
          ),
          Text(
            'What\'s broken ?',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search, size: 25,color: Colors.black,),
                    tooltip: 'search',
                    onPressed: (){},
                  ),
                  labelText: 'Search appliance'
              ),
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6.0
                  )
                ]
            ),
            margin: EdgeInsets.all(20),
          ),
          Text(
            'Offers ?',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child:Image(
                      image:AssetImage('images/pic1.png') ,
                    ),

                  ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                    )
                ),
                Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:Image(
                        image:AssetImage('images/pic2.png') ,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                    )
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child:Image(
                      image:AssetImage('images/pic3.png') ,
                    ),
                  ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                    )
                ),

              ],
            ),
          ),
          Text(
            'We can fix it',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Padding(
                  padding: EdgeInsets.all(5),
                      child: Center(
                        child:Text(
                          'Offers',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.black87,
                    shape: BoxShape.rectangle,


                  ),
                  width:90,
                  height: 25,


                ),
                Text(
                  'Kitchen',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,

                  ),
                ),
                Text(
                  'Livingroom',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
                Text(
                  ' Bathroom',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.blue.shade50,
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  children: [
                    Container(
                      child: Center(
                        child:Image(
                          image: AssetImage('images/microwave2.png'),
                        ),
                      ),
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      margin: EdgeInsets.all(5),
                    ),
                    Center(
                      child: Column(children: [
                        Text(
                          'Fix Microwave',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'kitchen',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],

                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(BuildContext context){
                              return Scaffold(
                                appBar: AppBar(
                                  leading: IconButton(
                                    icon: Icon(Icons.dashboard),
                                    onPressed: (){},
                                  ),
                                  backgroundColor: Colors.black87,
                                  title: Center(
                                    child: Text('REPAIR HOME'),
                                  ),
                                ),
                                body: Microwave(),
                              );
                            } ));
                      },
                    ),

                  ],
                ),
              ),

            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  color: Colors.blue.shade50,
              ),
              width: 200,
              height: 50,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  children: [
                    Container(
                      child: Center(
                        child:Image(
                          image: AssetImage('images/television-classic.png'),
                        ),
                      ),
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(5)),

                      ),
                      margin: EdgeInsets.all(5),
                    ),
                    Column(children: [
                      Text(
                        'Fix TV set',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Living Room',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],

                    ),
                    IconButton(
                      icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(BuildContext context){
                              return Scaffold();
                            } ));
                      },
                    ),

                  ],
                ),
              ),

            ),
          ),


        ],
      ),
    );
  }
}
class Microwave extends StatelessWidget {
  const Microwave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background4.png')
        )
      ),
      child: PageUp(),
    );
  }
}
class PageUp extends StatelessWidget {
  const PageUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.navigate_before_outlined, color: Colors.black87,size: 25,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Scaffold();
                              } ));
                        },
                      ),
                      Center(child: Text(
                        'Fix Microwave',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),)


                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),child: Image(image: AssetImage('images/microwave.png'),),)
                ],
              ),
              ),
            ),
          Expanded(
            child:Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch ,
                children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child:Text(
                          'Reviews',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.deepOrangeAccent,
                      shape: BoxShape.rectangle,


                    ),
                    width:200,
                    height: 50,


                  ),
                  Container(
                    child: Center(
                      child:Image(
                        image: AssetImage('images/vector.png'),
                      ),
                    ),
                    alignment: Alignment.center,
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6.0
                          )
                        ]
                    ),
                    margin: EdgeInsets.all(5),
                  )


                ],
              ),
            )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch ,
              children: [
                Text(
                  'Reapir',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '\$52',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                shape: BoxShape.rectangle,
                color: Colors.white,
            ),
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch ,
              children: [
                Text(
                  'Setup',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  '\$12',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ],
            ),
            alignment: Alignment.center,
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle,
              color: Colors.white,
            ),
            margin: EdgeInsets.all(20),
          ),
          Expanded(
              child:Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch ,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child:Text(
                            'Order repair',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.black,
                        shape: BoxShape.rectangle,


                      ),
                      width:150,
                      height: 50,


                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Center(
                          child:Text(
                            'Order setup',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white,
                        shape: BoxShape.rectangle,


                      ),
                      width:150,
                      height: 50,


                    ),



                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png')
          )
      ),
      child: CartPage(),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch ,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch ,
                children: [
                  IconButton(
                    icon: Icon(Icons.navigate_before_outlined, color: Colors.black87,size: 30,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder:(BuildContext context){
                            return Scaffold();
                          } ));
                    },
                  ),
                  Center(child: Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),)


                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 10.0
                      )
                    ]

                ),
                child: Padding(
                  padding:EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Container(
                        child: Center(
                          child:Image(
                            image: AssetImage('images/microwave2.png'),
                          ),
                        ),
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 6.0
                              )
                            ]

                        ),
                        margin: EdgeInsets.all(5),
                      ),
                      Center(
                        child: Column(children: [
                          Text(
                            'Fix Microwave',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'kitchen',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],

                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Scaffold(
                                  appBar: AppBar(
                                    leading: IconButton(
                                      icon: Icon(Icons.dashboard),
                                      onPressed: (){},
                                    ),
                                    backgroundColor: Colors.black87,
                                    title: Center(
                                      child: Text('REPAIR HOME'),
                                    ),
                                  ),
                                  body: Microwave(),
                                );
                              } ));
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue.shade50,
                ),
                child:Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.adjust_rounded,
                                size: 20,
                                color: Colors.red,
                              ),
                            ),
                            Center(child: Text(
                              ' Set up Microwave',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),),
                            SizedBox(width: 50),
                            Text(
                              '\$22 ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,

                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(
                                Icons.adjust_rounded,
                                size: 20,
                                color: Colors.red,
                              ),
                            ),
                            Center(child: Text(
                              ' Repair Microwave',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),),
                            SizedBox(width: 50),
                            Text(
                              '\$80 ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,

                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
                ),
              ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  color: Colors.blue.shade50,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Container(
                        child: Center(
                          child:Image(
                            image: AssetImage('images/microwave2.png'),
                          ),
                        ),
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        margin: EdgeInsets.all(5),
                      ),
                      Center(
                        child: Column(children: [
                          Text(
                            'Fix Fridge',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '2 services',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],

                        ),
                      ),
                      Text(
                        '\$70 ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,

                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Scaffold(
                                  appBar: AppBar(
                                    leading: IconButton(
                                      icon: Icon(Icons.dashboard),
                                      onPressed: (){},
                                    ),
                                    backgroundColor: Colors.black87,
                                    title: Center(
                                      child: Text('REPAIR HOME'),
                                    ),
                                  ),
                                  body: Microwave(),
                                );
                              } ));
                        },
                      ),

                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  color: Colors.blue.shade50,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Container(
                        child: Center(
                          child:Image(
                            image: AssetImage('images/microwave2.png'),
                          ),
                        ),
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        margin: EdgeInsets.all(5),
                      ),
                      Center(
                        child: Column(children: [
                          Text(
                            'Fix Washer',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '2 services',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],

                        ),
                      ),
                      Text(
                        '\$135 ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,

                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Scaffold(
                                  appBar: AppBar(
                                    leading: IconButton(
                                      icon: Icon(Icons.dashboard),
                                      onPressed: (){},
                                    ),
                                    backgroundColor: Colors.black87,
                                    title: Center(
                                      child: Text('REPAIR HOME'),
                                    ),
                                  ),
                                  body: Microwave(),
                                );
                              } ));
                        },
                      ),

                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  color: Colors.blue.shade50,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch ,
                    children: [
                      Container(
                        child: Center(
                          child:Image(
                            image: AssetImage('images/microwave2.png'),
                          ),
                        ),
                        alignment: Alignment.center,
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        margin: EdgeInsets.all(5),
                      ),
                      Center(
                        child: Column(children: [
                          Text(
                            'Fix Computer',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '2 services',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],

                        ),
                      ),
                      Text(
                        '\$30 ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,

                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.navigate_next, color: Colors.black87,size: 20,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder:(BuildContext context){
                                return Scaffold(
                                  appBar: AppBar(
                                    leading: IconButton(
                                      icon: Icon(Icons.dashboard),
                                      onPressed: (){},
                                    ),
                                    backgroundColor: Colors.black87,
                                    title: Center(
                                      child: Text('REPAIR HOME'),
                                    ),
                                  ),
                                  body: Microwave(),
                                );
                              } ));
                        },
                      ),

                    ],
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total price',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$302',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ),
            Expanded(
            child:Container(
              child: Center(child: Text(
                'Make an order',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),),
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10))

              ),
            )
            )
          ],
        ),
      )
    );
  }
}
