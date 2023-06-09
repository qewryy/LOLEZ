package com.lolez.Matchdto;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

public class TimeTest {

	public static void main(String[] args) {

		
		long unixTimestamp = 1677026447049L / 1000L; // 예시로 2022년 2월 22일 12시 00분 00초를 나타내는 Unix timestamp
		long unixTimestamp_end = 1677027737960L/ 1000L ;
		Date date = new Date(unixTimestamp * 1000L);
		Date date_END = new Date(unixTimestamp_end * 1000L);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		SimpleDateFormat sdf_END = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formattedDate = sdf.format(date);
		String formattedDate_END = sdf_END.format(date_END);
		System.out.println(formattedDate); // 
		
		System.out.println(formattedDate_END); // 
		System.out.println("=============================");
		
		System.out.println("각 두 시작시간과 종료시간의 시간");
		System.out.println(unixTimestamp);
		System.out.println(unixTimestamp_end);
		
		long ux =   unixTimestamp_end - unixTimestamp; 
		System.out.println("두 시간차 를 구하기위해 두 시간을 - 한 결과 확인");
		System.out.println(ux);
		
		long uxT = ux;
		Date dateUxt = new Date(uxT * 1000L);
		SimpleDateFormat sdfUxt = new SimpleDateFormat("mm:ss");
		
		String formattedDateUxt = sdfUxt.format(dateUxt);
		
		System.out.println("두 시간차를 이용하여 유닉스 타임스탬프 변환을  이용한 결과");
		System.out.println(formattedDateUxt); 
			//1970년 1월 1일 09:00:00 >> 1970-01-01 09:32:23
		
		System.out.println("============================================================");
		
		long gameCreation = 1677119307935L;
		System.out.println("게임 종료 시간");
		System.out.println(gameCreation);
		
		System.out.println("현 시간 코드");
		long intUnixTime = (long) System.currentTimeMillis();
		System.out.println(intUnixTime);
		
		System.out.println("게임종료 시간 - 오늘 시간");
		long total =  intUnixTime - gameCreation;
		
		System.out.println(total);

		
		
		Date dateT = new Date(total  );
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String formattedDate2 = sdf2.format(dateT);
		
		System.out.println(formattedDate2);
		
		
		System.out.println("===============================================");
		long ux1 = 1674198793   ;
		System.out.println(ux1);
		
		long ux2 = 1677551974 - ux1 ; 
		System.out.println(ux2 + "현재 시간 - 게임 종료 당시 시간");
		
		
		if (ux2 != 0) {
			
			long total1 = ux2 / 60;
			System.out.println("60초(1분) 을 나누었을때 결과 " + total1 );
			
			if (total1 >= 60) {
				
				long totalh = ux2 / 3600;
				System.out.println("1시간 (3600 초) 를 나누었을때 " + totalh);
				
				
				if(totalh >= 8760) {
					System.out.println("1년 경과");
				}else if(totalh >=7920){
					System.out.println("11달 경과");
				}
				
				
				if(totalh >=2160){
					System.out.println("3달 경과");
				}
				else if(totalh >= 1440) {
					System.out.println("2달 경과");
				}
				else if (totalh >= 720) {
					System.out.println("1달 경과");
				}else if(totalh >= 672) {
					System.out.println("4주 이상 경과");
				}
				else if(totalh >= 504){
					System.out.println("3주 이상 경과");
				}else if(totalh >= 336) {
					System.out.println("2주 이상 경과");
				}else if(totalh >=168){
					System.out.println("1주 이상 경과");
				}else if(totalh >= 24) {
					System.out.println("하루 경과");
				}
				
			
				
			}
		}
		
		
		
		
		
	}

}
