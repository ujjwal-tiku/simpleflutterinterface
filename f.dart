import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() =>runApp(MaterialApp(
  home:Zing(),
));
class Zing extends StatelessWidget {//highlight stateless widget and go to action menu to convert to stateful

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar:AppBar(
          title:Text(''),
          centerTitle: true,
          backgroundColor: Colors.grey[900],
          elevation:0.0,
        ),
        body:Padding(
          padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 35.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[

              Center(
                child: CircleAvatar(
                  child: Text(
                    'ZING',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing:1.0,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  radius:100,
                  backgroundColor: Colors.amber,
                ),
              ),

              SizedBox(height : 20.0 ),
              //used to put space between widgets
              Container(
                  padding:EdgeInsets.all(10.0),
                  margin:EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue,
                      ),
                      borderRadius: BorderRadius.circular(20) // use instead of BorderRadius.all(Radius.circular(20))
                  ),
                  child: Text('MUSIC FOR EVERY TASTE',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25.0,),
                  )),
              SizedBox(height : 20.0 ),
              Center(
                child: ElevatedButton(
                  child: Text('LAUNCH APP'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyStatefulWidget()
                        ));
                  },
                ),
              ),



            ],
          ),
        ));
  }
}
/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  //const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Rock';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(
        title:Text(''),
        centerTitle: true,
        backgroundColor: Colors.grey,
        elevation:0.0,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
      Row(
      crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget>[
          Center(
            child:IconButton(
              onPressed:() {},
              icon:Icon(Icons.ac_unit),
              iconSize:40.0,
              color:Colors.amber,


            ),
          ),
          Center(
            child: CircleAvatar(
              child: Text(
                'ZING',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing:1.0,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              radius:20.0,
              backgroundColor: Colors.amber,
            ),
          ),


          Center(
            child:IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginDemo()
                    ));
              },
              icon:Icon(Icons.person),
              iconSize: 40.0,
              color:Colors.amber,


            ),
          ),

                  ],
      ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20) 
              ),padding:EdgeInsets.all(15.0),
              margin:EdgeInsets.all(20.0),
              //color:Colors.amber,
              child: Text('SELECT YOUR GENRE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,),
              )),

        DropdownButton<String>(
          value: dropdownValue,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>['Rock','Country','Electronic dance music','Jazz','K-pop','Pop','Rap',]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),padding:EdgeInsets.all(15.0),
              margin:EdgeInsets.all(20.0),
              //color:Colors.amber,
              child: Text('ENTER YOUR FAVOURITE ARTIST/BAND',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,),
              )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              scrollPadding: EdgeInsets.zero,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: '',
              ),
            ),
          ),
        SizedBox(height : 20.0 ),

            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,
                                           ),
                    borderRadius: BorderRadius.circular(20)
                ),padding:EdgeInsets.all(20.0),
                margin:EdgeInsets.all(20.0),
                //color:Colors.amber,
                child: Text('RECOMMEND SONGS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,),
                )),

          SizedBox(height : 10.0 ),
        Row(
          crossAxisAlignment:CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            
            CircleAvatar(
              radius:40.0,
              backgroundColor: Colors.grey,
              child: Center(
                 child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Zing()
                        ));
                  },
                    icon:Icon(Icons.home),
                   color:Colors.amber,
                   iconSize: 45.0,
                ),
              ),
            ),


            Center(
              child:IconButton(
                onPressed:() {},
                icon:Icon(Icons.star_border_outlined),
                iconSize: 40.0,
                color:Colors.amber,


              ),
            ),

          ],
        ),
    ],
        ),

    );
  }
}
class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(

                      child: CircleAvatar(
                        child: Text(
                          'ZING',
                          style: TextStyle(
                            color: Colors.black,
                            letterSpacing:1.0,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        radius:30,
                        backgroundColor: Colors.amber,
                      ),

              ),

            ),
            SizedBox(
              height: 30,
            ),
            Padding(

              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),

              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MyStatefulWidget()));
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),

          ],
        ),
      ),
    );
  }
}
