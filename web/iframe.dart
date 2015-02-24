import 'dart:html';

void main() {
  window.onMessage.listen((message) {
    message.source.postMessage("yo", window.location.origin);
  });
}