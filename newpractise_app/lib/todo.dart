import 'package:flutter/material.dart';

class ToDoView extends StatefulWidget {
  const ToDoView({super.key});

  @override
  State<ToDoView> createState() => _ToDoViewState();
}

class _ToDoViewState extends State<ToDoView> {
  List<String> friendList = ["Ahmed", "Ali", "Zohaib", "Abdullah"];
  additem() {
    setState(() {
      if (itemcontroller.text.isNotEmpty) {
        friendList.add(itemcontroller.text);
      }
    });
  }

  TextEditingController itemcontroller = TextEditingController();
  TextEditingController updateitemcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: itemcontroller,
          decoration: InputDecoration(
              border: InputBorder.none, hintText: "Enter a name"),
        ),
      ),
      body: ListView.builder(
        itemCount: friendList.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text("Mr. ${friendList[i]}"),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return  AlertDialog(
                            title: Text("Update item"),
                            content: TextField(
                              controller: updateitemcontroller,
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    friendList[i] =
                                        updateitemcontroller.text;
                                  });
                                  print(friendList);
                                  updateitemcontroller.clear();
                                  Navigator.pop(context);
                                },
                                child: const Text("update item"),
                              )
                            ],
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.edit)),
                IconButton(
                  onPressed: () {
                    setState(() {
                      friendList.removeAt(i);
                    });
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            additem();
          });
          itemcontroller.clear();
          print(itemcontroller.text);
        },
        child: const Text("Add"),
      ),
    );
  }
}
