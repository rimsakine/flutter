import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EMSI Connect',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          // Première action : notifications
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {
              debugPrint('Notifications consultées');
            },
          ),

          // Deuxième action : paramètres
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Paramètres',
            onPressed: () {
              debugPrint('Paramètres ouverts');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/emsii.png',
                height: 160,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 20),

              const Text(
                'Bienvenue sur EMSI Connect',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Connectez-vous à votre avenir !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(child: rubrique(Icons.menu_book, 'Mes cours')),
                  const SizedBox(width: 10),
                  Expanded(child: rubrique(Icons.calendar_month, 'Planning')),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                children: [
                  Expanded(child: rubrique(Icons.person, 'Profil')),
                  const SizedBox(width: 10),
                  Expanded(child: rubrique(Icons.task_alt, 'Mes tâches')),
                ],
              ),
            ],
          ),
        ),
      ),

      // Bouton flottant avec une nouvelle icône
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Ajout effectué');
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        tooltip: 'Ajouter',
        child: const Icon(Icons.add_circle_outline),
      ),
    );
  }
}

// Fonction pour créer les rubriques
Widget rubrique(IconData icon, String title) {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.blue, width: 2),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 35, color: Colors.blue),
        const SizedBox(height: 10),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
