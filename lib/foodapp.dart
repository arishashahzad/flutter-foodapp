import 'package:flutter/material.dart';
import 'package:foodapp_ui/models/model.dart';

class FoodAppUI extends StatelessWidget {
  final List<foodapp> foodItems = [
    foodapp(
      name: "Chicken Kabobs",
      rating: 4.5,
      review: "(25 reviews)",
     $person: '\$19 / Person',
      like: "246 like",
      imageUrl:
          "https://www.ambitiouskitchen.com/wp-content/uploads/2019/08/Greek-Chicken-Kabobs-4-594x594.jpg",
    ),
    foodapp(
      name: "Tandoori Chicken",
      rating: 3.0,
      review: "(25 reviews)",
       $person: '\$19 / Person',
      like: "356 like",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6RduOMas2LUVcJdOJGPDR5UYsb3SHMEhNig&usqp=CAU",
    ),
      foodapp(
      name: "Chicken Cutlets",
      rating: 4.2,
      review: "(40 reviews)",
       $person: '\$40 / Person',
      like: "800 like",
      imageUrl:
          "https://hips.hearstapps.com/hmg-prod/images/delish-190619-parmesan-chicken-cutlets-089-landscape-pf-1561750863.jpg?resize=1200:*",
    ),


     foodapp(
      name: "Burger",
      rating: 4.4,
      review: "(30 reviews)",
       $person: '\$20 / Person',
      like: "200 like",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMqxblUCytv_3FcErsPcP8oQe_0iK9kezGHw&usqp=CAU",
    ),

     foodapp(
      name: "Pizza",
      rating: 4.9,
      review: "(32 reviews)",
       $person: '\$23 / Person',
      like: "20 like",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-GoifYeT-dHIci0z9snUaMcPPaUoYRa28x11bqGf0v_AeGLOcYTRUUJrrkFe-95RIAwo&usqp=CAU",
    ),
      foodapp(
      name: "Chicken Biryani",
      rating: 5.1,
      review: "(32 reviews)",
       $person: '\$23 / Person',
      like: "20 like",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfwPYZgSxdukYWtKIKceF5TUMVMFme-6Z_UA&usqp=CAU",
    ),
    

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Items"),
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.pink,
        titleTextStyle: TextStyle(fontSize: 30,),
        centerTitle: true,
      
        
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          foodapp foodItem = foodItems[index];
          return Card(
            elevation: 4.0,
           
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0), 
            ),
            color: Colors.white, 
            child: ListTile(
              leading: Container(
                width: 100,
                height: 250,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.zero,
                  image: DecorationImage(
                    image: NetworkImage(foodItem.imageUrl),
                    fit: BoxFit.fill,
                  ),
                 )
              ),
              title: Text(
                foodItem.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 15.0,),
                      SizedBox(width: 2 ,),
                      Icon(Icons.star, color: Colors.yellow, size: 15.0),
                        SizedBox(width: 2 ,),
                      Icon(Icons.star, color: Colors.yellow, size: 15.0),
                        SizedBox(width: 2 ,),
                      Icon(Icons.star, color: Colors.yellow, size: 15.0),
                        SizedBox(width: 2 ,),
                      Icon(Icons.star, color: Colors.yellow, size: 15.0),
                      SizedBox(width: 5),
                      Text(
                        foodItem.rating.toString(),
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5),
                      Text(foodItem.review,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                    ],
                  ),
                 Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
 
  children: [
    Row(
      children: [
        
        Icon(Icons.thumb_up, size: 18.0),
        Text(foodItem.like.toString(), style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100)),
      ],
    ),
    Text(foodItem.$person.toString(),  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), )
  ],
),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
