import 'package:flutter/material.dart';

import 'widgets/product_card_widget.dart';
import 'widgets/searchbar_widget.dart';
import 'widgets/social_circle.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ListTile(
          title: Text(
            'Home Page',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: RichText(
            text: TextSpan(
              children: [
                TextSpan(text: 'Choose your course'),
                TextSpan(
                    text: ' right away',
                    style: TextStyle(
                      color: Colors.green.shade800,
                    ))
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
            color: Color.fromARGB(255, 78, 217, 80),
            padding: EdgeInsetsDirectional.all(20),
          ),
        ],
      ),
      //body starts
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              SearchBarWidget(),
              SizedBox(
                height: 25,
              ),
              Container(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    mainAxisExtent: 150,
                    crossAxisCount: 3,
                  ),
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/1.png',
                      text: 'Youtube',
                    ),
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/2.png',
                      text: 'Twitter',
                    ),
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/3.png',
                      text: 'Instagram',
                    ),
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/4.png',
                      text: 'Facebook',
                    ),
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/5.png',
                      text: 'WhatsApp',
                    ),
                    SocialCircle(
                      color: Colors.grey.shade200,
                      image: 'assets/6.png',
                      text: 'Telegram',
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text('Recommended Social Media'),
                subtitle: Row(
                  children: [
                    Text('You may also like'),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 10, 129, 14),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    )
                  ],
                ),
                trailing: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),

              // TODO : Product card
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?Instagram,icon",
                      title: 'Instagram',
                      rating: '8.1',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?whatsapp,icon",
                      title: 'WhatsApp',
                      rating: '7.9',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?telegram,icon",
                      title: 'Telegram',
                      rating: '6.0',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?snapchat,icon",
                      title: 'Snapchat',
                      rating: '7.2',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?linkedin,icon",
                      title: 'LinkedIn',
                      rating: '6.9',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?youtube,icon",
                      title: 'Youtube',
                      rating: '7.3',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?facebook,icon",
                      title: 'Facebook',
                      rating: '5.2',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?twitter,icon",
                      title: 'Twitter',
                      rating: '5.6',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?tiktok,icon",
                      title: 'Tiktok',
                      rating: '0.0',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProductCardWidget(
                      image_url:
                          "https://source.unsplash.com/random/?google,icon",
                      title: 'Google',
                      rating: '9.1',
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
