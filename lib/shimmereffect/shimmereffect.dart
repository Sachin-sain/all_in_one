import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatefulWidget {
  const ShimmerEffect({super.key});

  @override
  State<ShimmerEffect> createState() => _ShimmerEffectState();
}

class _ShimmerEffectState extends State<ShimmerEffect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,  // Number of items in the list
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,  // Full width for shimmer effect
              height: 100.0,  // Adjust the height as needed
              child: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,  // Base color for shimmer
                highlightColor: Colors.grey.shade100,  // Highlight color for shimmer
                child: Container(
                  color: Colors.white,  // Dummy content for shimmer effect
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200.0,  // Placeholder width for title
                          height: 20.0,  // Placeholder height for title
                          color: Colors.white,  // Shimmer effect for title
                        ),
                        const SizedBox(height: 10.0),
                        Text("Hello")

                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
