import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/*void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set status bar to transparent to let gradient show through
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Career Evaluator',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto', // Using default, but Inter/Poppins would match better
      ),
      // This is now the HomePage widget, ready to be navigated to from your Login page
      home: const HomePage(),
    );
  }
}
*/
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Extend body behind app bar/status bar area
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // Approximating the gradient colors from the image
            colors: [
              Color(0xFFE0F4F5), // Light Mint/Cyan
              Color(0xFFF9FDC3), // Light Yellow
              Color(0xFFFEFF8B), // Vibrant Yellow at bottom
            ],
            stops: [0.0, 0.6, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Top Navigation Row ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCircularButton(
                      icon: Icons.help_outline_rounded,
                      onTap: () {},
                    ),
                    _buildCircularButton(
                      icon: Icons.person_outline_rounded,
                      onTap: () {},
                    ),
                  ],
                ),

                const Spacer(flex: 2),

                // --- Main Left-Aligned Text ---
                const Text(
                  "Hi User,",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Are you ready\nfor your career?",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    height: 1.1,
                    letterSpacing: -0.5,
                  ),
                ),

                const Spacer(flex: 2),

                // --- Secondary Right-Aligned Text ---
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "Evaluate,",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                      Text(
                        "for AI-driven\ncareer suggestion.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(flex: 3),

                // --- Action Button ---
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Add navigation or logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 48,
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        "Evaluate",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),

                const Spacer(flex: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget for the top circular buttons
  Widget _buildCircularButton({
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon, color: Colors.black87, size: 24),
      ),
    );
  }
}
