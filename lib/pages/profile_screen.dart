import 'package:ecomm_app/my%20widgets/profile_menu_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    const tileSpacing = SizedBox(height: 16);
    const pagePadding = EdgeInsets.symmetric(horizontal: 20);

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, size: 20),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.blueGrey, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pagePadding,
          child: Column(
            children: [
              const SizedBox(height: 28),

              Stack(
                alignment: Alignment.center,
                children: [
                  const CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(
                      "assets/images/Profile Image.png",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 8,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(Icons.camera_alt_outlined, size: 20),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28),

              ProfileMenuTile(icon: Icons.person_outline, label: "My Account"),
              tileSpacing,
              ProfileMenuTile(
                icon: Icons.notifications_none,
                label: "Notifications",
              ),
              tileSpacing,
              ProfileMenuTile(icon: Icons.settings_outlined, label: "Settings"),
              tileSpacing,
              ProfileMenuTile(icon: Icons.help_outline, label: "Help Center"),
              tileSpacing,
              ProfileMenuTile(icon: Icons.logout, label: "Log Out"),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
