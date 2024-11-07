V? conditionOrNull<V>(
  Map<bool Function(), V Function()> variants,
) {
  for (final variant in variants.entries) {
    if (variant.key()) return variant.value();
  }

  return null;
}

V condition<V>(
  Map<bool Function(), V Function()> variants, {
  required V Function() orElse,
}) {
  return conditionOrNull(variants) ?? orElse();
}

V? whenOrNull<K, V>(K value, Map<K, V Function()> variants) {
  for (final variant in variants.entries) {
    if (variant.key == value) return variant.value();
  }

  return null;
}

V when<K, V>(
  K value,
  Map<K, V Function()> variants, {
  required V Function() orElse,
}) {
  return whenOrNull(value, variants) ?? orElse();
}
