import 'package:flutter/material.dart';
import 'package:flutter_quiz/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: Image.asset(
                  'assets/images/quiz-logo.png'
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'ဉာဏ်စမ်းတွေဖြေကြည့်ကြရအောင်',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context)=> const QuestionScreen())
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.arrow_right_outlined),
                    Text(
                      'စလိုက်ကြရအောင်'
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
