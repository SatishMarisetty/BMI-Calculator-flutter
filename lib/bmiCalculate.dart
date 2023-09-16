class CalculateBMI{
  static late double height,weight,_bmi=0.0;
  void setter(double inches, double kgs) {
    height = inches;
    weight = kgs;
    height = height / 39.37;
    _bmi = weight / (height * height);
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }
  String getResult() {
    if (_bmi < 18.5) {
      return "Underweight";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Normal Weight";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String getInterpretation() {
    if (_bmi < 18.5) {
      return "You are underweight, which may indicate insufficient nutrition. Consider consulting a healthcare professional.";
    } else if (_bmi >= 18.5 && _bmi < 24.9) {
      return "Congratulations! You have a normal BMI, which is associated with good health.";
    } else if (_bmi >= 25 && _bmi < 29.9) {
      return "You are overweight, which may increase the risk of various health problems. Consider adopting a healthier lifestyle.";
    } else {
      return "You are obese, which is associated with an increased risk of serious health conditions. It's important to seek guidance from a healthcare provider.";
    }
  }
}