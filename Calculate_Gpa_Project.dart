import 'dart:io';

void main() {
  List numberofhours = [];
  List gradeofsubjects = [];
  List resultall = [];
  num TotalHour = 0;
  num Totalgpa = 0;
  num Result = 0;
  num result = 0;
  String emojji = "\u{1F388}";
  String emojjii = "\u{1F389}";
  String emojjiii = "\u{1F636}";
  String emojjiiii = "\u{1F608}";
  String emogi = "\u{1F648}";
  void Appreciation() {
    if (result == 4.0)
      print("You Got A+ in This Semster $emojji$emojjii");
    else if (result < 4.0 && result > 3.7)
      print("You Got A in This Semster $emojji$emojjii");
    else if (result <= 3.7 && result > 3.3)
      print("You Got A- in This Semster $emojji$emojjii");
    else if (result <= 3.3 && result > 3.0)
      print("You Got B+ in This Semster $emojji$emojjii");
    else if (result <= 3.0 && result > 2.7)
      print("You Got B in This Semster $emojji$emojjii");
    else if (result <= 2.7 && result > 2.3)
      print("You Got B- in This Semster $emojji$emojjii");
    else if (result <= 2.3 && result > 2.0)
      print("You Got C+ ");
    else if (result <= 2.0 && result > 1.7)
      print("You Got C in This Semster $emojji$emojjii");
    else if (result <= 1.7 && result > 1.3)
      print("You Got C- in This Semster $emojji$emojjii");
    else if (result <= 1.3 && result > 1.0)
      print("You Got D+ in This Semster $emojji$emojjii");
    else if (result == 1)
      print("You Got D in This Semster $emojji$emojjii");
    else if (result < 1 || result == 0)
      print("You Got F $emojjiii A7sn $emojjiiii ");

    print("\n\"Congratulations $emojji$emojjii\"\n");
  }

  void gpa() {
    print("How many Subjects do U Study In This Semester ?");
    int number = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < number; i++) {
      print('Enter GPA for Subject ${i + 1} in This Semster:-');
      double Grade = double.parse(stdin.readLineSync()!);
      gradeofsubjects.add(Grade);
      try {
        print('Enter The Number Of Hours For This Subject :-');
        int Hour = int.parse(stdin.readLineSync()!);
        numberofhours.add(Hour);
        TotalHour += Hour;
      } catch (e) {
        break;
      }
    }

    for (int i = 0; i < number; i++) {
      Result = (gradeofsubjects[i] * numberofhours[i]);
      resultall.add(Result);
    }

    for (int i = 0; i < number; i++) {
      Totalgpa += resultall[i];
    }
    result = (Totalgpa / TotalHour);
    print("\nTotal GPA = $result in This Semster");
    Appreciation();
  }

  print("What Is The Order Of This Semester ?");
  print("(1-2-3-4-5-6-....?)");
  try {
    int order = int.parse(stdin.readLineSync()!);
    if (order == 1) {
      gpa();
    } else if (order < 1) {
      print("\"Invalid Order!!! Try To Enter The Right Order $emogi$emogi \"");
    } else if (order > 1) {
      List previousHours = [];
      double gpaofsemester = 0;
      int Hoursofsemester = 0;
      double PreviousGpaSum = 0.0;
      int PreviousHoursSum = 0;
      double Gpa;
      List GPA = [];

      for (int i = 1; i < order; i++) {
        print("Enter The Gpa Of Semester \'$i\'");
        gpaofsemester = double.parse(stdin.readLineSync()!);
        print("How Many Hours Are In The Semester \'$i\' ?");
        Hoursofsemester = int.parse(stdin.readLineSync()!);

        // previousGpa.add(gpaofsemester);
        // PreviousGpaSum += gpaofsemester;
        previousHours.add(Hoursofsemester);
        PreviousHoursSum += Hoursofsemester;
        Gpa = gpaofsemester * Hoursofsemester;
        GPA.add(Gpa);
        PreviousGpaSum += Gpa;
      }
      gpa();
      num TotalGpa = PreviousGpaSum + result * TotalHour;
      num TotalHours = PreviousHoursSum + TotalHour;
      num Totalpreviousgpa = TotalGpa / TotalHours;
      print("\nYour Total Gpa Until now = $Totalpreviousgpa ");
      result = Totalpreviousgpa;
      Appreciation();
    }
  } catch (e) {
    print("Enter a Right Integer value ya 7iawan $emogi$emogi");
  }
}
