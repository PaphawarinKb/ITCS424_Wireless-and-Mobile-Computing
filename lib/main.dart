import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class cartConstant {
  static int MovieCount, MovieTotal, counter = 0;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muggle Movie Store',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Muggle Movie Store')),
        body: BodyLayout(),
        bottomNavigationBar: _buildTotalContainer(),
      ),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 120.0,
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "    Total",
                  style: TextStyle(color: Color(0xFF9BA7C6), fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  cartConstant.MovieTotal.toString(),
                  style: TextStyle(color: Color(0xFF6C6D6D), fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Baht    ",
                  style: TextStyle(color: Color(0xFF6C6D6D), fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
//              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: Center(
                child: Text(
                  "PAY NOW",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



class BodyLayout extends StatelessWidget {
  int _counter = 0;
  int getPrice(int i, int priceC) {
    cartConstant.MovieCount = i * priceC;
    return cartConstant.MovieCount;
  }

  int getTotal(int x) {
    cartConstant.MovieTotal = x++;
    return cartConstant.MovieTotal;
  }

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }

  Widget _myListView(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry1.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Philosopher\'s Stone '),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Philosopher\'s Stone');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry2.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Chamber of Secret‪s‬'),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Chamber of Secret‪s‬');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry3.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Prisoner of Azkaba‪n'),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Prisoner of Azkaba‪n');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry4.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Goblet of Fire'),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Goblet of Fire');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry5.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Order of the Phoenix'),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Order of the Phoenix');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry6.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Half-Blood Prince'),
          subtitle: Text('Buy: \฿449'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Half-Blood Prince');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 449);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry7-1.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Deathly Hallows Part 1'),
          subtitle: Text('Buy: \฿459'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Deathly Hallows Part 1');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 459);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/Harry7-2.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Harry Potter and the Deathly Hallows Part 2'),
          subtitle: Text('Buy: \฿459'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Harry Potter and the Deathly Hallows Part 2');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 459);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/FBs1.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Fantastic Beasts and Where to Find Them'),
          subtitle: Text('Buy: \฿479'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Fantastic Beasts and Where to Find Them');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 479);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              minHeight: 260,
              maxWidth: 104,
              maxHeight: 280,
            ),
            child: Image.asset('assets/images/FBs2.jpg', width: 600, height: 450, fit: BoxFit.cover),
          ),
          title: Text('Fantastic Beasts: The Crimes of Grindelwald'),
          subtitle: Text('Buy: \฿479'),
          trailing: Icon(Icons.add_shopping_cart),
          onTap: () {
            print('Fantastic Beasts: The Crimes of Grindelwald');
            _counter++;
            if (_counter > 10) {
              _counter = 10;
            }
            getPrice(_counter, 479);
            getTotal(cartConstant.MovieCount);
            print('$_counter Movie');
            print(cartConstant.MovieTotal);
          },
        ),
      ],
    );
  }
}
