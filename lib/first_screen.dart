import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 133, 238),
        title: const Text(
          'HaZeM store',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),

    
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 0.75,
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      books[index]["image"]!,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    books[index]["title"]!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      
      bottomNavigationBar:  BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}


List<Map<String, String>> books = [
  {
    "title": "Book One",
    "image": "https://picsum.photos/200/300?1",
  },
  {
    "title": "Book Two",
    "image": "https://picsum.photos/200/300?2",
  },
  {
    "title": "Book Three",
    "image": "https://picsum.photos/200/300?3",
  },
  {
    "title": "Book Four",
    "image": "https://picsum.photos/200/300?4",
  },
  {
    "title": "Book Five",
    "image": "https://picsum.photos/200/300?5",
  },
  {
    "title": "Book Six",
    "image": "https://picsum.photos/200/300?6",
  },
  {
    "title": "Book Seven",
    "image": "https://picsum.photos/200/300?7",
  },
  {
    "title": "Book Eight",
    "image": "https://picsum.photos/200/300?8",
  },
];