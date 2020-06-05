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
        overflow: Overflow.visible,
        children: [
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Image(
              height: MediaQuery.of(context).size.height * 0.40,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/rocks2.png'),
              repeat: ImageRepeat.repeatX,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.25,
            child: Image(
              height: MediaQuery.of(context).size.height * 0.35,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/rocks1.png'),
              repeat: ImageRepeat.repeatX,
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Image(
              height: MediaQuery.of(context).size.height * 0.40,
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/hills.png'),
              repeat: ImageRepeat.repeatX,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image(
              image: NetworkImage(
                  'http://www.testomic.com/public/codepen-assets/img/paralax/foreground.png'),
              height: MediaQuery.of(context).size.height / 2,
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeatX,
            ),
          ),
        ],
      ),
    );
  }
}
