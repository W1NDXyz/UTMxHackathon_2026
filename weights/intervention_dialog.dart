// widgets/intervention_dialog.dart
void showIntervention(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.warning_amber_rounded, size: 60, color: HabitOSColors.warning),
          SizedBox(height: 20),
          Text("Pause & Reflect", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(
            "You've ordered GrabFood 4 times this week. If you skip this, you'll hit your 'Emergency Fund' streak today!",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey[700]),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: HabitOSColors.primary,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () => Navigator.pop(context),
            child: Text("Save RM60 Instead", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Continue anyway", style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    ),
  );
}