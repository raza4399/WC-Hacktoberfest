import 'dart:async';

main() {

  new Future(() => print('world'));    // Future() schedules a task on the event queue:
  print('hello');

  // Tasks on the microtask queue are executed before the next
  // run-loop on the event queue.
  scheduleMicrotask(() => print('beautiful'));  // scheduleMicrotask() will add the task to the microtask queue:

  print('there');
}
