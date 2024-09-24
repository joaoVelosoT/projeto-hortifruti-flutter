import 'package:first_app/constants/images_assets.dart';
import 'package:flutter/material.dart';

class ProdutoScreen extends StatelessWidget {
  const ProdutoScreen({
    super.key,
    
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Image.asset("assets/images/apple.png",width: MediaQuery.of(context).size.width, height: 200, fit: BoxFit.contain),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Column(
                      children: [
                        Text("Natual red Apple", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                       
                      ],
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: const Icon(Icons.favorite_border_outlined))
                ],
              ),
               const Row(
                        children: [
                          Text("1kg, Price", style: TextStyle(fontSize: 15),),
                        ],
                      ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(child: const Row(
                    children: [
                      Icon(Icons.remove, size: 30),
                       Padding(
                         padding: EdgeInsets.all(16.0),
                         child: Text("1", style: TextStyle(fontSize: 20),),
                       ),
                  Icon(Icons.add, size: 30,color: Colors.green)
                    ],
                  )),
                 Text('R\$\4.99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: const Row(
                  children: [
                    Text("Product Detail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                  ],
                ),
              ),
               Text("Apples Are Nutritious. Apples May Be Good For Weight Loss. Apples May Be Googd For You Heart. As Part Of a Healtful And Varied Diet."),
               Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Nutritions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    Row(
                      children: [
                        Text("100gr"),
                        const Icon(Icons.chevron_right_rounded)
                      ],
                    ),
                    
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Review", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        const Icon(Icons.chevron_right_rounded)
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ),
      
    );
  }
}