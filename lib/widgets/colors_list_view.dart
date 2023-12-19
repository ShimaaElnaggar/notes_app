import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive?  CircleAvatar(
      radius: 38,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: color,
      ),
    ):CircleAvatar(
      radius: 38,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
int currentIndex=0;
List<Color> colors=[
  const Color(0xffCDB4DB),
  const Color(0xffFFC8DD),
  const Color(0xffFFAFCC),
  const Color(0xffBDE0FE),
  const Color(0xffA2D2FF),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context,index){
            return  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  setState(() {

                  });
                },
                  child: ColorItem(
                    isActive:currentIndex == index,
                    color: colors[index],
                  ),
              ),
            );
          }
      ),
    );
  }
}