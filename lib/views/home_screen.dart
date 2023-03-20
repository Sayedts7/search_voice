import 'package:flutter/material.dart';
import 'package:fyp_search_voice/views/speech_to_text.dart';
import 'package:fyp_search_voice/views/text_to_speech.dart';

class home_Screen extends StatefulWidget {
  const home_Screen({Key? key}) : super(key: key);

  @override
  State<home_Screen> createState() => _home_ScreenState();
}

class _home_ScreenState extends State<home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff7f2b),
        title: Text('Home'),
      ),
      drawer: Drawer(
          child: ListView(
        // padding: EdgeInsets.zero,
        children: [
          Container(
            height: 300,
            child: DrawerHeader(
              child: Image(
                image: AssetImage('assets/splash.png'),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyApp1()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                      title: Text('SVTV'),
                      content: Text('Search Voice Through Voice v:1.0'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    )),
          ),
           ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Text to Speech'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate us'),
          ),
          ListTile(
            leading: Icon(Icons.audio_file),
            title: Text('Audio'),
          ),
          const ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            // onTap: (){},
          )
        ],
      )),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            height: 100,
          ),
          Center(
              child: Icon(
            Icons.mic,
            size: 150,
          )),
          SizedBox(
            height: 50,
          ),
          Center(
              child: Text(
            'Tap Mic And Speak',
            style: TextStyle(
              fontSize: 30,
            ),
          )),
        ],
      ),
    );
  }
}


