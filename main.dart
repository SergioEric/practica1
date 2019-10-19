import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final signIn_style = TextStyle(
  color:Colors.white,
   fontSize:22
);

void main(){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle( statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light)
  );

  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context)=> LoginPage(),
        '/home' : (context)=> HomePage()
      },
      debugShowCheckedModeBanner: false,
      // home: LoginPage()
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/ilustracion.webp",
            fit:BoxFit.cover
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Sign in", style:signIn_style),
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.verified_user, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff1D2833),
                        borderRadius: BorderRadius.circular(30)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 120,),
              Image.asset("assets/images/logo.png", height: 50,),
              SizedBox(height: 100,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 170,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: form()
              ),
              SizedBox(height: 50,),
              Container(
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward, color: Colors.black),
                    onPressed: ()=> Navigator.of(context).pushNamed("/home"),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}

Widget form()=> Form(
  autovalidate: true,
  child: Column(
    children: <Widget>[
      TextFormField(
        decoration: InputDecoration(
          icon: Icon(Icons.email),
          labelText: "Email or Username",
          fillColor: Colors.white
        ),
        keyboardType: TextInputType.emailAddress,
      ),
      TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.security),
          labelText: "Password",
          fillColor: Colors.white,
        ),
      )
    ],
  ),
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child:Text("Home page")
        ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter app"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child:Text("HOLA MUNDO", style: TextStyle(color:Colors.black, fontSize: 30),)
//       ),
//       drawer: Drawer(),
//     );
//   }
// }