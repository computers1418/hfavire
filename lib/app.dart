import 'package:flutter/material.dart';
import 'package:hfavire/extensions/number_exten.dart';
import 'package:hfavire/pages/about/about_view.dart';
import 'package:hfavire/pages/contact/contact_view.dart';
import 'package:hfavire/pages/terms/terms_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            ElevatedButton(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const AboutView())), 
              child: const Text('About Us')),
        
            30.h(),
            
            ElevatedButton(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const TermsView())), 
              child: const Text('Terms Of Service')),
        
            30.h(),
            
            ElevatedButton(
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>const ContactView())), 
              child: const Text('Contact Us')),
        
          ],
        ),
      ),
    );
  }
}