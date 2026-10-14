import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimary = Color(0xFF575DFB);

/// Figma: "Login" link, primary color, bold, underlined
class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double fontSize;
  final bool underline;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.fontSize = 16,
    this.underline = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,

        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: kPrimary,

      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: fontSize * -0.011, // -1.1%
          color: kPrimary,
          decoration: underline ? TextDecoration.underline : null,
          decorationColor: kPrimary,
        ),
      ),
    );
  }
}

/// "Already have an account? Login" এক লাইনে
class AuthSwitchRow extends StatelessWidget {
  final String question;
  final String actionText;
  final VoidCallback onPressed;

  const AuthSwitchRow({
    super.key,
    required this.question,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$question ',
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.176,
            color: Colors.black,
          ),
        ),
        CustomTextButton(
            text: actionText,
            onPressed: onPressed,

        ),
      ],
    );
  }
}

/* ব্যবহার:

AuthSwitchRow(
  question: 'Already have an account?',
  actionText: 'Login',
  onPressed: () {
    // Login স্ক্রিনে যাও
  },
),

// শুধু লিংক হিসেবে:
CustomTextButton(text: 'Forgot Password?', onPressed: () {}),
*/