// widgets/momentum_ring.dart
class MomentumRing extends StatelessWidget {
  final double score; // 0.0 to 1.0
  const MomentumRing({required this.score});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 200, width: 200,
          child: CircularProgressIndicator(
            value: score,
            strokeWidth: 12,
            backgroundColor: HabitOSColors.secondary.withOpacity(0.2),
            color: HabitOSColors.primary,
            strokeCap: StrokeCap.round,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Momentum", style: TextStyle(color: Colors.grey, fontSize: 14)),
            Text("${(score * 100).toInt()}", 
                 style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: HabitOSColors.textMain)),
            Text("Level: Resilient", style: TextStyle(color: HabitOSColors.primary, fontWeight: FontWeight.w600)),
          ],
        ),
      ],
    );
  }
}