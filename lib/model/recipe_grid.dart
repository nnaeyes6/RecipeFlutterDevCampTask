// import 'package:flutter/material.dart';
// import 'package:recipe_app_devcamp/model/data_model.dart';

// class RecipeCard extends StatelessWidget {
//   const RecipeCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       itemCount: datalist.length,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemBuilder: ((context, index) => InkWell(
//             onTap: () {},
//             child: Padding(
//               padding: const EdgeInsets.only(left: 8.0, right: 8, bottom: 16),
//               child: Column(
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.symmetric(
//                         horizontal: 22, vertical: 10),
//                     width: 180,
//                     height: 180,
//                     decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.6),
//                             offset: const Offset(
//                               0.0,
//                               10.0,
//                             ),
//                             blurRadius: 10.0,
//                             spreadRadius: -6.0,
//                           ),
//                         ],
//                         image: DecorationImage(
//                           colorFilter: ColorFilter.mode(
//                             Colors.black.withOpacity(0.35),
//                             BlendMode.multiply,
//                           ),
//                           image: AssetImage(datalist[index].cityImage),
//                         )),
//                   ),
//                   Stack(
//                     children: [
//                       Container(
//                         alignment: Alignment.center,
//                         child: Text(
//                           datalist[index].cityName,
//                           style: const TextStyle(
//                               color: Colors.white70,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }
