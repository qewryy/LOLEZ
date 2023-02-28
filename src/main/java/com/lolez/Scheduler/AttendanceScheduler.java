package com.lolez.Scheduler;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.lolez.service.MemberService;

@Component
public class AttendanceScheduler {

	@Autowired
	private MemberService msvc;
	
	@PostConstruct
    public void init() {
        // 애플리케이션 시작 시 출석체크 초기화 로직 구현
		int ur = msvc.updatedaily(0);
    	if(ur != 1) {
			System.out.println("일일 출석 초기화에 오류가 발생했습니다.");
		}else {
			System.out.println("정상적으로 처리되었습니다.");
		}
    }
	
    @Scheduled(cron = "0 0 0 * * *") // 매일 0시(12am)에 실행
    public void resetAttendance() {
        // 출석체크 초기화 로직 구현
    	int ur = msvc.updatedaily(0);
    	if(ur != 1) {
			System.out.println("일일 출석 초기화에 오류가 발생했습니다.");
		}else {
			System.out.println("정상적으로 처리되었습니다.");
		}
    }
}