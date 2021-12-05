import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotication = BehaviorSubject<String?>();

  static Future _notificationDetails() async {
    return const NotificationDetails(
        android: AndroidNotificationDetails(
      'channel id',
      'channel name',
      channelDescription: 'channel description',
      playSound: false,
      importance: Importance.max,
    ));
  }

  static Future init() async {
    var configAndroid =
        const AndroidInitializationSettings('@mipmap/launcher_icon');
    var configsGerais = InitializationSettings(android: configAndroid);

    _notifications.initialize(configsGerais);

    final details = await _notifications.getNotificationAppLaunchDetails();

    if (details != null && details.didNotificationLaunchApp) {
      onNotication.add(details.payload);
    }

    _notifications.initialize(
      configsGerais,
      onSelectNotification: (payload) async {
        onNotication.add(payload);
      },
    );
  }

  static Future exibirNotificacao({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async {
    _notifications.show(id, title, body, await _notificationDetails(),
        payload: payload);
  }

  static Future agendarNotificacao({
    int id = 0,
    String? title,
    String? body,
    String? payload,
    required DateTime data,
  }) async {
    final location = tz.UTC;
    _notifications.zonedSchedule(id, title, body,
        tz.TZDateTime.from(data, location), await _notificationDetails(),
        payload: payload,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }
}
