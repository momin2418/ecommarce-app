import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimary = Color(0xFF575DFB);

/// Figma: Frame 343 x 86 (Hug), label + gap 6 + input 56
class CustomInputField extends StatelessWidget {
  final String label;
  final String hint;
  final IconData? icon;
  final bool obscure;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const CustomInputField({
    super.key,
    required this.label,
    required this.hint,
    this.icon,
    this.obscure = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: kPrimary, width: 1.5),
    );

    return SizedBox(
      width: 343,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Label
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 24 / 16,
              letterSpacing: -0.176, // -1.1% of 16
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 6), // Figma gap
          // Input box (height 56)
          SizedBox(
            height: 56,
            child: TextField(
              controller: controller,
              obscureText: obscure,
              keyboardType: keyboardType,
              onChanged: onChanged,
              cursorColor: kPrimary,
              style: GoogleFonts.inter(fontSize: 16, color: Colors.black),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFFB0B0B8),
                ),
                prefixIcon: icon == null
                    ? null
                    : Icon(icon, color: kPrimary, size: 24),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                enabledBorder: border,
                focusedBorder: border,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ব্যবহার:

const CustomInputField(
  label: 'Email',
  hint: 'Ex: abc@example.com',
  icon: Ionicons.at_outline,
  keyboardType: TextInputType.emailAddress,
),
const SizedBox(height: 28),
const CustomInputField(
  label: 'Your Name',
  hint: 'Ex. Saul Ramirez',
  icon: Ionicons.person_outline,
),
const SizedBox(height: 28),
const CustomInputField(
  label: 'Your Password',
  hint: 'Password',
  icon: Ionicons.lock_closed_outline,
  obscure: true,
),
*/