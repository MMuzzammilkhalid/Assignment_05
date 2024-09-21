void main() {
  
  List<int> numbers = [10, -5, 0, 8, -3, 7];
  
  
  for (int num in numbers) {
    if (num > 0) {  
      if (num % 2 == 0) {
        print('$num is Even');
      } else {
        print('$num is Odd');
      }
    } else if (num < 0) { 
      print('$num is a Negative Number');
    } else {  // If the number is zero
      print('$num is Zero');
    }
  }
}











void main() {
  
  List<Map<String, dynamic>> students = [
    {
      'name': 'Alice',
      'scores': {'Math': 85, 'Science': 92, 'English': 78}
    },
    {
      'name': 'Bob',
      'scores': {'Math': 58, 'Science': 65, 'English': 70}
    },
    {
      'name': 'Charlie',
      'scores': {'Math': 95, 'Science': 88, 'English': 91}
    },
    {
      'name': 'Diana',
      'scores': {'Math': 45, 'Science': 55, 'English': 60}
    }
  ];
  
  
  for (var student in students) {
    String name = student['name'];
    Map<String, int> scores = student['scores'];

    
    int totalScore = 0;
    int subjectsCount = scores.length;

    for (var score in scores.values) {
      totalScore += score;
    }

    double averageScore = totalScore / subjectsCount;

    
    String grade;
    if (averageScore >= 90) {
      grade = 'A';
    } else if (averageScore >= 80) {
      grade = 'B';
    } else if (averageScore >= 70) {
      grade = 'C';
    } else if (averageScore >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }

  
    print('Student: $name');
    print('Average Score: ${averageScore.toStringAsFixed(2)}');
    print('Grade: $grade');
    print('---');
  }
}










import 'dart:io';

void main() {
  // Initialize an empty list to store tasks
  List<String> tasks = [];

  // Main program loop
  while (true) {
    print("\n--- Task Manager ---");
    print("1. Add a task");
    print("2. Remove a task");
    print("3. Check if a task exists");
    print("4. Display tasks (sorted)");
    print("5. Exit");

    stdout.write("Choose an option: ");
    String choice = stdin.readLineSync() ?? '';

    // Handle menu options
    if (choice == '1') {
      // Add a task
      stdout.write("Enter a task to add: ");
      String task = stdin.readLineSync() ?? '';
      tasks.add(task);
      print("Task '$task' added!");

    } else if (choice == '2') {
      // Remove a task
      stdout.write("Enter a task to remove: ");
      String task = stdin.readLineSync() ?? '';
      if (tasks.contains(task)) {
        tasks.remove(task);
        print("Task '$task' removed!");
      } else {
        print("Task '$task' not found in the list.");
      }

    } else if (choice == '3') {
      // Check if a task exists
      stdout.write("Enter a task to check: ");
      String task = stdin.readLineSync() ?? '';
      if (tasks.contains(task)) {
        print("Task '$task' exists in the list.");
      } else {
        print("Task '$task' does not exist in the list.");
      }

    } else if (choice == '4') {
      // Display tasks sorted alphabetically
      if (tasks.isEmpty) {
        print("The task list is empty.");
      } else {
        tasks.sort();
        print("Tasks (sorted):");
        for (String task in tasks) {
          print(task);
        }
      }

    } else if (choice == '5') {
      // Exit the program
      print("Exiting...");
      break;

    } else {
      // Invalid input handling
      print("Invalid choice, please try again.");
    }
  }
}


