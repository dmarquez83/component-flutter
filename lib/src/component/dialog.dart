import 'package:flutter/material.dart';
import 'package:componentes/src/class/todo.dart';

class NewTodoDialog extends StatelessWidget {
  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Agrega una tarea a tu lista'),
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(hintText: 'Escribe la tarea aqui'),
        autofocus: true,
      ),
      actions: <Widget>[
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple.shade800)),
          child: Text('Cancelar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.purple.shade800)),
          child: Text('Agregar'),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
