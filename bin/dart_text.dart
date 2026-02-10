import 'dart:io';
import 'package:dart_console/dart_console.dart';

void cleanup(Console c) {
     c.rawMode = false;
     c.clearScreen();
}

void safe_exit(Console c,int r) {
     cleanup(c);
     exit(r);
}

void cl_print(Console c,bool corner, String text) {
     //command line print
     c.cursorPosition = corner ? Coordinate(0,0) : Coordinate(c.windowHeight,0);
     c.write(text);
}

void init_console(Console c) {
     c.rawMode = true;
     c.clearScreen();
     c.resetCursorPosition();
}

void main() async {
    final c = Console();

    init_console(c);

    cl_print(c, false, "testing");
    
    c.resetCursorPosition();

    Key k;
    while (true) {
          k = c.readKey();
          switch (k.char) {
               case 'q':
                  safe_exit(c,0);
                  break;
               default:
                  c.write(k.char);
                  break;
      }
    }    
}

