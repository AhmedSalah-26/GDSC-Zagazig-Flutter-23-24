class Employee {
  int id;
  String name;
  String department;
  double salary;

  Employee(this.id, this.name, this.department, this.salary);

  void displayDetails() {
    print("ID: $id");
    print("Name: $name");
    print("Department: $department");
    print("Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Manager extends Employee {
  String team;

  Manager(int id, String name, String department, double salary, this.team)
      : super(id, name, department, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print("Team: $team");
  }
}

class Worker extends Employee {
  String supervisor;

  Worker(int id, String name, String department, double salary, this.supervisor)
      : super(id, name, department, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print("Supervisor: $supervisor");
  }
}

void main() {
 
}
