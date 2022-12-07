codeValidator(String? value) {
  if (value!.isEmpty) {
    return 'Por favor, digite o códgio de restauração.';
  }

  if (value.length != 5) {
    return 'Código inválido!';
  }

  return null;
}
