import 'package:flutter/material.dart';

import '../../domain/entities/user_entity.dart';

class ProfilePage extends StatelessWidget {
  final UserEntity user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkcrDJeHIB4p8E2Dc6SEx5IQsk2gp9ommU2A&s',
                        width: double.infinity,
                        height: 140,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,

                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Colors.blue,
                              foregroundImage: const AssetImage(
                                'assets/images/me.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),
                Text(
                  user.name,

                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  user.email,
                  style: const TextStyle(fontSize: 22, color: Colors.grey),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Text(
                      "Logout",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on, color: Colors.red, size: 15),
                    const SizedBox(width: 5),
                    Text(
                      "Ho Chi Minh City",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2, 2),
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      // layer 1
                      const Text('Total Logins'),
                      const SizedBox(height: 15),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("12"),
                                SizedBox(height: 5),
                                Text("Login"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("5"),
                                SizedBox(height: 5),
                                Text("Success"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("3"),
                                SizedBox(height: 5),
                                Text("Error"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ), //end Row
                ),
                //info Row Card
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text('Role'),
                          Spacer(flex: 1),
                          Text('Intern'),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Text('Status'),
                          Spacer(flex: 1),
                          Text('Online', style: TextStyle(color: Colors.green)),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Text('Level'),
                          Spacer(flex: 1),
                          Text('Junior'),
                        ],
                      ),
                    ],
                  ),
                ),
                //Long email apply TextOverflow
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text('Bio'),
                        content: const Text(
                          'Flutter Intern learning Clean Architecture and Bloc/Cubit',
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit,Flutter Intern learning Clean Architecture and Bloc/Cubit',
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Text("1"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.red),
                      child: Text("2"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.green),
                      child: Text("3"),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.orange),
                      child: Text("4"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
