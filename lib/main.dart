import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// my own imports
//import 'package:shopapp_tut/componets/horizontal_listview.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 400.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m2.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal.shade500,
        title: Text('NP VENDAS'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {}), //Icones
          new IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//         header
            new UserAccountsDrawerHeader(
              accountName: Text('Nailson'),
              accountEmail: Text('nailson.pereira@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white),
              )),
              decoration: new BoxDecoration(
                  color: Colors.teal.shade500 //Cor do menu lateral
                  ),
            ),
//          body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading: Icon(Icons.home_outlined, color: Colors.teal.shade800),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Acoount',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading: Icon(Icons.perm_identity, color: Colors.teal.shade800),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Order',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading: Icon(Icons.shopping_basket_outlined,
                    color: Colors.teal.shade800),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading:
                    Icon(Icons.category_outlined, color: Colors.teal.shade800),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favourites',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading: Icon(Icons.favorite_border_outlined,
                    color: Colors.teal.shade800),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading:
                    Icon(Icons.settings_outlined, color: Colors.teal.shade800),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About',
                    style: TextStyle(color: Colors.teal.shade900)),
                leading: Icon(Icons.help_outline_outlined,
                    color: Colors.teal.shade800),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          // Image Carrousel begins here
          image_carousel,

// Padding Widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),
// Horizontal list view begin here
          HorizontalList(),

          // Padding Widget
          new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Text('Recent Products'),
          ),
          //Grid View
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
// Horizontal ListView

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            images_location: ('assets/images/cats/tshirt.png'),
            image_caption: ('shirt'),
          ),

          Category(
            images_location: ('assets/images/cats/dress.png'),
            image_caption: ('dress'),
          ),

          Category(
            images_location: ('assets/images/cats/formal.png'),
            image_caption: ('formal'),
          ),

          Category(
            images_location: ('assets/images/cats/informal.png'),
            image_caption: ('informal'),
          ),

          Category(
            images_location: ('assets/images/cats/jeans.png'),
            image_caption: ('jeans'),
          ),

          Category(
            images_location: ('assets/images/cats/shoe.png'),
            image_caption: ('shoe'),
          ),

          Category(
            images_location: ('assets/images/cats/accessories.png'),
            image_caption: ('acessorios'),
          ),

          // new Icon(Icons.help),
          //new Icon(Icons.help),
          //new Icon(Icons.help),
          //new Icon(Icons.help),
          //new Icon(Icons.help),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String images_location;
  final String image_caption;

  Category({this.images_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
                title: Image.asset(
                  images_location,
                  width: 100.0,
                  height: 80.0,
                ),
                subtitle: Container(
                  alignment: Alignment.topCenter,
                  child: Text(
                    image_caption,
                    style: new TextStyle(fontSize: 12.0),
                  ),
                )),
          ),
        ));
  }
}

//Products

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "assets/images/products/blazer2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "assets/images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black dress",
      "picture": "assets/images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "high heels",
      "picture": "assets/images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "high heels",
      "picture": "assets/images/products/hills2.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt flowe",
      "picture": "assets/images/products/skt1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "skirt pink",
      "picture": "assets/images/products/skt2.jpeg",
      "old_price": 100,
      "price": 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  // Passando os valores do produto para a página de detalhes
                  builder: (context) => new PorductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

// products Details

class PorductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  PorductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});

  @override
  _PorductDetailsState createState() => _PorductDetailsState();
}

class _PorductDetailsState extends State<PorductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.teal.shade500,
        title: Text('NP VENDAS'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search, color: Colors.white),
              onPressed: () {}), //Icones
          new IconButton(
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
              onPressed: () {}),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                          child: new Text(
                        "\$${widget.product_detail_old_price}",
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough),
                      )),
                      Expanded(
                          child: new Text(
                              "\$${widget.product_detail_new_price}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red))),
                    ],
                  ),
                ),
              ),
            ),
          ),
// ============ O primeiro Botão
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Tamanho"),
                            content: new Text("Escolha o Tamanho"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Fechar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: new Text("Tamanho:"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ]),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Cor"),
                            content: new Text("Escolha a Cor"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Fechar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: new Text("Cor:"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ]),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Quantidade"),
                            content: new Text("Selecionar a Quantidade"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Fechar"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(children: <Widget>[
                    Expanded(
                      child: new Text("Qtd:"),
                    ),
                    Expanded(
                      child: new Icon(Icons.arrow_drop_down),
                    ),
                  ]),
                ),
              ),
            ],
          ),
// Buy Now
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.teal.shade900,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Fazer Pedido")),
              ),
              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.teal.shade900,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  color: Colors.teal.shade900,
                  onPressed: () {}),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text(
                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs."),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Nome do Produto:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Marca do Produto:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              )
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Condição do Produto:",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: new Text("Novo"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
