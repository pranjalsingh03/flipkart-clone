import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  
  List<Widget> cards = [
    CardFb1(
        text: "Explore",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Working_late_re_0c3y%201.png?alt=media&token=7b880917-2390-4043-88e5-5d58a9d70555",
        subtitle: "+30 books",
        onPressed: () {}),
    CardFb1(
        text: "Explore",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Designer_re_5v95%201.png?alt=media&token=5d053bd8-d0ea-4635-abb6-52d87539b7ec",
        subtitle: "+30 books",
        onPressed: () {}),
    CardFb1(
        text: "Explore",
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/illustrations%2Fundraw_Accept_terms_re_lj38%201.png?alt=media&token=476b97fd-ba66-4f62-94a7-bce4be794f36",
        subtitle: "+30 books",
        onPressed: () {})
  ];

  final double carouselItemMargin = 16; 

  late PageController _pageController;
  int _position = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: .7);
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageController,
        itemCount: cards.length,
        onPageChanged: (int position) {
          setState(() {
            _position = position;
          });
        },
        itemBuilder: (BuildContext context, int position) {
          return imageSlider(position);
        });
  }

  Widget imageSlider(int position) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, widget) {
        return Container(
          margin: EdgeInsets.all(carouselItemMargin),
          child:Container(child: widget,),
          padding: EdgeInsets.only(top: 120,bottom: 470), 
          
        );
      },
      child: Container(
        
        child: cards[position],
      ),
    );
  }
}

class HeaderFb1 extends StatelessWidget {
  final String text;
  final String subtitle;
  const HeaderFb1({required this.text,this.subtitle="", Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(2, 347, 80, 50)),
          ),
          Text(
            subtitle,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.normal, color: Color.fromARGB(255, 202, 153, 153)),
          ),
        ],
    );
    
  }
}

class CardFb1 extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CardFb1(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        
        
        width: 250,
        height: 230,
        padding: const EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          
          children: [
            Image.network(imageUrl, height: 90, fit: BoxFit.cover),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 5,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

// HeaderFb1(text:"", subtitle:"")

// class HeaderFb1 extends StatelessWidget {
//   final String text;
//   final String subtitle;
//   const HeaderFb1({required this.text,this.subtitle="", Key? key}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             text,
//             style: const TextStyle(
//                 fontSize: 18, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 147, 20, 20)),
//           ),
//           Text(
//             subtitle,
//             style: const TextStyle(
//                 fontSize: 12, fontWeight: FontWeight.normal, color: Color.fromARGB(255, 202, 153, 153)),
//           ),
//         ],
//     );
//   }
// }



// class HeaderFb1 extends StatelessWidget {
//   final String text;
//   final String subtitle;
//   const HeaderFb1({required this.text,this.subtitle="", Key? key}):super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             text,
//             style: const TextStyle(
//                 fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//           ),
//           Text(
//             subtitle,
//             style: const TextStyle(
//                 fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
//           ),
//         ],
//     );
//   }
// }



// Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             "Header",
//             style: const TextStyle(
//                 fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//           ),
//           Text(
//             "Subtitle",
//             style: const TextStyle(
//                 fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
//           ),
//         ],
//       )