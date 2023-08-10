import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 120,
      child: Stack(clipBehavior: Clip.none, fit: StackFit.expand, children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/Profile Image.png'),
        ),
        Positioned(
          right: -3,
          bottom: 0,
          child: SizedBox(
            height: 42,
            width: 42,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    minimumSize: Size(40, 40),
                    maximumSize: Size(40, 40),
                    backgroundColor: Color.fromARGB(255, 225, 224, 224)),
                onPressed: () {},
                child: SvgPicture.asset('assets/icons/Camera Icon.svg')),
          ),
        )
      ]),
    );
  }
}
