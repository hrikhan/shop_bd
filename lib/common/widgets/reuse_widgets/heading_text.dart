import 'package:flutter/material.dart';

class section_heading extends StatelessWidget {
  const section_heading({
    super.key,
    this.textcolor,
    required this.showactionbutton,
    required this.tittle,
    this.buttontittle = 'show all',
    this.onpressed, 
     this.butttittlecolor,
  });

  final Color? textcolor;
  final bool showactionbutton;
  final String tittle, buttontittle;
  final void Function()? onpressed;
  final Color? butttittlecolor;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        tittle,
        style:
            Theme.of(context).textTheme.headlineSmall!.apply(color: textcolor),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      if (showactionbutton)
        TextButton(onPressed: onpressed, child: Text(buttontittle,style: TextStyle(color: butttittlecolor),)),
    ]);
  }
}
