import 'package:flutter/material.dart';
import 'package:health_app/pages/home_page.dart';

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: new AppBar(
          title: new Text(
            'Chats',
            style: new TextStyle(
              fontSize: 34,
              color: Colors.black,
              fontFamily: 'Gilroy-ExtraBold',
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          actions: <Widget>[
            new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Icon(HealthApp.invite, color: Colors.black, size: 20,),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new FlatButton(
                    onPressed: () {},
                    child: new Text(
                      'INVITE FRIENDS',
                      style: new TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: new ListView(
        children: <Widget>[
          new SizedBox(height: 25,),
          new Container(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: new AssetImage('assets/images/alice.png'),
                  ),
                  title: new Text('Alice', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.bold),),
                  subtitle: new Text('Intellectual disability, Hemiparesis, Anxiety disorder', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14, ),),
                  trailing: new Text('12:30', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14, ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('You: How are you?', style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Medium', fontSize: 14, ),),
                      new Icon(Icons.trip_origin, color: Colors.blue, size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          new Container(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new CircleAvatar(
                    backgroundImage: new AssetImage('assets/images/megan.png'),
                  ),
                  title: new Text('Megan', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.bold),),
                  subtitle: new Text('Hemiparesis, Intellectual disability', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                  trailing: new Text('Thu', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('You: 👋', style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Medium', fontSize: 14,),),
                      new Icon(Icons.check_circle_outline, color: Colors.blue, size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          new Container(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundImage: new AssetImage('assets/images/amber.png'),
                      ),
                      new Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: new CircleAvatar(
                          radius: 6.0,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                  title: new Text('Amber', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.bold),),
                  subtitle: new Text('Traumatic brain injury, PTSD', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                  trailing: new Text('Jan 2', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('That would be AMAZING!!', style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Medium', fontSize: 14,),),
                      new Icon(Icons.check_circle, color: Colors.blue, size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          new Container(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundImage: new AssetImage('assets/images/susie.png'),
                      ),
                      new Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: new CircleAvatar(
                          radius: 6.0,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                  title: new Text('Susie', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.bold),),
                  subtitle: new Text('Intellectual disability, Epilepcy', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                  trailing: new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text('14/08/2018', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                      new SizedBox(height: 10,),
                      new Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue,
                            border: Border.all(
                                color: Colors.blue,
                            )
                        ),
                        child: Center(child: new Text('200', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontFamily: 'Gilroy-Regular', fontSize: 14,),),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('See you on Friday!! I hope it is..', style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Medium', fontSize: 14,),),
                      new Icon(Icons.check_circle, color: Colors.blue, size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          new Container(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new ListTile(
                  leading: new Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundImage: new AssetImage('assets/images/philippa.png'),
                      ),
                      new Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: new Border.all(color: Colors.white, width: 2.0),
                        ),
                        child: new CircleAvatar(
                          radius: 6.0,
                          backgroundColor: Colors.green,
                        ),
                      )
                    ],
                  ),
                  title: new Text('Philippa', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Gilroy-Regular', fontWeight: FontWeight.bold),),
                  subtitle: new Text('Down Syndrome, Autism...', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                  trailing: new Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text('14/08/2018', style: TextStyle(color: Colors.grey, fontFamily: 'Gilroy-Regular', fontSize: 14,),),
                      new SizedBox(height: 10,),
                      new Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.blue,
                            )
                        ),
                        child: Center(child: new Text('2', style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontFamily: 'Gilroy-Regular', fontSize: 14,),),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70.0, right: 15.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('Thank u..', style: TextStyle(color: Colors.black, fontFamily: 'Gilroy-Medium', fontSize: 14,),),
                      new Icon(Icons.check_circle, color: Colors.blue, size: 14,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
