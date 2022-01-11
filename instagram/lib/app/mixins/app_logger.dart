import 'package:logging/logging.dart';

mixin AppLogger{
  Logger get logger => Logger('$runtimeType');
}