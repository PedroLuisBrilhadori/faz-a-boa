emailValidator(String? value) {
  RegExp regex = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

  if (value!.isEmpty) {
    return 'Por favor, digite um email';
  }

  if (!regex.hasMatch(value)) {
    return 'Por favor, entre com um email válido';
  }
}
