import 'package:first_app/constants/images_assets.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:flutter/material.dart';

class ProdutoScreen extends StatelessWidget {
  final ProdutoModel produto;

  const ProdutoScreen({
    super.key,
    required this.produto,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shadowColor: Color(colors),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.ios_share_rounded))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            // margin: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Image.asset(produto.imagem,width: MediaQuery.of(context).size.width, height: 200, fit: BoxFit.contain),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child:  Column(
                        children: [
                          Text(produto.titulo, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                         
                        ],
                      ),
                    ),
                    
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child:  Icon(Icons.favorite_border_outlined, color: Colors.red, size: 30,))
                  ],
                ),
                 const Row(
                          children: [
                            Text("1kg, Price", style: TextStyle(fontSize: 15),),
                          ],
                        ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        
                        child: Row(
                        
                        children: [
                          const Icon(Icons.remove, size: 30),
                           Container(
                              decoration: BoxDecoration(
                                border: Border.all(width: 0.2),
                                borderRadius: BorderRadius.all(Radius.circular(100))
                              ),
                             padding: EdgeInsets.all(10.0),
                             child: Text(produto.quantidade.toString(), style: TextStyle(fontSize: 20),),
                           ),
                      const Icon(Icons.add, size: 30,color: Colors.green)
                        ],
                      )),
                     Text('R\$\4.99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                    ],
                  ),
                ),
                Container(
                  
                  margin: EdgeInsets.only(top: 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Text("Product Detail", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                      Icon(Icons.keyboard_arrow_down_rounded)
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
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Review", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow,),
                          Icon(Icons.star, color: Colors.yellow,),
                          Icon(Icons.star, color: Colors.yellow,),
                          Icon(Icons.star, color: Colors.yellow,),
                          Icon(Icons.star, color: Colors.yellow,),
                          Icon(Icons.chevron_right_rounded)
                        ],
                      ),
                      
                    ],
                  ),
                ),

                // ElevatedButton(onPressed: () {}, child: Text("data")),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  decoration: BoxDecoration(color: Colors.green,  borderRadius: BorderRadius.all(Radius.circular(15))),
                  width: MediaQuery.of(context).size.width,
                  
                  padding: EdgeInsets.all(20),
                  
                  child: Center(child: Text("Add To Basket", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))))
              ],
            ),
          ),
          
        ),
      ),
      
    );
  }
}