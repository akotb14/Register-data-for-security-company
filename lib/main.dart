import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  var keyform = GlobalKey();
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            Builder(
              builder: (context) {
                return SliverAppBar(
                  leadingWidth: 80,
                  leading: TextButton(
                    onPressed: (){},
                    child: Text('Privacy' ,style: TextStyle(color: Colors.blue),),
                  ),
                  
                  backgroundColor: Colors.white,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding:EdgeInsets.all(8),
                    title: Text('Chats' , style: TextStyle(color: Colors.black , fontSize: 30 ),textAlign: TextAlign.start,),
                   centerTitle: true,
                  ),
                  
                  elevation: 0,
                  pinned: true,
                  expandedHeight: MediaQuery.of(context).size.height * 0.15,
                );
              }
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Builder(builder: (context) {
                return Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                          Text('sd'),
                        ],
                      ),
                    ),
                  ),
                );
              })
            ])),
          ],
        ),
      ),
    );
  }

  StreamBuilder<int> stream() {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1), (a) => a),
      builder: (context, snapshot) {
        return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.hasData && snapshot.data <= 10
                  ? '${snapshot.data}'
                  : 'a7a'),
            ),
            body: snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const Center(
                    child: Text('Done'),
                  ));
      },
    );
  }

  FutureBuilder<int> future() {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2), () => 2),
      builder: (context, snapshot) {
        return Scaffold(
            appBar: AppBar(
                title: Text(snapshot.hasData ? '${snapshot.data}' : 'a')),
            body: snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const Center(
                    child: Text('Done'),
                  ));
      },
    );
  }
}
