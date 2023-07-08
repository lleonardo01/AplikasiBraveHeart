import 'package:firebase_auth/firebase_auth.dart' // new
    hide EmailAuthProvider, PhoneAuthProvider;    // new
import 'package:flutter/material.dart';           // new
import 'package:provider/provider.dart';          // new
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'app_state.dart';                          // new
import 'src/authentication.dart';                 // new
import 'src/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //konfigurasi untuk Fetch Data dari Internet
  final String apiUrl = "https://reqres.in/api/users?per_page=15";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Judul Aplikasi
      appBar: AppBar(
        title: const Text('BRAVE HEART'),
      ),
      body: ListView(
        children: <Widget>[
          //Menampilkan Gambar
          Image.asset('assets/brave.png'),
          const SizedBox(height: 9),
          //Menampilkan Icon Pantai
          const IconAndDetail(Icons.beach_access, 'Pnatai Wohkudu'),
          //Menampilkan Icon Profil
          const IconAndDetail(Icons.account_circle_outlined, 'Leonardo Etwiory'),
          // Add from here

          //fungsi untuk masuk ke halaman login
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
                loggedIn: appState.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),
          // to here

          // Menampilkan Garis panjang
          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          //Menampilkan Teks
          const Header("BRAVE HEART"),
          const Paragraph(
            'Brave Heart adalah sebuah komunitas terkecil dalam gereja GBI Generasi Baru'
                'Dalam GBI generasi baru terdiri dari beberapa Zona dan juga CellGroup '
                'dan BraveHeart berada di Zona Selatan 3'
                'Jadwal Cell Group Kami Brave Heart disetiap Hari Jumat jam 7 malam'
                'Berlokasi di Kontrakan Maguwoharjo ',
          ),
          const Divider(
            height: 40,
            thickness: 1,
            indent: 10,
            endIndent: 10,
            color: Colors.grey,
          ),
          const Header("Fetch Data dari Internet"),

      //Mempilkan data dari internet
      Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name']),
                      subtitle: Text(snapshot.data[index]['email']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
        ],
      ),
    );
  }
}