# flutter_complete_guide

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Man kann es dokumentieren falls andere auch an
diesem Projekt arbeiten 

am Wichtigsten ist der lib Ordner hauptsächlich wird damit gearbeitet und manchmal dann mit pubspec.yaml um gewisse Details bzw Abhängigkeiten(Dependenies) der App konfigurieren zu müssen. 

gelernte Sachen notieren:
- every Widget need to extends from StatelesWidget or StatefulWidget
- each of this classes force u to add a build-method
to draw smth into the screen
- the build-method always responsible to return a new Widget
- Scaffold() give me a basic UI
- body can only take 1 Widget!
- wenn man eine Klasse oder Methode mit "_" kennzeichnet wir es zu private!!!
- import './...' das ./ deutet darauf hin dass man vom selben file
wo etwas impotieren kann
- Datenstrukturen: 
Map kann auch als Map() oder in der verkürten Form {...} schreiben;
List kann in verkürter Schreibweise als [...] dargestellt werden;