passValidator(String? value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value!.isEmpty) {
    return 'Por favor, digite uma senha';
  }

  if (!value.contains(RegExp(r'[A-Z]'))) {
    return 'Por favor, insira pelo menos uma letra maiúscula';
  }

  if (!value.contains(RegExp(r'[a-z]'))) {
    return 'Por favor, insira pelo menos uma letra minúscula';
  }

  if (!value.contains(RegExp(r'[!@#\$&*~]'))) {
    return 'Por favor, insira pelo menos um caractere especial (!, @, #, \\, \$, &, *, ~)';
  }

  if (!value.contains(RegExp(r'[0-9]'))) {
    return 'Por favor, insira pelo menos um número';
  }

  if (value.length < 8) {
    return 'Por favor, insira uma senha com pelo menos 8 caracteres';
  }

  if (!regex.hasMatch(value)) {
    return 'Por favor, entre com uma senha válida';
  }

  return null;
}
