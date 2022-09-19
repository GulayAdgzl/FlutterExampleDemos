import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  final String loginKey='Hello Again';
    final String loginKey1='Welcome back,you\'ve been missed!';

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey[300],
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          
          child: Center(
            
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(children: [
               Text(loginKey,
              style:  ProjectStyle.loginStyle,
              ),
              ProjectSizedBox.size1,
              Text(loginKey1,
              style:  ProjectStyle.loginStyle,
              ),
             ProjectSizedBox.size2,

             Padding(padding:ProjectPadding.pagePaddingHorizontal,
             
               child: Container(

                decoration: ProjeUtility.boxDecoration,
                
               child: const Padding(
                  padding: ProjectPadding1.pagePaddingleft,
                  child: TextField(
                  decoration: InputDecoration(border: InputBorder.none,
                  hintText: 'Email',
                  ),
                ),
               ),
                ),
             ),
             ProjectSizedBox.size1,
               Padding(padding:ProjectPadding.pagePaddingHorizontal,
             
               child: Container(

                decoration: ProjeUtility.boxDecoration,
                
               child: const Padding(
                  padding: ProjectPadding1.pagePaddingleft,
                  child: TextField(
                    obscureText: true,
                  decoration: InputDecoration(border: InputBorder.none,
                  hintText: 'Password',
                  ),
                ),
               ),
               
                ),
             ),
             ProjectSizedBox.size1,
             TextButton(onPressed: (){}, child: Text('Login',
             style: Theme.of(context).textTheme.subtitle1),
             style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states){
              if(states.contains(MaterialState.pressed)){
                return Colors.green;
              }
              return Colors.white;
             })),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Not a member?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),

                ),
                const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                
              ],
             )
             
            
           
            ],),
          
          ),),
            ),
        );

        
      
  }
}
          
class ProjectPadding{
  static const  pagePaddingHorizontal=const EdgeInsets.symmetric(horizontal: 25.0);
}
class ProjeUtility{
  static BoxDecoration boxDecoration=BoxDecoration(
    color: Colors.grey[200],
                  border: Border.all(color:Colors.white),
                  borderRadius: BorderRadius.circular(12),

  );
}
class ProjectPadding1{
  static const  pagePaddingleft=const EdgeInsets.only(left: 20.0);
}
       
  
  
 

    
   
      //hello again
      //email textfield
      //sign in button
      //not a remember 
    
   
  



class ProjectStyle{
  
   static TextStyle loginStyle=  const TextStyle(
     fontWeight: FontWeight.bold,
        fontSize: 24,
  );
}
class ProjectColors{
   Color we=Colors.indigoAccent;
}
class ProjectSizedBox{
  static SizedBox size1=const  SizedBox(height: 10);
  static SizedBox size2=const SizedBox(height: 20);
}


