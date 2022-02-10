import 'dart:async';

import 'history.dart';
import 'package:cowtracker/addcattle.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  Set<Marker> _markers = {};
  Completer<GoogleMapController> _controller = Completer();

  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {

  }


  CameraPosition _currentPosition = CameraPosition(
    target: LatLng(6.79, 3.42),
    zoom: 12,

      bearing: 30,

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text("Cow Tracker"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: GoogleMap(
          initialCameraPosition: _currentPosition,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete();
          },
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Cow Tracker',
              style: TextStyle(color: Colors.white, fontSize: 0),
            ),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/cowhead.jpg')

                )),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () => {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => History()))},
          ),
          ListTile(
            leading: Icon(Icons.add_box_outlined),
            title: Text('Add'),
            onTap: () => {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cattle()))},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}