import 'package:flutter/material.dart';
//practice setstate
//practice extend state
void main() {
  runApp( ValidationApp());//run what app is needed  call one class inside the main class
  //when calling another class only keep the children not including materialapp and scaffold
}

class MyApp extends StatelessWidget { //stateless static, the other is dynamic
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Container Example')),

        body: Center(

          child: Container(



            width: 200,

            height: 200,

            decoration: BoxDecoration(

              color: Colors.blue,

              borderRadius: BorderRadius.circular(10),

              boxShadow: [

                BoxShadow(color: Colors.black26, blurRadius: 10),

              ],

            ),

            child: Center(

              child: Text('Inside Container', style: TextStyle(color: Colors.white)),

            ),

          ),

        ),

      ),

    );

  }

}




class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class SimpleHelloWorld extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

          title: Text('Basic UI Example start'),

        ),

        body: Center(

          child: Text('Hello, Flutter guys!'),

        ),

        floatingActionButton: FloatingActionButton(

          onPressed: () {},

          child: Icon(Icons.ac_unit),

        ),

      ),

    );

  }

}

class MyListApp extends StatelessWidget {

  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('ListView Example')),

        body: ListView.builder(

          itemCount: items.length,

          itemBuilder: (context, index) {

            return ListTile(

              title: Text(items[index]),

              leading: Icon(Icons.check),

            );

          },

        ),

      ),

    );

  }

}


class MyGridApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('GridView Example')),

        body: GridView.count(

          crossAxisCount: 3, // 2 items per row

          children: List.generate(6, (index) {

            return Card(

              margin: EdgeInsets.all(10),

              child: Center(child: Text('Item $index')),

            );

          }),

        ),

      ),

    );

  }

}








class MyButtonApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('Button Example')),

        body: Center(

          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.yellow),

            onPressed: () {

              print('Button Pressed!');

            },

            child: Text('Press Me'),

          ),

        ),

      ),

    );

  }

}

class MyFormApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(title: Text('TextField Example')),

        body: Padding(

          padding: const EdgeInsets.all(16.0),

          child: TextField(

            decoration: InputDecoration(labelText: 'Enter your name'),

          ),

        ),

      ),

    );

  }

}
class MyLayoutApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

        home: Scaffold(

        appBar: AppBar(

        title: Text('Column & Row Layout'),

    ),

    body: Column(

    mainAxisAlignment: MainAxisAlignment.center, // Align vertically

    children: [

    Text('I am in a Column'),

    Text('i am awesome'),

    Row(

    mainAxisAlignment: MainAxisAlignment.center, // Align horizontally

    children: [

    Icon(Icons.star, size: 50),

    SizedBox(width: 10),

    Text('I am in a Row'),

    Text('Awesome Flutter Program'),
      MyLayoutApp2(),
    ],

    ),

    ],

    ),
        ),

    );

  }

}


class MyLayoutApp2 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return   Column(

      mainAxisAlignment: MainAxisAlignment.center, // Align vertically

      children: [

        Text('I am in a Column'),

        Text('i am awesome'),

        Row(

          mainAxisAlignment: MainAxisAlignment.center, // Align horizontally

          children: [

            Icon(Icons.star, size: 50),

            SizedBox(width: 10),

            Text('I am in a Row'),

            Text('Awesome Flutter Program')

          ],

        ),

      ],

    );

  }

}

class firstsample extends StatelessWidget{// find 11:02
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome', style: TextStyle(fontSize:32)),
            Text('userName')
          ],
        ),
      )
    );
  }
}

class SimpleFunctionality extends StatefulWidget {

  @override

  _myAppState2 createState() => _myAppState2();

}

class _myAppState2 extends State<SimpleFunctionality>{
  String enteredText = "";
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField example'),

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    labelText: "input something",
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  enteredText=textController.text;
                });
              }, child: Text('show text')),
              SizedBox(height: 20),
              Text(
              enteredText,
                style: TextStyle(fontSize: 24)
              )
            ],
          ),
        ),
      )
    );
  }

}

class _MyAppState extends State<SimpleFunctionality> {

  String enteredText = ""; // To store the text from the TextField

  TextEditingController textController = TextEditingController();

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

        home: Scaffold(

        appBar: AppBar(

        title: Text('TextField Example'),

    ),

    body: Center(

    child: Column(

    mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically

    children: [

    Padding(

    padding: const EdgeInsets.all(16.0),

    child: TextField(

    controller: textController, // Capture the input

    decoration: InputDecoration(

    border: OutlineInputBorder(),

    labelText: 'Enter something',

    ),

    ),
    ),

    ElevatedButton(

    onPressed: () {

    setState(() {
      enteredText = textController.text; // Update the text when button is pressed

    });

    },

      child: Text('Show Text'),

    ),

      SizedBox(height: 20), // Add some space

      Text(

        enteredText, // Display the entered text

        style: TextStyle(fontSize: 24),

      ),

    ],

    ),

    ),

        ),

    );

  }

}

class SimpleFunctionalitywithValidation extends StatefulWidget {

  @override

  _SimpleFunctionalitywithValidationState createState() => _SimpleFunctionalitywithValidationState();

}

class _SimpleFunctionalitywithValidationState extends State<SimpleFunctionalitywithValidation> {

  String enteredText = ""; // To store the text from the TextField

  TextEditingController textController = TextEditingController();

  void add (String a){

    print(a);

  }

//

// Method to show the AlertDialog

  void showAlertDialo(BuildContext context) {

    showDialog(

      context: context,

      builder: (BuildContext context) {

        return AlertDialog(

          title: Text("Error"),

          content: Text("Text field can't be empty."),

          actions: [

            TextButton(

              child: Text("OK"),

              onPressed: () {

                Navigator.of(context).pop(); // Close the dialog

              },

            ),
          ],

        );

      },

    );

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('AlertDialog Example'),

      ),

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically

          children: [

            Padding(

              padding: const EdgeInsets.all(16.0),

              child: TextField(
                controller: textController, // Capture the input

                decoration: InputDecoration(

                  border: OutlineInputBorder(),

                  labelText: 'Enter something',

                ),

              ),

            ),

            ElevatedButton(

              onPressed: () {

                setState(() {

                  if (textController.text.isEmpty) {

                    add("Empty");
                    showAlertDialo(context); // Show alert if TextField is empty

                  } else {

                    enteredText = textController.text; // Update text if input is valid

                    textController.clear(); // Clear the TextField

                  }

                });

              },

              child: Text('Submit Text'),

            ),

            SizedBox(height: 20), // Add some space

            Text(

              enteredText.isNotEmpty ? enteredText : 'No input yet', // Show the text or default message

              style: TextStyle(fontSize: 24),

            ),

          ],

        ),

      ),

    );

  }

}
class ValidationApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'AlertDialog Example',

      home: SimpleFunctionalitywithValidation(), // Set your main widget here

    );

  }

}
