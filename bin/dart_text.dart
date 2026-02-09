//import 'package:lib/ui.dart';
import 'package:dart_console/dart_console.dart';

void main() async {
     final console = Console();

     console.rawMode = true;
     console.clearScreen();
     console.resetCursorPosition();
     console.write(
             'Console size is ${console.windowWidth} cols and ${console.windowHeight} rows.'
    );
    
    console.resetCursorPosition();
    console.readKey();
    console.rawMode = false;
    console.writeLine();
}

