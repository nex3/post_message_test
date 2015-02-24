To test this, run `pub serve`, visit http://localhost:8080 and open the console:

![Console error](https://raw.githubusercontent.com/nex3/post_message_test/master/error.png)

The relevant code is in
[`web/index.dart`](https://github.com/nex3/post_message_test/blob/master/web/index.dart):

```dart
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
```
