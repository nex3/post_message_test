import 'dart:html';

void main() {
  window.onLoad.first.then((_) {
    var frame = document.query('iframe');
    frame.contentWindow.postMessage("hello", window.location.origin);
    window.onMessage.listen((message) {
      window.console.log(message);
      window.console.log(message.source.location);

      // Getting the href from the source location fails.
      try {
        print("Location href: ${message.source.location.href}");
      } catch (error, stackTrace) {
        window.console.error("Error getting href: $error\n$stackTrace");
      }
    });
  });
}