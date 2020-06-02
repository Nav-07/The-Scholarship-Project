# Color Scheme Addition Plan
There will be a Base Class in Dart called Color Scheme, Containing all the default color scheme values and then there would be derived classes having different color schemes.

For Example:
```
class ColorScheme {
    Color base;
    Color checkboxes;
    String fontFamily;
    // other values
    ColorScheme({this.base, this.checkboxes, this.fontFamily});
    // getters
    get colorSchemeBase => base;
    get colorSchemeCheckboxes => checkboxes;
    get colorSchemeFontFamily => fontFamily;
}
```

This is the Example of How the ColorScheme Class Look Like in the Future.