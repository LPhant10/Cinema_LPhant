import 'package:flutter/material.dart';

class CustomAbbbar extends StatelessWidget {
  const CustomAbbbar({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Icon(Icons.movie_outlined, color: colors.primary),
              const SizedBox(width: 5,),
              Text('CinemaLP', style:  titleStyle,),
      
              Spacer(),
      
              IconButton
              (onPressed: (){
      
              }, 
              icon:const Icon(Icons.search)),
            ],
          ),
        ),
      ),
    );
  }
}
