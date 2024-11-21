package common;

import java.util.Calendar;
import java.util.List; // 데이터베이스에서 가져온 일정 리스트를 저장할 경우

public class WeekCalendar {
    public String[][] createCalendar(int year, int month, int day) {
        String[][] calendar = new String[7][2]; // 요일, 일정

        Calendar cal = Calendar.getInstance();
        cal.set(year, month - 1, day); // 월은 0부터 시작

        // 해당 주의 시작 요일 계산
        int startDayOfWeek = cal.get(Calendar.DAY_OF_WEEK);

        // 해당 주의 각 날짜 계산 및 일정 조회 (데이터베이스 연동 필요)
        for (int i = 0; i < 7; i++) {
            int dayOfWeek = (startDayOfWeek + i - 1) % 7 + 1; // 요일 계산
            int dayOfMonth = cal.get(Calendar.DAY_OF_MONTH);

            calendar[i][0] = getDayOfWeekString(dayOfWeek); // 요일 문자열
            calendar[i][1] = getSchedule(year, month, dayOfMonth); // 일정 조회
            cal.add(Calendar.DATE, 1);
        }

        return calendar;
    }

    // 요일을 문자열로 변환하는 메서드
    private String getDayOfWeekString(int dayOfWeek) {
        String[] daysOfWeek = {"일", "월", "화", "수", "목", "금", "토"};
        return daysOfWeek[dayOfWeek - 1];
    }

    // 데이터베이스에서 일정 조회하는 메서드 (예시)
    private String getSchedule(int year, int month, int day) {
        // 데이터베이스 연결 및 쿼리 실행
        // ...
        return "일정1, 일정2"; // 조회된 일정
    }
}