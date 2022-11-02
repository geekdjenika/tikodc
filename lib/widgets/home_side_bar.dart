import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13, color: Colors.white);
    return Column(
      children: [
        _profileImageButton(),
        SizedBox(height: 20,),
        _sideBarItem('heart', '8M', style)
      ],
    );
  }

  _sideBarItem(String iconName, String label, TextStyle style) {
    return Column(
      children: [
        SvgPicture.asset('lib/assets/images/$iconName.svg', color: Colors.white,),
      ],
    );
  }

  _profileImageButton() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image:
                AssetImage(
                  'lib/assets/images/me.jpg'
                )
            )
          ),
        ),
        Positioned(
          bottom: -10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
