import 'package:flutter/material.dart';
import 'by_using_package/byusing_package_main_page.dart';
import 'manual_stop_watch_timer/manual_stop_watch_timer_page.dart';

class StopWatchTimerButton extends StatefulWidget {
  const StopWatchTimerButton({Key? key}) : super(key: key);

  @override
  State<StopWatchTimerButton> createState() => _StopWatchTimerButtonState();
}

class _StopWatchTimerButtonState extends State<StopWatchTimerButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue.shade900,
        title: const Text("Flutter StopWatch Timer Select button"),
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ManualStopWatchTimerPage()));
                },
                child: const Text("Manual Stop watch")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ByUsingPackageMainPage()));
                },
                child: const Text("By using package Stop watch")),
          ],
        ),
      ),
    );
  }
}
