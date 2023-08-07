import 'package:flutter/material.dart';
import 'package:notes_app/screens/notesScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ))
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Folders',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotesScreen()),);
                },
            child: Container(
              padding:  const EdgeInsets.symmetric(horizontal: 20),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.folder_copy_outlined,size: 20,),
                 // IconButton(onPressed: (){}, icon: const Icon(Icons.folder_copy_outlined,size: 20,)),
                   const SizedBox(width: 10,),
                   const Text('Material App',style: TextStyle(color: Colors.white),) ,

                   const Spacer(),
                   const Text('12',style: TextStyle(color: Colors.white),),
                  const SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios,color: Colors.white.withOpacity(0.2),size: 14,)
                ],
              ),
            ),
    ),
            const Spacer(),
             Row(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.create_new_folder_outlined)),
                const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.note_alt_outlined)),
              ],
            ),
          ],

        ),
      ),
    );
  }
}
