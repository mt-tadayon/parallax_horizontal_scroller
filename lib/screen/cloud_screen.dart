import 'package:flutter/material.dart';

class CloudScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'http://www.testomic.com/public/codepen-assets/img/paralax/background.jpg'),
          fit: BoxFit.cover
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Image(
              repeat: ImageRepeat.repeatX,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/rocks2.png'),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: Image(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              repeat: ImageRepeat.repeatX,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/rocks1.png'),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Image(
              repeat: ImageRepeat.repeatX,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/hills.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image(
              repeat: ImageRepeat.repeatX,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/foreground.png'),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
