import 'package:assignment_easypaisa/widgets/accountcard.dart';
import 'package:assignment_easypaisa/widgets/featureitems.dart';
import 'package:assignment_easypaisa/widgets/quick_action_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: CircleAvatar(child: Text("TA")),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("image/download.png", height: 30, width: 30),
            Column(
              children: [
                Text(
                  "digital",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "bank",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [Icon(Icons.search), Icon(Icons.notifications)],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            // Green Box
            GreenBox(name: "Tashfa Azam", number: "03202183009"),
            SizedBox(height: 12),

            // 3 ICON ROW
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                QuickAction(
                  actionIcon: Icons.monetization_on_outlined,
                  actionText: "Send Money",
                ),
                QuickAction(
                  actionIcon: Icons.padding,
                  actionText: "Bill Payment",
                ),
                QuickAction(
                  actionIcon: Icons.install_mobile_rounded,
                  actionText: "Mobile",
                  subText: "Packages",
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "More with easypaisa",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                spacing: 15,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(
                        icon: Icons.mobile_screen_share_outlined,
                        title: "Easyload",
                      ),
                      IconText(
                        icon: Icons.handshake,
                        title: "Easycash",
                        subtitle: "loan",
                      ),
                      IconText(
                        icon: Icons.shopping_bag,
                        title: "Savings",
                        subtitle: "Pocket",
                      ),
                      IconText(
                        icon: Icons.manage_accounts,
                        title: "Invite & Earn",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(icon: Icons.man, title: "Pinktober"),
                      IconText(icon: Icons.shopping_bag, title: "Term Deposit"),
                      IconText(
                        icon: Icons.battery_0_bar,
                        title: "Daily Rewards",
                      ),
                      IconText(
                        icon: Icons.mail_outline,
                        title: "Buy Now Pay",
                        subtitle: "Later",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconText(
                        icon: Icons.umbrella_sharp,
                        title: "Insurance",
                        subtitle: "Marketplace",
                      ),
                      IconText(
                        icon: Icons.thumb_up_alt_outlined,
                        title: "M-Tag",
                      ),
                      IconText(
                        icon: Icons.mark_chat_read_rounded,
                        title: "Rs. 1 Game",
                      ),
                      IconText(icon: Icons.more_horiz, title: "See All"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
