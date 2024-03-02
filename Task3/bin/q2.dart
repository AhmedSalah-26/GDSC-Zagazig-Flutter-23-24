import 'dart:io';

class BankAccount {
  int accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print("Deposit of \$${amount.toStringAsFixed(2)} successful.");
    } else {
      print("Invalid amount for deposit.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Withdrawal of \$${amount.toStringAsFixed(2)} successful.");
    } else {
      print("Insufficient funds or invalid amount for withdrawal.");
    }
  }

  void displayBalance() {
    print("Account Number: $accountNumber");
    print("Account Holder Name: $accountHolderName");
    print("Current Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Create two bank account objects
  BankAccount account1 = BankAccount(123456, "John Doe", 1000.0);
  BankAccount account2 = BankAccount(789012, "Jane Smith", 500.0);

  // Perform deposits and withdrawals
  account1.deposit(200.0);
  account1.withdraw(50.0);
  account2.deposit(100.0);
  account2.withdraw(700.0);

  // Display final balances
  print("\nFinal Balance for Account 1:");
  account1.displayBalance();
  print("\nFinal Balance for Account 2:");
  account2.displayBalance();
}
