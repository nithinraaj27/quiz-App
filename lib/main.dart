import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_view/quiz_view.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff504B4A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Quiz",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.blue.shade500),),
            Text(" App",style: TextStyle(fontSize: 30,fontStyle: FontStyle.italic,color: Colors.blue.shade50),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              quiz(context: context,imgurl: "https://images.unsplash.com/photo-1598209279122-8541213a0387?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmMyMDB8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",quet: 'Question 1',que: "What is this bike ?",ans: "Rc200",lans: ['Duke200','Rx100']),
              Divider(height: 25,),
              quiz(context: context,imgurl: 'https://images.unsplash.com/photo-1516515429572-bf32372f2409?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGxhbWJvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',que: "What is this Car ?",quet: "Question 2",ans: "Lambho",lans: ['Pagani','Mustang']),
              Divider(height: 25,),
              quiz(context: context,imgurl: "https://images.unsplash.com/photo-1598209279122-8541213a0387?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmMyMDB8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",quet: 'Question 3',que: "What is this bike ?",ans: "Rc200",lans: ['Duke200','Rx100']),
              Divider(height: 25,),
              quiz(context: context,imgurl: "https://images.unsplash.com/photo-1598209279122-8541213a0387?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmMyMDB8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",quet: 'Question 1',que: "What is this bike ?",ans: "Rc200",lans: ['Duke200','Rx100']),
              Divider(height: 25,),
              quiz(context: context,imgurl: "https://images.unsplash.com/photo-1598209279122-8541213a0387?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmMyMDB8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",quet: 'Question 1',que: "What is this bike ?",ans: "Rc200",lans: ['Duke200','Rx100']),
            ],
          ),
        ),
      ),
    );
  }

  QuizView quiz({BuildContext context,String imgurl,String quet,String que,String ans,List<String> lans}) {
    return QuizView(
            image: Container(
              child: Image.network(
                imgurl,
              height: 150,
              fit: BoxFit.cover,
              ),
            ),
              questionTag: quet,
              questionColor: Colors.redAccent.shade700,
              tagColor: Colors.black54,
              backgroundColor: Colors.white70,
              tagBackgroundColor: Color(0xffF1CDC5),
              answerBackgroundColor: Color(0xffA39E9D),
              question: que,
              height: 500,
              width: 350,
              rightAnswer: ans,
              wrongAnswers: lans,
              onRightAnswer: (){
                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Correct!"),
                    );
                  }
                );
              },
              onWrongAnswer: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Wrong!"),
                      );
                    }
                );
              },
          );
  }
}

