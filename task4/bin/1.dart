/*

a) To hide implementation details and control data access.
c) Prefacing the property name with an underscore (_).
a) The ability for objects of different classes to respond to the same method call in different ways.
b) Method overriding
a) To define a template for creating concrete classes.


*/
class Car {
  String _model;
  int _year;
  double _mileage;
  bool _isAutomatic;

  Car(this._model, this._year, this._mileage, this._isAutomatic);

  String getModel() {
    return _model;
  }

  int getYear() {
    return _year;
  }

  double getMileage() {
    return _mileage;
  }

  void updateMileage(double newMileage) {
    _mileage = newMileage;
  }
}
