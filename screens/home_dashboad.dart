// screens/home_dashboard.dart
class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HabitOSColors.background,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  MomentumRing(score: 0.78).animate().scale(delay: 200.ms),
                  SizedBox(height: 30),
                  _buildAIAssistantCard(),
                  SizedBox(height: 20),
                  _buildStreakSection(),
                  SizedBox(height: 20),
                  _buildQuickActions(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HabitOSColors.primary,
        child: Icon(Icons.auto_awesome, color: Colors.white), // AI Assistant Button
      ),
    );
  }

  Widget _buildAIAssistantCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: HabitOSColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 20)],
      ),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: HabitOSColors.secondary.withOpacity(0.3), child: Icon(Icons.face)),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AI Insight", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("You're RM50 ahead of your savings goal this week! Keep it up.", 
                     style: TextStyle(color: Colors.grey[600], fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}