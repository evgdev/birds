import 'package:flutter/material.dart';
import 'package:flutter_birds/screens/redbook.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'home/home_screen.dart';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(text: "Where is the cat?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
  Question(text: "Where is the dog?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
  Question(text: "Where is the pig?", options: [
    const Option(text: 'on floor', isCorrect: false),
    const Option(text: 'in kitchen', isCorrect: false),
    const Option(text: 'on cabinet', isCorrect: true),
    const Option(text: 'on balcony', isCorrect: false),
  ]),
];

@override
class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueSetter<Option> onClickedOption;
  const OptionsWidget({
    super.key,
    required this.question,
    required this.onClickedOption,
  });

  @override
  Widget build(BuildContext context) => ListView(
        physics: BouncingScrollPhysics(),
        children: question.options
            .map((option) => buildOption(context, option))
            .toList(),
      );

  Widget buildOption(BuildContext context, option) {
    final color = getColorForOption(option, question);
    return GestureDetector(
      onTap: () {
        print("object");
        onClickedOption;
      },
      child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: buildAnswer(option)),
    );
  }

  Widget buildAnswer(Option option) {
    return SizedBox(
      child: Row(
        children: [
          Text(option.text),
        ],
      ),
    );
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if (isSelected) {
      return option.isCorrect ? Colors.green : Colors.red;
    } else if (option.isCorrect) {
      // return Colors.green;
    }
    if (!isSelected) {
      return Colors.grey;
    }
    return Colors.grey;
  }
}

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Question question;

  @override
  void initState() {
    super.initState();
    question = questions.first;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//        body: WebViewWidget(controller: controller),
        body: Column(
          children: [
            const SizedBox(height: 20),
//            Text("Question "+_questionNumber+" / "+_questions.length),
            Text("Question "),
            const Divider(
              thickness: 1,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: questions.length,
                itemBuilder: ((context, index) {
                  final question = questions[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          question.text,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              question.isLocked = false;
//                              question.selectedOption = null;
                            });
                          },
                          child: Text("reset")),
                      Expanded(
                        child: OptionsWidget(
                            question: question, onClickedOption: selectOption),
                      )
                    ],
                  );
                }),
              ),
            ),
          ],
        ),

        //bottomNavigationBar: BottomNavBar(1),
        bottomNavigationBar: GNav(
          backgroundColor: Color.fromARGB(255, 12, 58, 11),
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.grey.shade900,
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "Главная",
            ),
            GButton(
              icon: Icons.audiotrack_outlined,
              text: "Голоса птиц",
            ),
            GButton(
              icon: Icons.book_outlined,
              text: "Красная Книга",
            ),
            GButton(
              icon: Icons.info_outline,
              text: "Инфо",
            ),
            GButton(
              icon: Icons.info_outline,
              text: "Квиз",
            ),
          ],
          selectedIndex: 4,
          onTabChange: (index) {
            switch (index) {
              case 0:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
                break;
              // case 1:
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => ListScreen()));
              //   break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RedbookScreen()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RedbookScreen()));
                break;
              case 4:
                {}
                break;
            }
          },
        ),
      ),
    );
  }

  void selectOption(Option option) {
    setState(() {
      question.selectedOption = option;
    });
    print("selected");
    print(question.selectedOption);
  }
}
