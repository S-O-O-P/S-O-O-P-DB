use linkbeedb;

INSERT
  INTO
`LINKBEE_USER`(NICKNAME, EMAIL, GENDER, PROFILE_PIC, ABOUTME, USER_ROLE, SIGNUP_DATE, SIGNUP_PLATFORM)
VALUES
	   ('관리자', 'admin@admin.com', '관리자', '관리자', '관리자', 'ROLE_ADMIN', '2024-07-01', 'ADMIN'),
       ('김네이', 'krossjsnet88@naver.com', '남자', 'https://firebasestorage.googleapis.com/v0/b/soop-profile-pic.appspot.com/o/profile_pictures%2F2_naver.jpg?alt=media&token=9ebacf0a-ba33-4996-a323-6a00e4547114', '안녕하세요. 김네이 입니다.', 'ROLE_USER', '2024-07-08', 'naver:6UiaZlGUvWSdzpWSfBzzR06y4TsFfqNtrpbprYYfhoU'),
       ('박카카', 'krossjsnet88@naver.com', '남자', 'https://firebasestorage.googleapis.com/v0/b/soop-profile-pic.appspot.com/o/profile_pictures%2F3_kakao.jpg?alt=media&token=8f86eb4d-ad59-4fdf-9110-e727c2fc0773', '안녕하세요 박카카 입니다.', 'ROLE_USER', '2024-07-08', 'kakao:3608933938'),
       ('최구글',	 'krossjsnet88@gmail.com',	'남자', 'https://firebasestorage.googleapis.com/v0/b/soop-profile-pic.appspot.com/o/profile_pictures%2F7_google.png?alt=media&token=b705a4d6-7439-418c-b9c4-854c9850efd8', '안녕하세요. 김구글 입니다.', 'ROLE_USER', '2024-07-11', 'google:115533031657766663228'),
       ('슈비두바', 'dldks1212@nate.com', '여자', 'https://phinf.pstatic.net/contact/20190306_75/1551853620079wDVcE_JPEG/profileImage.jpg', 'ㅁㅇㄻㄴㅇㄻㄴㅇㄻㄴㅇㄹ', 'ROLE_USER', '2024-07-08', 'naver:-nuGj5lXJgGO9MlpeMOHuutROapMBFYiD012mndDPvE'),
	   ('스드메의문단속', 'dldks1212@naver.com', '여자', 'http://k.kakaocdn.net/dn/UJ6yK/btsHywXr7Bq/MQCyj7Qx92a6EPrOonGkJK/img_640x640.jpg', '스드메의 문단속을 아시나요?', 'ROLE_USER', '2024-07-08', 'kakao:3613081929'),
	   ('삔', 'goqlsdl0@naver.com', '여자', 'https://ssl.pstatic.net/static/pwe/address/img_profile.png', 'hi', 'ROLE_USER', '2024-07-08', 'naver:SCyWPRsOey_GA6FO7dCXMM4cdABsWxpPfkvrWA9YgDc');

-- LOGIN 테이블 데이터 삽입
INSERT INTO `LOGIN` (USER_CODE, ID, PASSWORD) VALUES 
    (1, 'admin', 'admin1');

-- 관심사 카테고리 DB
INSERT
  INTO
`INTEREST`(INTEREST_NAME)
VALUES
       ('팝업'),
       ('공연'),
       ('행사/축제'),
       ('전시회'),
       ('뮤지컬');
       
-- 회원 관심사 DB 없음
       
-- 얼리버드 게시판 DB
INSERT INTO `EARLY_BIRD` 
(INTEREST_CODE, EB_TITLE, EB_CONTENT, REGION, POSTER, DATE_WRITTEN, AGE_LIMIT, PLACE, SELLER, SELLER_LINK, REGULAR_PRICE, DISCOUNT_PRICE, SALE_START_DATE, SALE_END_DATE, USAGE_START_DATE, USAGE_END_DATE)
VALUES
(4, '광주비엔날레', '전시장 입장마감<br><br>오전 10시 ~ 오후 6시(입장마감 오후 5시 30분)<br>매주 월요일 휴관(9월 9일, 16일, 17일, 18일, 10월 3일, 9일 정상개관)<br><br>할인정보<br>문화누리카드 결제시 - 성인 : 5,000원 / 청소년 : 3,000원 / 어린이 : 2,000원', '광주', 'https://ticketimage.interpark.com/Play/image/etc/24/24007059-03.jpg', '2024-07-05', '전체관람', '광주비엔날레전시관', '인터파크 티켓', 'https://tickets.interpark.com/goods/24007059', 18000, 15000, '2024-09-07', '2024-12-01', '2024-09-07', '2024-12-01'),
(4, '2024 아시아프(ASYAAF)', '공연시간 정보<br><br>▶ 전시 기간<br>· 2024년 7월 30일(화) - 8월 25일(일)<br>· 1부 : 7월 30일(화) - 8월 11일(일)<br>· 2부 : 8월 13일(화) - 8월 25일(일)<br>(1, 2부 각각 다른 작가들의 작품을 전시합니다.)<br><br>▶ 관람 시간<br>· 오전 10시 - 오후 7시(입장 마감 오후 6시)<br>· 매주 월요일 휴관<br><br>공지사항<br>* 티켓은 1매씩 구매 가능하며 총 구매수량 제한은 없습니다.<br>* 1부, 2부 티켓 사용 기간을 정확히 확인하고 구매하시기 바랍니다.<br><br>▶ 얼리버드 티켓 사용 기간<br>· 1부 : 7월 30일(화) - 8월 11일(일)<br>· 2부 : 8월 13일(화) - 8월 25일(일)<br><br>▶ 얼리버드 티켓 취소 가능 기간<br>· 1부 : 7월 8일(월) - 8월 10일(토) 오후 5시<br>· 2부 : 7월 8일(월) - 8월 24일(토) 오후 5시', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24009683-02.jpg', '2024-07-15', '전체관람', '국립극단 백성희장민호극장', '인터파크 티켓', 'https://tickets.interpark.com/goods/24009683', 9000, 4500, '2024-07-16', '2024-07-29', '2024-07-12', '2024-08-11'),
(4, '〈반 고흐, 더 이머시브〉 - 시즌2', '공연시간 정보<br>예매가능시간: 전일 23시 59분까지<br><br>[운영시간]<br>화요일 ~ 금요일 : 10시 ~ 18시30분 (전시 입장마감: 17시)<br>주말 및 공휴일 : 10시 ~ 19시30분 (전시 입장마감: 18시)<br>※ 월요일 휴관, 7/1~7/18 휴관<br><br>* VIP 입장권 - 전시 입장 + VR 우선 체험권, \'별이 빛나는 밤\' 포스터 증정<br><br>공지사항<br>[이용방법]<br>1. 매표소에서 성함과 연락처 확인 후 입장<br><br>[연령기준]<br>- 성인(~2005년생)<br>- 아동/청소년(2006년 ~ 2018년생)<br>- 특별요금(2019~2021년 출생 영유아 / 국가유공자 / 장애인) - 신분증 등 증빙서류 지참 필요<br>- 단체 성인(8명 이상)<br>- 단체 아동/청소년(8명 이상)<br><br>[유의사항]<br>1. 전시장 퇴장 후 재입장이 제한됩니다.<br>2. 음료 및 음식물 반입이 불가합니다.<br>3. 관람 예약 시간 이후에는 취소 및 변경이 불가합니다.<br><br>※ 일반 입장권의 경우 VR 체험권은 현장에서 별도로 구매(4천 원) 가능합니다.<br><br>[취소/환불규정]<br>관람일 9일전 ~ 7일전까지 10% 취소수수료 발생<br>관람일 6일전 ~ 3일전까지 20% 취소수수료 발생<br>관람일 2일전 ~ 1일전까지 30% 취소수수료 발생<br>관람일 당일 절대 환불 불가<br>취소수수료는 판매금액 기준<br><br>- 주소: 경기도 광명시 일직로 43 GIDC광명역 A동 B2층<br>- 전시 관람시 주차 2시간 무료<br>', '경기', 'https://ticketimage.interpark.com/Play/image/etc/24/23018544-12.jpg', '2024-07-17', '전체관람', 'GIDC 광명역', '인터파크 티켓', 'https://tickets.interpark.com/goods/23018544', 20000, 12000, '2024-07-05', '2024-07-21', '2024-07-19', '2024-09-01'),
(4, '〈다이노스 얼라이브〉 - 톰토미와 공룡대탐험', '공연시간 정보<br>예매가능시간: 전일 23시 59분까지<br><br>[운영시간]<br>화요일~일요일, 공휴일 오전 10시~오후 8시 (입장 및 매표 마감 오후 7시)<br>매주 월요일 휴관, 7/1~7/15 휴관<br><br>※톰토미 패키지(아동) 구성※<br>아동 입장권+VIP패스+라이더 1회 이용권+VR 1회 체험권+포스터<br>+ 탐험노트 및 인증서, 배지+톰토미 MD세트(스트링백, 스티커)<br>* 톰토미 패키지는 아동만 사용 가능합니다.<br><br>공지사항<br>[티켓이용방법]<br>1.티켓구매<br>2.현장 매표소에서 성함과 연락처 확인 후 입장<br>-구매 최소 30분 이후 입장 가능<br><br>[연령기준]<br>아동: 2012년 ~ 2021년생<br>24개월 이하 유아는 무료 입장(증빙서류 필수 지참/보호자 동반 입장 시 가능)<br><br>[유의사항]<br>1. 예매한 티켓의 유효기간(사용기간)을 확인 후 방문 부탁드립니다. 사용기간이 지난 티켓의 취소 및 환불은 불가합니다.<br>2. 24개월 이하 유아는 보호자 동반 시 무료입장이 가능하며, 증빙서류 필수 지참 바랍니다.<br>3. 발권된 티켓은 당일에 한해 사용이 가능하며, 발권 이후 취소가 불가합니다.<br>4. 일부 체험 옵션의 경우 별도의 이용료가 발생되며, 현장에서 결제 후 이용 가능합니다.<br>5. 체험 전시장 이용 시 안전을 위해 안전수칙 및 스태프들의 지시를 따라주시기 바랍니다.<br>6. 전시장 퇴장 후 재입장이 제한됩니다.<br>7. 전시장 내 음료를 포함한 음식물 일체의 섭취 및 반입이 불가합니다.<br>8. 안내견을 제외한 반려동물은 입장할 수 없습니다.<br>9. 사설 도슨트 등은 허용하지 않습니다. 내부에서 비허가 해설을 할 경우 제지를 받을 수 있습니다.<br><br>[전시장 주소]<br>서울 동대문구 왕산로 200 (청량리역 롯데캐슬 SKY-L65) 1층<br>', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/23018544-12.jpg', '2024-07-06', '전체관람', '청량리역 롯데캐슬 SKY-L65 1층', '인터파크 티켓', 'https://tickets.interpark.com/goods/24001871', 15000, 9000, '2024-07-05', '2024-07-21', '2024-07-16', '2024-09-01'),
(2, '앤서니 브라운의 〈우리가족〉', '공연시간 정보<br>예매가능시간: 전일 17시(월~토 관람 시)까지/<br>전일 11시(일요일 관람 시)까지', '서울', 'https://ticketimage.interpark.com/Play/image/large/24/24007171_p.gif', '2024-07-06', '24개월이상 관람가능', '대원콘텐츠라이브', '인터파크 티켓', 'https://tickets.interpark.com/goods/24007171', 66000, 46200, '2024-07-15', '2024-07-18', '2024-07-20', '2024-08-25'),
(5, '뮤지컬 〈에밀〉', '공연시간 정보<br>예매가능시간: 관람 3시간 전까지<br>화·수·목·금 20시 / 토 15시, 19시 / 일, 공휴일 14시, 18시 (월 공연없음)<br>', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24006256-07.jpg', '2024-07-08', '중학생이상 관람가', '예스24스테이지 3관', '인터파크 티켓', 'https://tickets.interpark.com/goods/24006256', '66000', '46200', '2024-07-08', '2024-07-19', '2024-08-05', '2024-08-18'),
(2, '연극 〈템플〉 - 안양', '공연시간 정보<br>예매가능시간: 전일 17시(월~토 관람 시)까지/전일 11시(일요일 관람 시)까지', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24009212-01.jpg', '2024-06-25', '초등학생이상 관람가', '평촌아트홀', '인터파크 티켓', 'https://tickets.interpark.com/goods/24009212', 30000, 10000, '2024-06-26', '2024-07-23', '2024-07-02', '2024-07-23'),
(2, '히사이시 조 영화음악 콘서트 2024_서울', '공연시간 정보<br>예매가능시간: 관람 1시간 전까지<br>2024년 9월 14일(토) 오후 5시<br><br>공지사항<br>※ 본 공연은 예매 티켓 배송 및 예술의전당 서비스플라자 방문구매가 불가하며 공연 당일 현장수령만 가능합니다.<br>※ 본 공연은 영상 없이 풀편성 오케스트라와 협연으로 연주될 예정입니다.<br>※ 관람연령 및 할인정보 등 상세페이지를 꼭 정확히 숙지해주시기 바랍니다.<br><br>할인정보<br>※ 모든 할인은 한 가지만 적용 가능하며, 현장에서 할인 권종 변경 및 당일 취소, 변경, 환불이 불가합니다.<br>※ 할인에 해당하는 증빙자료(신분증, 유공자증, 복지카드, 등본, 실물유료티켓 등) 미 지참시에는 현장에서 차액을 지불한 후 관람이 가능합니다.<br><br>조기예매(얼리버드) 할인 20% (R석에 한함)<br>: 7/11 (목) ~ 7/28(일) 예매시 적용가능 (1인 4매 제한)<br><br>TOPING 회원 할인 10% (본인 및 동반 1인)<br>: 인터파크 TOPING 유료가입 회원에 한하여 적용<br><br>학생 할인 15% (증빙 지참 / 본인만 / R, S석에 한함)<br>: 티켓 수령 시 할인 대상 관람자 본인이 직접 티켓 수령을 해야 하며,<br>초, 중, 고등학생: 나이확인이 가능한 증빙서류(학생증, 신분증, 등본 등) 지참<br>대학생: 20~24학번 학생증 확인 / 19학번 이전부터는 학생증과 재학증명서 모두 확인<br>* 모바일 학생증 확인 가능 / 국내 대학생까지만 해당 (대학원, 유학, 방송통신대, 사이버대 적용 불가)<br><br>군 장병 할인 30% (증빙지참/ 본인만 / R 석에 한함)<br>* 부분 취소 불가(구매자 본인만 매표소 방문시 티켓 수령 불가)<br><br><br><br>*20인 이상 단체 문의 : 070-4190-1289<br>※ 휠체어석은 예술의전당 전화예매로만 가능 : 1668-1352', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24009761-02.jpg', '2024-07-04', '초등학생이상 관람가', '예술의전당 콘서트홀', '인터파크 티켓', 'https://tickets.interpark.com/goods/24009761', 120000, 96000, '2024-07-05', '2024-07-28', '2024-09-14', '2024-09-14'),
(2, '연극 〈꽃, 별이 지나〉 : 공연배달서비스 간다 20주년 퍼레이드', '공연시간 정보<br>예매가능시간: 관람 3시간 전까지<br><br>평일 8시<br>주말 및 공휴일 2시, 5시 30분<br>월 쉼 (*단, 8/18(일) 2시)', '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24006307-14.jpg', '2024-07-09', '중학생이상 관람가', '서경대학교 공연예술센터 스콘1관', '인터파크 티켓', 'https://tickets.interpark.com/goods/24006307', 66000, 46200, '2024-07-10', '2024-07-21', '2024-08-06', '2024-08-18'),
(3, '워터밤 여수 2024', '공연시간 정보<br>2024년 08월 31일(토)<br>공연 시간 및 장소 추후 공지<br>공지사항<br>이 상품은 도서·공연비 소득공제 혜택이 적용됩니다.<br>구매매수 제한 : 회차별 1인 4매​<br><br>[워터밤 여수 2024 예매 공지사항]<br>※ 본 티켓은 별도로 배송되지 않는 QR코드 티켓이며, 행사 10일 전 예매 시 입력한 휴대전화 번호로 일괄 발송되오니 휴대전화 번호 입력에 유의해 주세요.<br>※ 본 티켓은 한정 수량으로 판매되며 각 회차의 티켓 매진 시 다음 회차의 티켓이 오픈됩니다.<br>※ 본 공연은 만 19세 이상 관람가입니다. (2024년 기준 2005년 12월 31일 출생자까지 관람 가능)<br>※ 입장 시 성인 인증을 위한 본인의 실물 신분증을 필히 지참해 주셔야 하며 미 지참 시 입장이 제한됩니다. 이로 인한 당일 환불은 불가합니다.<br>※ 공연 장소 및 타임테이블은 추후 공지됩니다.<br>※ 공연과 관련된 모든 정보는 공식 인스타그램 및 홈페이지를 통해 안내됩니다.<br><br>티켓 예매 전 필히 예매 공지 사항 및 예매,입장,환불,관람 안내 등의 공연 상세 사항을 확인해주시기 바랍니다.<br>티켓 예매는 본 내용을 모두 확인하였으며 이에 동의한 것으로 간주됩니다.​', '전남', 'http://image.toast.com/aaaaab/ticketlink/TKL_8/wb_ys_info_0716.jpg', '2024-07-01', '만19세이상', '여수 엑스포 스카이타워 해안가 특설무대', '티켓링크', 'https://www.ticketlink.co.kr/product/47080', '154000', '110000', '2024-07-01', '2024-08-30', '2024-08-31', '2024-08-31'),
(3, '워터밤 대구 2024', '공연시간 정보<br>2024년 07월 20일(토)<br>11시<br>공지사항<br>이 상품은 도서·공연비 소득공제 혜택이 적용됩니다.<br>구매매수 제한 : 회차별 1인 4매​<br><br>[워터밤 대구 2024 예매 공지사항]<br>※ 본 티켓은 별도로 배송되지 않는 QR코드 티켓이며, 행사 10일 전 예매 시 입력한 휴대전화 번호로 일괄 발송되오니 휴대전화 번호 입력에 유의해 주세요.<br>※ 본 티켓은 한정 수량으로 판매되며 각 회차의 티켓 매진 시 다음 회차의 티켓이 오픈됩니다.<br>※ 본 공연은 만 19세 이상 관람가입니다. (2024년 기준 2005년 12월 31일 출생자까지 관람 가능)<br>※ 입장 시 성인 인증을 위한 본인의 실물 신분증을 필히 지참해 주셔야 하며 미 지참 시 입장이 제한됩니다. 이로 인한 당일 환불은 불가합니다.<br>※ 공연 장소 및 타임테이블은 추후 공지됩니다.<br>※ 공연과 관련된 모든 정보는 공식 인스타그램 및 홈페이지를 통해 안내됩니다.<br><br>티켓 예매 전 필히 예매 공지 사항 및 예매,입장,환불,관람 안내 등의 공연 상세 사항을 확인해주시기 바랍니다.<br>티켓 예매는 본 내용을 모두 확인하였으며 이에 동의한 것으로 간주됩니다.​​', '대구', 'http://image.toast.com/aaaaab/ticketlink/TKL_9/dg0613.jpg', '2024-07-03', '만19세이상', '대구 스타디움 주경기장', '티켓링크', 'https://www.ticketlink.co.kr/product/47079', '154000', '99000', '2024-07-01', '2024-07-20', '2024-07-27', '2024-07-27'),
(2, '안토니오 파파노＆런던심포니 with 유자 왕 - 경기광주', '공연시간 정보<br>예매가능시간: 전일17시(월~토 관람 시)까지/전일 11시(일요일 관람 시)까지<br>2024. 10. 04 (금) 19:30<br><br>공지사항<br>※ 티켓 예매 시 공연 안내사항에 동의한 것으로 간주하며, 본 내용은 상황에 따라 추가·변경될 수 있습니다. 공연 관람에 지장이나 불이익을 받지 않도록 관람 전 반드시 공연 안내사항을 확인 바랍니다.<br>★ 7/2 ~ 7/4 는 광주시민 선예매 기간입니다. 해당 기간에 예매하신 분들께서는 반드시 \'광주시민\'임을 증명할 수 있는 서류를 지참하셔야 합니다. 7/5부터 일반예매가 진행되오니 참고 부탁드립니다.<br>- 본 공연은 취학 아동 이상부터 관람 가능합니다. 연령 미달 시 입장이 불가하오니 참고 부탁드립니다.<br>- 광주시민, 청소년, 경로, 복지 등 할인을 적용 받으신 분들께서는 반드시 증빙서류를 지참하셔야 합니다. 미지참시 티켓 배부 불가, 차액 지불 등 불이익이 발생할 수 있음을 안내드립니다.<br>- 남한산성아트홀은 주차 공간이 협소하오니 가급적 대중교통을 이용하시기 바랍니다.<br>- 티켓 수령은 공연 1시간 전부터 가능합니다.<br><br>할인정보<br>- 광주시민 10%(본인에 한함, 증빙자료 지참)<br>- 광주시문화재단 카카오톡 플친 할인 10%(본인에 한함, 증빙자료 지참)<br>- <br>- 조기예매(~7/18까지예매시) 30% (1인 4매에 한함)<br>- 청소년(8세~24세) 40%(본인에 한함, 증빙자료 지참)<br>- 국가유공자, 경로(만65세이상), 장애인, 의사자의 유족 및 의상자 50%(본인에 한함, 증빙자료 지참)<br>- 광주시민 선예매 30% (1인 4매, 7월 2일~7월4일, 광주시민만 가능)<br>- 다둥이카드 30%(다둥이카드 소지자, 카드에 명시된 사람에 한함)<br>* 관련증빙 미지참 시, 현장에서 차액 지불', '경기', 'https://ticketimage.interpark.com/Play/image/etc/24/24009365-03.jpg','2024-07-04','초등학생이상 관람가','남한산성아트홀 대극장', '인터파크 티켓', 'https://tickets.interpark.com/goods/24009365', 200000, 140000, '2024-07-05', '2024-07-18','2024-10-04', '2024-10-04'),
(5, '어린이뮤지컬 \'친구의 전설\'-여수', '공연시간 정보<br>예매가능시간: 전일17시(월~토 관람 시)까지/전일 11시(일요일 관람 시)까지<br>2024년 9월 10일 (화) 11:00, 14:00<br>2024년 9월 11일 (수) 11:00, 14:00<br>2024년 9월 12일 (목) 11:00, 14:00<br><br>공지사항<br>［관람연령안내］<br>- 관람등급에 부합하지 않은 연령은 티켓유무, 보호자 동반 여부와 관계없이 공연장 입장이 절대 불가합니다.<br>- 티켓 수령 및 객석 입장 시 관람연령 확인을 위해 생년월일이 기재된 증빙서류를 요청할 수 있으니 반드시 지참하시기 바랍니다.<br>- 관람연령 미숙지로 인해 공연당일 관람이 불가하거나 관람을 포기한 경우 예매 취소 및 환불, 변경이 일체 불가하오니<br>예매시 각별히 유의하시기 바랍니다.<br><br>［티켓예매/수령안내<br>- 예매 티켓 수령 및 현장 구매는 공연 시작 1시간 30분 전부터 가능합니다.<br>- 공연 당일 티켓 수령 시 예매번호 또는 예매자 이름과 휴대폰 번호 뒷자리를 확인 해 주셔야 티켓 수령이 가능합니다.<br>- 예매자명 및 휴대폰 번호가 다를 경우 본인확인을 위해 신분증을 요구할 수 있습니다.<br>- 원활한 티켓 수령을 위해 신분증, 예매내역서, SMS(예매번호가 포함된 메시지)등을 지참하시기 바랍니다.<br>- 증빙 할인을 받은 내역이 있을 경우 반드시 증빙자료를 지참하시기 바랍니다<br>- 할인권종 선택에 대한 책임은 예매자 본인에게 있으며, 증빙자료 미 지참 시 정가에 대한 차액을 지불하셔야 합니다.<br>- 미리 배송 받은 티켓을 잃어버린 경우 재발행을 위해 본인 확인서류 지참 하여 공연당일 티켓배부처에서 신청하세요.<br><br>［할인안내］<br>※ 인터파크 예매종료 전날 17시까지 예매시<br>- 국가유공자 할인 50%<br>- 국가보훈자 할인 50%<br>- 장애인 할인 50%<br>- 다자녀 할인 20%<br>- 장애아동(장애인보장법에 의한 장애등급이 1~3급인 자)할인 20%', '여수', 'https://ticketimage.interpark.com/Play/image/etc/24/24009407-03.jpg', '2024-06-27', '24개월이상 관람가능', '여수문화예술회관 대극장', '인터파크 티켓', 'https://tickets.interpark.com/goods/24009407', 25000, 20000,'2024-06-28','2024-07-20','2024-09-10', '2024-09-12');

-- 허니팟 게시판 테이블 생성
-- INSERT INTO HONEYPOT(INTEREST_CODE, HONEYPOT_TITLE, HONEYPOT_CONTENT, USER_CODE, POSTER, REGION, TOTAL_MEMBER, REG_DATE, EVENT_DATE, END_DATE, VISIBILITY_STATUS, CLOSURE_STATUS, REPORT_COUNT, SEQ_NO) VALUES
-- (4, '70년 전으로 시간여행 갈래?', '국립경주박물관에서 열리는 특별전에 함께 가요!', 2, 'http://www.culture.go.kr/upload/rdf/24/07/show_202407514595600096.jpg', '경북', 4, '2024-07-01', '2024-07-10', '2024-07-09', '활성화', '진행완료', 0, 276153),
-- (4, '오즈의 마법사? 아니, 과학자', '갤러리 인사 1010에서 열리는 전시회에 같이 가요', 3, 'http://www.culture.go.kr/upload/rdf/24/07/show_2024070413495286462.jpg', '서울', 3, '2024-07-01', '2024-07-10', '2024-07-09', '활성화', '진행완료', 0, 281960),
-- (4, '우표 속 한국 찾기, 도전?', '노들섬 복합문화공간에서 열리는 전시회에 같이 가실 분?', 4, 'http://www.culture.go.kr/upload/rdf/24/07/show_202407317272109874.jpg', '서울', 3, '2024-07-10', '2024-07-18', '2024-07-17', '활성화', '모집중', 0, 280781),
-- (2, '차 마시며 춤출 사람 구함!', '국립정동극장 세실에서 열리는 무용 공연 함께 즐겨요', 2, 'http://www.culture.go.kr/upload/rdf/24/06/show_2024061815282151579.jpg', '서울', 2, '2024-07-12', '2024-07-23', '2024-07-22', '활성화', '모집중', 0, 280096),
-- (2, '황금 트롬본 소리에 취할래?', '광명시민회관 대공연장에서 열리는 트롬본 콘서트 같이 가실 분?', 3, 'http://www.culture.go.kr/upload/rdf/24/06/show_2024062415564581789.jpg', '경기', 4, '2024-07-08', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 280798),
-- (2, '지브리 음악 여행 떠날 친구!', '세종예술의전당 대공연장에서 열리는 영화음악 콘서트에 함께해요', 4, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061921182631620.gif', '세종', 3, '2024-07-11', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 280393),
-- (2, '베토벤의 눈물 들으러 갈래?', '공주문예회관 대공연장에서 열리는 오케스트라 공연 함께 볼까요?', 2, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_202406192119858675.gif', '충남', 4, '2024-07-09', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 280419),
-- (5, '옥주현과 뮤지컬 파티 올래?', '경기아트센터 대극장에서 열리는 옥주현의 뮤지컬 콘서트에 함께 가요!', 3, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024062121184045488.gif', '경기', 2, '2024-07-10', '2024-07-17', '2024-07-16', '활성화', '모집중', 0, 280673),
-- (3, '현대무용으로 시 쓸 동료 구함', '아르코예술극장 대극장에서 열리는 현대무용 공연을 함께 감상해요!', 2, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_202406172119278636.jpg', '서울', 3, '2024-07-10', '2024-07-17', '2024-07-16', '활성화', '모집중', 0, 280164);

INSERT INTO HONEYPOT(INTEREST_CODE, HONEYPOT_TITLE, HONEYPOT_CONTENT, USER_CODE, POSTER, REGION, TOTAL_MEMBER, REG_DATE, EVENT_DATE, END_DATE, VISIBILITY_STATUS, CLOSURE_STATUS, REPORT_COUNT, SEQ_NO) VALUES
(3, '현대무용으로 시 쓸 동료 구함', '아르코예술극장 대극장에서 열리는 현대무용 공연을 함께 감상해요!', 2, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_202406172119278636.jpg', '서울', 3, '2024-07-10', '2024-07-17', '2024-07-16', '활성화', '진행완료', 0, 280164),
(4, '예술의 향연, 경주에서 만나요!', '안녕하세요, 예술을 사랑하는 여러분! 여름의 한가운데, 우리 함께 경주의 예술을 만끽할 특별한 시간을 가져보는 건 어떨까요? 이번에 경주예술의전당 알천미술관에서 열리는 소장품전 <모두의 미술관>을 함께 관람하려고 합니다.', 4, 'http://www.culture.go.kr/upload/rdf/23/09/show_202309813415156399.jpg', '경북', 4, '2024-07-15', '2024-07-17', '2024-07-16', '활성화', '진행완료', 0, 255361),
(2, '재즈를 들으면 기분이 째즈그든여', '안녕하세요, 음악을 사랑하는 여러분! 한여름밤의 열기를 재즈 선율로 가득 채워보는 건 어떨까요? 부천시민회관 소공연장에서 열리는 부천문화재단 뮤직바캉스 <한여름밤의 재즈> 공연을 함께 보러 가요!', 4, 'http://www.culture.go.kr/upload/rdf/24/05/show_2024052813222863837.jpg', '경기', 3, '2024-07-15', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 278123),
(4, '쿵짝공원 전시회, 우리 같이 갈래요?', '안녕하세요, 예술을 좋아하는 여러분! 봄맞이 나들이로 수원시립만석전시관에서 열리는 <쿵짝공원 속 친친> 전시회를 함께 보러 가요. 다양한 작품들을 감상하고, 예술에 대해 이야기 나누며 즐거운 시간을 보내요!', 2, 'http://www.culture.go.kr/upload/rdf/24/04/show_202404181618497494.jpg', '경기', 4, '2024-07-15', '2024-07-20', '2024-07-19', '활성화', '모집중', 0, 274029),
(4, '세종 수목원 전시, 함께 가요!', '안녕하세요, 예술을 사랑하는 친구들! 국립세종도서관에서 열리는 <넌 어느 별에서 왔니?> 전시를 함께 보러 갈까요? 다양한 예술 작품들이 우리를 기다리고 있어요. 다 같이 예술의 세계로 떠나보아요!', 3, 'http://www.culture.go.kr/upload/rdf/24/04/show_2024041517101400713.jpg', '세종', 2, '2024-07-15', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 273946),
(2, '선돌극장으로, 가족의 이야기를 만나러!', '안녕하세요, 연극 팬 여러분! 선돌극장에서 열리는 <가족의 탄생> 연극을 함께 보러 갈 거예요. 극단 가탄의 10주년 기념 공연이라 더 특별한 자리입니다. 좋은 공연을 보며 서로의 이야기도 나눠요!', 4, 'http://www.culture.go.kr/upload/rdf/24/06/show_202406141162232192.jpg', '서울', 2, '2024-07-15', '2024-07-20', '2024-07-19', '활성화', '모집중', 0, 279625),
(2, '핑크의 매력, 대학로에서 느껴보아요!', '안녕하세요, 친구들! 대학로예술극장에서 <문제적 핑크>를 함께 보러 갈 거예요. 2024 아시테지 국제여름축제에서 만나는 특별한 공연입니다. 다 함께 멋진 무대를 즐기고, 소중한 시간을 나눠봐요!', 2, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061821202804052.gif', '서울', 4, '2024-07-15', '2024-07-20', '2024-07-19', '활성화', '모집중', 0, 280276),
(2, '베이비 클럽에서 놀자! 함께 가요!', '안녕하세요, 친구들! 아르코예술극장에서 열리는 <베이비 클럽>을 함께 보러 갈까요? 2024 아시테지 국제여름축제의 멋진 공연으로 정말 기대돼요. 모두 함께 즐거운 시간을 보내고, 특별한 추억을 만들어봐요!', 3, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061821202638590.gif', '서울', 4, '2024-07-15', '2024-07-20', '2024-07-19', '활성화', '모집중', 0, 280275),
(2, '지브리와 함께하는 음악의 밤!', '세종예술의전당에서 지브리 영화음악 심포니 콘서트가 열린다고 해요! 이번 공연은 정말 특별하니 꼭 함께 즐겨요. 함께 감동적인 음악을 나누고, 좋은 추억을 만들어봅시다. 참여하고 싶은 분은 댓글로 알려주세요!', 4, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061921182631620.gif', '세종', 2, '2024-07-15', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 280393),
(5, '무인도에서의 모험, 함께해요!', '안녕하세요, 예술을 사랑하는 여러분! 대학로 드림아트센터에서 무인도 탈출기를 함께 관람하러 가요! 재미있고 독특한 이야기가 기다리고 있으니 놓치지 마세요. 함께 즐겁고 특별한 순간을 만들어봐요!', 2, 'http://www.culture.go.kr/upload/rdf/24/04/rdf_202404181021881604.jpg', '서울', 3, '2024-07-15', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 274396),
(5, '천안에서 K-클래식의 매력을 느껴봐요!', '안녕하세요, 음악을 사랑하는 여러분! 천안예술의전당 대공연장에서 K-클래식 콘서트 3를 함께 보러 갈 거예요. 충남예술고등학교의 공연이라 더욱 특별한 기회입니다. 함께 클래식의 아름다움을 느끼고, 즐거운 시간을 보내요!', 3, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061921202848860.gif', '충남', 2, '2024-07-15', '2024-07-19', '2024-07-18', '활성화', '모집중', 0, 280430),
(4, '웹툰의 전설, 이현세 특별전으로 떠나요!', '안녕하세요, 미술과 웹툰을 사랑하는 여러분! 국립중앙도서관에서 이현세의 길: K-웹툰 전설의 시작 특별전을 함께 보러 갈 거예요. 웹툰의 멋진 작품들을 감상하고, 그 이야기를 나누는 시간을 가져요!', 4, 'http://www.culture.go.kr/upload/rdf/24/05/show_2024057183879678.png', '서울', 4, '2024-07-15', '2024-07-23', '2024-07-22', '활성화', '모집중', 0, 276159);


-- 승인 신청 데이터
 INSERT
   INTO
  `APPLICATION`(HONEYPOT_CODE, USER_CODE, APPLICATION_DATE)
  VALUES
        (1, 3, '2024-07-12'),
 		(1, 4, '2024-07-13'),
        (2, 2, '2024-07-14'),
		(2, 3, '2024-07-14'),
		(2, 5, '2024-07-14');
        
-- 참가신청 DB
 INSERT 
   INTO
  `APPROVAL_STATUS`(DECISION_STATUS, DECISION_DATE)
  VALUES
        ('승인', '2024-07-13'),
        ('승인', '2024-07-14'),
        ('승인', '2024-07-15'),
        ('승인', '2024-07-15'),
        ('승인', '2024-07-15');
        
-- UPDATE HONEYPOT
--            SET CLOSURE_STATUS = '진행완료'
--            WHERE EVENT_DATE < CURDATE()
--            AND CLOSURE_STATUS != '진행완료';
            
INSERT
  INTO
`RATING`(RATING_NAME, SCORE, CONTENT)
VALUES 
       ('못만났어요', 1, '사전 연락 없이 무단으로 모임에 불참했어요.'),
       ('못만났어요', 1, '불참 의사를 멤버들에게 알리고 모임에 불참했어요.'),
       ('불편했어요', 2, '시간 약속을 지키지 않아서 다른 사람들이 모두 기다렸어요.'),
       ('불편했어요', 2, '이성에 대한 과도한 관심을 보여서 불편했어요.'),
       ('불편했어요', 2, '수동적이고 소극적인 태도여서 함께하기 어색했어요.'),
       ('보통이에요', 3, '싫지도 좋지도 않았어요.'),
       ('보통이에요', 3, '평범한 경험이었어요.'),
       ('괜찮았어요', 4, '대화코드가 잘 맞아 즐겁게 대화할 수 있었어요.'),
       ('괜찮았어요', 4, '다른 멤버가 이야기 할 때 잘 들어주셨어요.'),
       ('괜찮았어요', 4, '주도적으로 모임에 잘 참여해 주셨어요.'),
       ('좋았어요!', 5, '취향이 통하는 멤버를 만나 좋았어요. 다음에 또 만나고 싶어요.'),
       ('좋았어요!', 5, '유쾌하고 밝은 에너지로 분위기 메이커 역할을 했어요.'),
       ('좋았어요!', 5, '덕분에 시간가는 줄 모르고 즐거운 경험을 했어요.');
       
-- 1:1 문의 DB
INSERT
  INTO
`INQUIRY`(CATEGORY, TITLE, CONTENT, USER_CODE, INQUIRY_DATE, ADMIN_CODE, ANSWER_STATUS, ANSWER, ANSWER_DATE)
VALUES
	   ('서비스', '서비스 이용 방법에 대한 안내 요청', '허니팟 서비스를 최대한 활용하기 위한 사용 방법과 팁을 알려주실 수 있을까요?', 2, '2024-06-03', 1, '답변대기', null, null),
       ('서비스', '서비스 이용 중 발생한 불편 사항 보고', '서비스 이용 중 불편한 사항이 발생했습니다. 문제 해결을 위한 조치를 요청드립니다.', 3, '2024-06-04', 1, '답변대기', null, null),
       ('회원', '회원 탈퇴 방법 문의', '허니팟 서비스에서 회원 탈퇴하는 방법에 대해 알려주세요.', 4, '2024-06-05', 1, '답변대기', null, null),
       ('회원', '회원 탈퇴 후 재가입 가능 여부', '허니팟 서비스에서 회원 탈퇴 후 재가입이 가능한지 궁금합니다.', 2, '2024-06-03', 1, '답변대기', null, null),
       ('기능', '허니팟 웹사이트에서 전시 관람 티켓 예매 기능 문의', '허니팟 웹사이트에서 전시 관람 티켓 예매도 가능한가요?', 3, '2024-06-04', 1, '답변대기', null, null);
       
-- 공지사항 DB
INSERT
  INTO
  `NOTICE`(CATEGORY, TITLE, CONTENT, USER_CODE, REG_DATE)
  VALUES
       ('공지사항', '링크비 서비스 업데이트 안내', '링크비 플랫폼을 이용해 주셔서 감사합니다. 우리는 항상 사용자 여러분의 편의를 고려하여 서비스를 개선하고 있습니다.', 1, '2024-06-24'),
       ('이벤트', '여름 특별 할인 티켓 이벤트', '여름이 다가오면서 링크비에서는 여러분을 위한 특별한 이벤트를 준비했습니다. 이번 이벤트 기간 동안 링크비 사용자분들께서는 다양한 공연과 전시 티켓을 할인된 가격에 만나보실 수 있습니다.', 1, '2024-06-24'),
       ('공지사항', '새로운 이용 약관 적용 안내', '링크비는 사용자 여러분의 편의를 위해 새로운 이용 약관을 적용하게 되었습니다. 더 자세한 내용 및 질문이 있으신 경우, 고객센터로 문의해 주세요. 감사합니다.', 1, '2024-06-25'),
       ('공지사항', '링크비 서비스 업데이트 공지', '링크비는 사용자 여러분의 편의를 위해 새로운 이용 약관을 적용하게 되었습니다. 더 자세한 내용 및 질문이 있으신 경우, 고객센터로 문의해 주세요. 감사합니다.', 1, '2024-06-25'),
       ('공지사항', '새로운 이용 약관 적용 안내', '회원 여러분의 다양한 요구를 반영하여 새로운 기능을 추가하였습니다. 예를 들어, 더 많은 공연 및 전시 정보 제공, 개인화된 추천 기능 강화 등이 포함되어 있습니다.', 1, '2024-06-25');       
              
-- 댓글 DB(기존 DB 제거)
      
-- 파일 DB 없음
