
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => QuizProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini E-Learning',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}

// ---------------- MODELS ----------------
class Subject {
  final String id;
  final String name;
  final String studyMaterialText;
  final List<Question> questions;
  final String image; 

  Subject({
    required this.id,
    required this.name,
    required this.studyMaterialText,
    required this.questions,
    required this.image,
  });
}

class Question {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
  });
}

// ---------------- DUMMY DATA ----------------
final List<Subject> subjects = [
  Subject(
    id: '1',
    name: 'Computer Science',
    image: 'assets/images/computer-science.png',
    studyMaterialText:
        """
# Computer Science 💻

## 📖 Introduction
Computer Science is the study of computers, software, and computational systems. It focuses on how data is processed, how programs are written, and how problems can be solved efficiently using algorithms.

It is one of the most important fields in today’s digital world and is used in mobile apps, websites, artificial intelligence, and more.

---

## 🧠 Basic Components of a Computer

### 1. Hardware
Physical parts of a computer:
- CPU (Central Processing Unit)
- Keyboard, Mouse
- Monitor
- Hard Disk

### 2. Software
Programs that run on hardware:
- System Software (Operating System)
- Application Software (Apps like Chrome, WhatsApp)

---

## ⚙️ CPU (Central Processing Unit)
CPU is called the **brain of the computer**.

### It has 3 main parts:
- **ALU (Arithmetic Logic Unit)** → Performs calculations  
- **CU (Control Unit)** → Controls operations  
- **Registers** → Temporary storage  

---

## 💾 Memory and Storage

### Types of Memory:
- **RAM (Random Access Memory)**  
  - Temporary memory  
  - Fast but volatile  

- **ROM (Read Only Memory)**  
  - Permanent memory  
  - Stores important instructions  

### Storage Devices:
- Hard Disk  
- SSD  
- Pen Drive  

---

## 🧑‍💻 Programming Languages

Programming is used to give instructions to computers.

### Types:
- **Low-Level Languages** → Machine Language, Assembly  
- **High-Level Languages** → C, Java, Python, Dart  

### Example:
```dart
print("Hello World");
""",
    questions: [
      Question(
        text: 'What is the brain of the computer?',
        options: ['CPU', 'RAM', 'Hard Disk', 'Keyboard'],
        correctAnswerIndex: 0,
      ),
      Question(
        text: 'Which language is used for Flutter?',
        options: ['Java', 'Kotlin', 'Dart', 'Python'],
        correctAnswerIndex: 2,
      ),
      Question(
        text: 'What does RAM stand for?',
        options: [
          'Random Access Memory',
          'Read Access Memory',
          'Run Access Memory',
          'None'
        ],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  Subject(
    id: '2',
    name: 'Mathematics',
    image: 'assets/images/mathematics.png',
    studyMaterialText:
        """
# Mathematics 📐

## 📖 Introduction
Mathematics is the study of numbers, shapes, and patterns. It helps us solve problems logically and is used in science, engineering, and daily life.

---

## 🔢 Basic Concepts
- **Numbers**: Natural, Whole, Integers, Rational, Irrational  
- **Operations**: Addition (+), Subtraction (-), Multiplication (×), Division (÷)  
- **Fractions & Decimals**: Represent parts of a whole  

---

## 📊 Algebra
Algebra deals with variables and equations.

### Example:
If  
2x + 4 = 10  
Then,  
2x = 6  
x = 3  

---

## 📐 Geometry
Geometry is the study of shapes and sizes.

- **Triangle** → 3 sides  
- **Square** → 4 equal sides  
- **Circle** → Round shape  

### Formula:
Area of Circle = π × r²  

---

## 📈 Mensuration
Mensuration deals with measurement of area and volume.

- Area of Rectangle = length × breadth  
- Volume of Cube = side³  

---

## 📉 Importance of Mathematics
- Used in daily calculations  
- Helps in logical thinking  
- Essential for science and technology  

---

## 🧠 Quick Summary
- Mathematics = Numbers + Logic  
- Includes Algebra, Geometry, Arithmetic  
- Used everywhere in real life  

""",
    questions: [
      Question(
        text: 'What is 2 + 2?',
        options: ['3', '4', '5', '6'],
        correctAnswerIndex: 1,
      ),
      Question(
        text: 'What is the square root of 16?',
        options: ['2', '4', '6', '8'],
        correctAnswerIndex: 1,
      ),
      Question(
        text: 'What is 10 * 5?',
        options: ['50', '40', '60', '30'],
        correctAnswerIndex: 0,
      ),
    ],
  ),
  Subject(
  id: '3',
  name: 'Physics',
  image: 'assets/images/physics.png',
  studyMaterialText:
     """
# Physics ⚛️

## 📖 Introduction
Physics is the study of matter, energy, and the interaction between them. It helps us understand how the universe works, from small particles to large planets.

---

## 🧭 Motion
Motion is the change in position of an object over time.

### Types of Motion:
- **Linear Motion** → Straight line movement  
- **Circular Motion** → Movement in a circle  
- **Periodic Motion** → Repeats at regular intervals  

### Formula:
Speed = Distance / Time  

---

## 🧲 Force
Force is a push or pull acting on an object.

- Unit of Force = **Newton (N)**  
- Force can change shape, speed, or direction  

### Formula:
Force = Mass × Acceleration (F = m × a)

---

## ⚡ Energy
Energy is the ability to do work.

### Types of Energy:
- Kinetic Energy (Energy of motion)  
- Potential Energy (Stored energy)  
- Heat Energy  
- Electrical Energy  

---

## 🔋 Work and Power
- **Work** = Force × Distance  
- **Power** = Work / Time  

### Units:
- Work → Joule (J)  
- Power → Watt (W)  

---

## 🌍 Gravity
Gravity is the force that attracts objects toward the Earth.

- Discovered by **Isaac Newton**  
- Keeps planets in orbit  
- Makes objects fall down  

---

## 🧠 Importance of Physics
- Explains natural phenomena  
- Used in engineering and technology  
- Helps in building machines and devices  

---

## 🧪 Practice Question
A car travels 100 meters in 10 seconds.  
👉 What is its speed?

---

## 🧠 Quick Summary
- Physics = Study of Matter + Energy  
- Key topics: Motion, Force, Energy, Gravity  
- Used in daily life and modern technology  

""",
  questions: [
    Question(
      text: 'What is the unit of force?',
      options: ['Newton', 'Joule', 'Watt', 'Pascal'],
      correctAnswerIndex: 0,
    ),
    Question(
      text: 'Who discovered gravity?',
      options: ['Einstein', 'Newton', 'Galileo', 'Tesla'],
      correctAnswerIndex: 1,
    ),
    Question(
      text: 'What is speed?',
      options: [
        'Distance/Time',
        'Time/Distance',
        'Mass/Volume',
        'Force/Area'
      ],
      correctAnswerIndex: 0,
    ),
  ],
),
Subject(
  id: '4',
  name: 'History',
  image: 'assets/images/history.png',
  studyMaterialText:
     """
# History 🏛️

## 📖 Introduction
History is the study of past events, civilizations, and important developments. It helps us understand how societies evolved and how the modern world was formed.

---

## 🌍 Ancient Civilizations
Early human societies developed into great civilizations.

### Examples:
- **Indus Valley Civilization** (India)  
- **Egyptian Civilization** (Pyramids, Pharaohs)  
- **Mesopotamian Civilization** (First writing system)  

---

## 👑 Medieval Period
This period saw the rise of kingdoms and empires.

- Kings and rulers controlled large regions  
- Development of culture, art, and architecture  
- Famous monuments like forts and palaces  

---

## 🇮🇳 Modern History (India)
Modern history focuses on the struggle for independence.

### Important Events:
- **1857 Revolt** → First war of independence  
- **Indian National Congress formation (1885)**  
- **Independence (1947)**  

---

## 🧑‍🤝‍🧑 Important Personalities
- **Mahatma Gandhi** → Leader of non-violence  
- **Jawaharlal Nehru** → First Prime Minister of India  
- **Subhas Chandra Bose** → Freedom fighter  

---

## ⚔️ Wars and Revolutions
- World War I (1914–1918)  
- World War II (1939–1945)  
- French Revolution → Equality and rights  

---

## 📜 Importance of History
- Helps us understand the past  
- Teaches lessons from previous mistakes  
- Builds knowledge of culture and heritage  

---

## 🧪 Practice Question
Who was the first Prime Minister of India?

---

## 🧠 Quick Summary
- History = Study of past events  
- Covers ancient, medieval, and modern periods  
- Helps us understand society and culture  

""",
  questions: [
    Question(
      text: 'Who was the first Prime Minister of India?',
      options: ['Mahatma Gandhi', 'Jawaharlal Nehru', 'Sardar Patel', 'Rajendra Prasad'],
      correctAnswerIndex: 1,
    ),
    Question(
      text: 'In which year did India gain independence?',
      options: ['1945', '1946', '1947', '1950'],
      correctAnswerIndex: 2,
    ),
    Question(
      text: 'Who built the Taj Mahal?',
      options: ['Akbar', 'Shah Jahan', 'Aurangzeb', 'Babur'],
      correctAnswerIndex: 1,
    ),
  ],
),
Subject(
  id: '5',
  name: 'Chemistry',
  image: 'assets/images/chemistry.png',
  studyMaterialText:
     """
# Chemistry 🧪

## 📖 Introduction
Chemistry is the study of matter, its properties, composition, and the changes it undergoes. It helps us understand substances around us and how they interact.

---

## ⚛️ Matter
Matter is anything that has mass and occupies space.

### States of Matter:
- **Solid** → Fixed shape and volume  
- **Liquid** → Fixed volume, no fixed shape  
- **Gas** → No fixed shape or volume  

---

## 🔬 Atom and Molecule
- **Atom** → Smallest unit of an element  
- **Molecule** → Combination of atoms  

### Example:
- Water (H₂O) → 2 Hydrogen + 1 Oxygen  

---

## 🧾 Elements and Compounds
- **Element** → Pure substance (e.g., Oxygen, Iron)  
- **Compound** → Combination of elements (e.g., Water, CO₂)  

---

## 🔥 Chemical Reactions
A chemical reaction is a process where substances change into new substances.

### Example:
Hydrogen + Oxygen → Water  

---

## 📊 Periodic Table
- Organized table of all elements  
- Elements are arranged by atomic number  
- Groups and periods help classify elements  

---

## ⚡ Acids, Bases, and Salts
- **Acids** → Sour taste (e.g., HCl)  
- **Bases** → Bitter taste (e.g., NaOH)  
- **Salts** → Formed from acid + base reaction  

---

## 🧠 Importance of Chemistry
- Used in medicine and drugs  
- Helps in manufacturing products  
- Important for agriculture and environment  

---

## 🧪 Practice Question
What is the chemical formula of carbon dioxide?

---

## 🧠 Quick Summary
- Chemistry = Study of matter and reactions  
- Key topics: Atoms, Elements, Reactions  
- Used in daily life and industries  

""",
  questions: [
    Question(
      text: 'What is the chemical symbol for water?',
      options: ['O2', 'H2O', 'CO2', 'NaCl'],
      correctAnswerIndex: 1,
    ),
    Question(
      text: 'What is the atomic number of Oxygen?',
      options: ['6', '7', '8', '9'],
      correctAnswerIndex: 2,
    ),
    Question(
      text: 'Which gas is used in photosynthesis?',
      options: ['Oxygen', 'Nitrogen', 'Carbon Dioxide', 'Hydrogen'],
      correctAnswerIndex: 2,
    ),
  ],
),
];

// ---------------- PROVIDER ----------------
class QuizProvider extends ChangeNotifier {
  int currentQuestionIndex = 0;
  int score = 0;
  int? selectedAnswer;

  void selectAnswer(int index) {
    selectedAnswer = index;
    notifyListeners();
  }

  void nextQuestion(Question question) {
    if (selectedAnswer == question.correctAnswerIndex) {
      score++;
    }
    currentQuestionIndex++;
    selectedAnswer = null;
    notifyListeners();
  }

  void reset() {
    currentQuestionIndex = 0;
    score = 0;
    selectedAnswer = null;
    notifyListeners();
  }
}

// ---------------- HOME SCREEN ----------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  centerTitle: true,
  title: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset(
        'assets/images/logo.png',
        height: 35,
      ),
      const SizedBox(width: 10),
      const Text(
        'Quizzler',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ],
  ),
),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          final subject = subjects[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => StudyMaterialScreen(subject: subject),
                ),
              );
            },
            child: Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  elevation: 4,
  child: Stack(
    children: [
      // Background Image
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          subject.image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),

      // Dark overlay
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black.withOpacity(0.4),
        ),
      ),

      // Text
      Center(
        child: Text(
          subject.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ],
  ),
)
          );
        },
      ),
    );
  }
}

// ---------------- STUDY SCREEN ----------------
class StudyMaterialScreen extends StatelessWidget {
  final Subject subject;

  const StudyMaterialScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subject.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
  child: Markdown(
    data: subject.studyMaterialText,
    styleSheet: MarkdownStyleSheet(
      h1: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      h2: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      p: const TextStyle(fontSize: 16),
    ),
  ),
),
            ElevatedButton(
              onPressed: () {
                Provider.of<QuizProvider>(context, listen: false).reset();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => QuizScreen(subject: subject),
                  ),
                );
              },
              child: const Text('Attempt Quiz'),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------- QUIZ SCREEN ----------------
class QuizScreen extends StatelessWidget {
  final Subject subject;

  const QuizScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProvider>(context);
    final question = subject.questions[provider.currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(title: Text('Quiz: ${subject.name}')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Question ${provider.currentQuestionIndex + 1} of ${subject.questions.length}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(question.text, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ...List.generate(question.options.length, (index) {
              return RadioListTile<int>(
                value: index,
                groupValue: provider.selectedAnswer,
                title: Text(question.options[index]),
                onChanged: (value) {
                  provider.selectAnswer(value!);
                },
              );
            }),
            const Spacer(),
            ElevatedButton(
              onPressed: provider.selectedAnswer == null
                  ? null
                  : () {
                      if (provider.currentQuestionIndex ==
                          subject.questions.length - 1) {
                        provider.nextQuestion(question);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ResultScreen(
                              total: subject.questions.length,
                            ),
                          ),
                        );
                      } else {
                        provider.nextQuestion(question);
                      }
                    },
              child: Text(provider.currentQuestionIndex ==
                      subject.questions.length - 1
                  ? 'Finish Quiz'
                  : 'Next'),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------- RESULT SCREEN ----------------
class ResultScreen extends StatelessWidget {
  final int total;

  const ResultScreen({super.key, required this.total});

  @override
  Widget build(BuildContext context) {
    final score = Provider.of<QuizProvider>(context).score;

    return Scaffold(
      appBar: AppBar(title: const Text('Results')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You scored $score / $total!',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<QuizProvider>(context, listen: false).reset();
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
