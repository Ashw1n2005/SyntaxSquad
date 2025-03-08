import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class StreakCalendar extends StatefulWidget {
  const StreakCalendar({super.key});

  @override
  _StreakCalendarState createState() => _StreakCalendarState();
}

class _StreakCalendarState extends State<StreakCalendar> {
  final CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  final Set<DateTime> _streakDays = {
    DateTime(2025, 3, 1),
    DateTime(2025, 3, 2),
    DateTime(2025, 3, 3),
    DateTime(2025, 3, 4),
    DateTime(2025, 3, 5),
    DateTime(2025, 3, 6),
  };

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TableCalendar(
          availableCalendarFormats: {
            CalendarFormat.month: 'Month',
          },
          firstDay: DateTime.utc(2000, 1, 1),
          lastDay: DateTime.utc(2030, 12, 31),
          focusedDay: _focusedDay,
          calendarFormat: _calendarFormat,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
              _focusedDay = focusedDay;
            });
          },
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: const Color.fromARGB(142, 244, 67, 54),
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          calendarBuilders: CalendarBuilders(
            defaultBuilder: (context, day, focusedDay) {
              bool isStreakDay = _streakDays.any(
                (streakDay) => isSameDay(streakDay, day),
              );
              return isStreakDay  ?
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isStreakDay ? Colors.green : null,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      day.day.toString(),
                      style: TextStyle(
                        color: isStreakDay ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                   Image.asset(
                      "assets/icons/Fire_Streak.png",
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                ],
              ):
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isStreakDay ? Colors.green : null,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      day.day.toString(),
                      style: TextStyle(
                        color: isStreakDay ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      );
    
  }
}
