import 'package:flutter/material.dart';

class Tempe extends StatefulWidget {
  static String tag = 'tempe';

  const Tempe({super.key});

  @override
  _TempeState createState() => _TempeState();
}

class _TempeState extends State<Tempe> {
  final List<Map<String, String>> comments = [
    {'name': 'Alice', 'text': 'This is a great place!'},
    {'name': 'Bob', 'text': 'I love the food here!'},
    {'name': 'Charlie', 'text': 'The service was excellent!'},
    {'name': 'Diana', 'text': 'I will definitely come back!'},
    {'name': 'Ethan', 'text': 'Amazing atmosphere!'},
    {'name': 'Fiona', 'text': 'Best coffee in town!'},
    {'name': 'George', 'text': 'I enjoyed my meal very much!'},
    {'name': 'Hannah', 'text': 'The desserts are to die for!'},
    {'name': 'Ian', 'text': 'Great value for money!'},
    {'name': 'Julia', 'text': 'Highly recommend this place!'},
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tempe'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('home-page');
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(10),
            width: 400,
            height: 800,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300] ?? Colors.grey,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage('https://cdn.discordapp.com/emojis/1108402827400851530.gif?size=48&quality=lossless&name=veiNoted'),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hallo, Chip V',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Morning',
                            style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Image.network(
                    'https://cdn.discordapp.com/emojis/1108402827400851530.gif?size=48&quality=lossless&name=veiNoted',
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: comments.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.comment),
                          title: Text(comments[index]['name']!),
                          subtitle: Text(comments[index]['text']!),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                  _editComment(index);
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {
                                  _deleteComment(index);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _addComment,
                    child: const Text('Add Comment'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _addComment() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add Comment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: 'Enter your name'),
              ),
              TextField(
                controller: commentController,
                decoration: const InputDecoration(hintText: 'Enter your comment'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && commentController.text.isNotEmpty) {
                  setState(() {
                    comments.add({
                      'name': nameController.text,
                      'text': commentController.text,
                    });
                    nameController.clear();
                    commentController.clear();
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Add'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _editComment(int index) {
    nameController.text = comments[index]['name']!;
    commentController.text = comments[index]['text']!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Comment'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: 'Enter your name'),
              ),
              TextField(
                controller: commentController,
                decoration: const InputDecoration(hintText: 'Enter your comment'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && commentController.text.isNotEmpty) {
                  setState(() {
                    comments[index] = {
                      'name': nameController.text,
                      'text': commentController.text,
                    };
                    nameController.clear();
                    commentController.clear();
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void _deleteComment(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Comment'),
          content: const Text('Are you sure you want to delete this comment?'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  comments.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
