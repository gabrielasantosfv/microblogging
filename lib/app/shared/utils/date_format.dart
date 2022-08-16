import 'package:date_format/date_format.dart';

String dateTimeFormat(String data) {
  if (data != '') {
    try {
      DateTime date = DateTime.parse(data);
      return formatDate(date, [dd, '/', mm, '/', yyyy, ' - ', HH, ':', nn]);
    } catch (e) {
      return data;
    }
  } else {
    return '';
  }
}
