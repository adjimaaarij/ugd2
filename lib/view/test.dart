// Widget inputForm(
//   FormFieldValidator<String> validator, {
//   required TextEditingController controller,
//   required String hintTxt,
//   required String helperTxt,
//   IconData iconData,
// }) {
//   bool _isPasswordVisible = false;

//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       TextFormField(
//         controller: controller,
//         obscureText: !_isPasswordVisible,
//         validator: validator,
//         decoration: InputDecoration(
//           hintText: hintTxt,
//           helperText: helperTxt,
//           icon: Icon(iconData),
//           suffixIcon: IconButton(
//             icon: Icon(
//               _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
//             ),
//             onPressed: () {
//               _isPasswordVisible = !_isPasswordVisible;
//               controller.value = controller.value.copyWith(
//                 text: controller.text, // Maintain existing text
//                 selection: TextSelection.collapsed(offset: controller.text.length), // Maintain cursor position
//               );
//             },
//           ),
//         ),
//       ),
//     ],
//   );
// }
