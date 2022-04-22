import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main () {
  runApp(SettingP(),
  );
}

class SettingP extends StatefulWidget {
  const SettingP({Key? key}) : super(key: key);

  @override
  State<SettingP> createState() => _SettingPState();
}

class _SettingPState extends State<SettingP> {

  bool status = false;
  bool off = false;
  bool on = false;
  bool isIOS = false;
  bool oon = true;
  bool ooff = false;
  bool non = true;

  @override
  Widget build(BuildContext context) {
    return
      (isIOS == false) ?
      MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              Switch(value: isIOS, onChanged: (val) {
                setState(() {
                  isIOS = val;
                });
              })
            ],
            backgroundColor: Colors.redAccent,
            title: Text("Settings UI"),
          ),
        body:  Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Common',
                    style: TextStyle(fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.language,size: 30,),
                title: Text('Language'),
                subtitle: Text('English'),
              ),
              Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.cloud,size: 30,),
                title: Text('Environment'),
                subtitle: Text('Production'),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Account',
                    style: TextStyle(fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),)
                ],
              ),
              ListTile(
                leading: Icon(Icons.call,size: 30,),
                title: Text('Pone Number'),
              ),
              Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.email,size: 30,),
                title: Text('Email'),
              ),
              Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.outbox,size: 30,),
                title: Text('Sign out'),
              ),
              SizedBox(height: 10,),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Security',
                    style: TextStyle(fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),)
                ],
              ),
              ListTile(
                leading: Icon(Icons.install_mobile,size: 30,),
                title: Text('Lock app in background'),
                trailing: Switch(
                  activeColor: Colors.red,
                   value: status,
                   onChanged: (val) {},
                ),
              ),


              Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.fingerprint,size: 30,),
                title: Text('Use fingerprint'),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: off,
                  onChanged: (value) {
                    setState(() {
                      off = value;
                    });
                  },
                ),
              ),

               Divider(thickness: 2,),
              ListTile(
                leading: Icon(Icons.lock_outline,size: 30,),
                title: Text('Change password'),
                trailing: Switch(
                  activeColor: Colors.red,
                  value: on,
                  onChanged: (value) {
                    setState(() {
                      on = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('misc',
                    style: TextStyle(fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.w600),)
                ],
              ),
            ],
      ),
       ),
    )
      :
      CupertinoApp(
        debugShowCheckedModeBanner: false,

         home: CupertinoPageScaffold(
          backgroundColor: Colors.grey.shade300,
          navigationBar:  CupertinoNavigationBar(
            backgroundColor: Colors.red,
            middle: Text('Settings UI',
              style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
              ),
            ),
            trailing: CupertinoSwitch(
              value: isIOS,
              activeColor: CupertinoColors.activeGreen,
              onChanged: (val) {
                setState(() {
                  isIOS = val;
                });
              },
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Common',
                    style: TextStyle(fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.circle,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Language',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 190,),
                    Text('English',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 5),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),

                  ],
                ),
              ),

              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.cloud,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Environment',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 135),
                    Text('Production',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 5),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Account',
                    style: TextStyle(fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.phone,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Phone Number',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 215),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.mail,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Email',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 295),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.share,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Sign out',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 275),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children:  const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Security',
                    style: TextStyle(fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.lock_shield,color: Colors.black38),
                    SizedBox(width: 20,),
                    const Text('Lock app in background',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 120,),
                    CupertinoSwitch(
                        activeColor: Colors.red,
                        value: on,
                        onChanged: (value) {
                          setState(() {
                            on = value;
                          });
                        })
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.qrcode_viewfinder,color: Colors.black38),
                    SizedBox(width: 20,),
                    const Text('Use fingerprint',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 200,),
                    CupertinoSwitch(
                        activeColor: Colors.red,
                        value: off,
                        onChanged: (value) {
                          setState(() {
                            off = value;
                          });
                        })
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: [
                    const Icon(CupertinoIcons.lock,color: Colors.black38),
                    SizedBox(width: 20,),
                    const Text('Change password',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 170,),
                    CupertinoSwitch(
                        activeColor: Colors.red,
                        value: non,
                        onChanged: (value) {
                          setState(() {
                            non = value;
                          });
                        })
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text('Misc',
                    style: TextStyle(fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children:
                  const [
                    Icon(CupertinoIcons.doc,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Terms of service',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 200),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                width: double.infinity,
                child: Row(
                  children: const [
                    Icon(CupertinoIcons.book,color: Colors.black38),
                    SizedBox(width: 20,),
                    Text('Open source licence',style: TextStyle(fontSize: 20,color: Colors.black38),),
                    SizedBox(width: 170),
                    Icon(CupertinoIcons.right_chevron,color: Colors.black38),
                  ],
                ),
              ),
            ],
          )
         )
      );

  }
}
