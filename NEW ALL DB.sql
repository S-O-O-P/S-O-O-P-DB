use linkbeedb;

INSERT
  INTO
`LINKBEE_USER`(NICKNAME, EMAIL, GENDER, PROFILE_PIC, ABOUTME, USER_ROLE, SIGNUP_DATE, SIGNUP_PLATFORM)
VALUES
	   ('관리자', 'admin@admin.com', '관리자', '관리자', '관리자', 'ROLE_ADMIN', '2024-07-01', 'ADMIN'),
       ('너굴너굴너굴맨', 'krossjsnet88@naver.com', '남자', 'https://phinf.pstatic.net/contact/20240708_176/1720409807264OBxd6_JPEG/image.jpg', '뀨?', 'ROLE_USER', '2024-07-08', 'naver:6UiaZlGUvWSdzpWSfBzzR06y4TsFfqNtrpbprYYfhoU'),
       ('카카오굴', 'krossjsnet88@naver.com', '남자', 'http://k.kakaocdn.net/dn/bij2eY/btsCN3sZtLM/5UZk5jBkKh6rmn7TJxbEnk/img_640x640.jpg', '카카오톡으로 가입한 너굴맨', 'ROLE_USER', '2024-07-08', 'kakao:3608933938'),
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
INSERT
  INTO
`EARLY_BIRD`(INTEREST_CODE, EB_TITLE, EB_CONTENT, REGION, POSTER, DATE_WRITTEN, AGE_LIMIT, PLACE, SELLER, SELLER_LINK, REGULAR_PRICE, DISCOUNT_PRICE,
             SALE_START_DATE, SALE_END_DATE, USAGE_START_DATE, USAGE_END_DATE)
VALUES
       (1, '빠른 대상혁신전 방문기', '대상혁 신전을 50%의 가격으로 방문하여 숭배할 수 있어용.', '서울', null, '2024-07-05', '전체관람가', 'LoL파크', '인터파크티켓', 'interpark.co.kr', 100000, 50000,
        '2024-06-01', '2024-06-10', '2024-06-01', '2024-06-10'),
	('4', '다니엘 아샴', '공연시간 정보<br>운영시간: 오전 10:30 - 오후 07:00 (입장 및 발권 마감 : 오후 06:30)<br><br>휴관일: 월 1회 휴관 (8/19(월))<br>홈페이지 참조 https://www.lottemuseum.com/<br><br>공지사항<br>※ 판매기간: 24. 05. 23.(목) - 07. 11.(목) 23:59 까지<br>※ 사용기간: 24. 07. 12.(금) - 08. 11.(일)<br>※ 취소 및 환불 기한: 티켓구매일 ~ 24. 08. 10.(토) 23:59까지 (사용기한 D-1 까지 취소 가능, 이후 취소 불가)<br><br>※ 휴관 안내 : 월 1회 휴관 (8/19(월)) / 롯데뮤지엄 홈페이지 참조 (www.lottemuseum.com)<br>※ 문화가 있는 날 : 매월 마지막 주 수요일 현장할인 (중복할인 불가)',
       '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24007290-02.jpg', '2024-07-05', '전체관람', '롯데뮤지엄', '인터파크 티켓', 'https://tickets.interpark.com/goods/24007290', '20000', '9000', '2024-07-12', '2024-08-11', '2024-07-12', '2024-08-11'),
('4', '광주비엔날레', '전시장 입장마감<br><br>오전 10시 ~ 오후 6시(입장마감 오후 5시 30분)<br>매주 월요일 휴관(9월 9일, 16일, 17일, 18일, 10월 3일, 9일 정상개관)<br><br>할인정보<br>문화누리카드 결제시 - 성인 : 5,000원 / 청소년 : 3,000원 / 어린이 : 2,000원',
       '광주', 'https://ticketimage.interpark.com/Play/image/etc/24/24007059-03.jpg', '2024-07-05', '전체관람', '광주비엔날레전시관', '인터파크 티켓', 'https://tickets.interpark.com/goods/24007059', '18000', '15000', '2024-09-07', '2024-12-01', '2024-09-07', '2024-12-01'),
('4', '서양미술', '［관람시간］<br><br>월-목 10:3020:00<br>금-일 10:3020:30<br>매표 및 입장 관람 종료 1시간 전 마감<br><br>*휴관일은 더현대 서울의 휴점일에 따라 변동이 있습니다.<br>공지사항<br>※공지<br><br>[얼리버드 티켓 안내]<br><br>-얼리버드 할인 티켓 사용 기간 : 2024.06.05(수)~2024.08.16(금)<br>-사용 기간 이후 취소 및 환불 불가<br>-관람객이 많을 경우 대기번호표를 시행 합니다.<br>-대기번호 운영 시 예매하신 경우에도 동일하게 대기번호를 받으셔야 합니다.<br>-대기시간이 길어질 경우 매표 및 입장이 조기 종료될 수 있으니 고객님들의 많은 양해 부탁드립니다.',
       '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24007922-13.jpg', '2024-07-05', '전체관람가', '더현대 서울 6층 ALT.1', '인터파크 티켓', 'https://tickets.interpark.com/goods/24007922', '20000', '10000', '2024-06-05', '2024-08-16', '2024-06-05', '2024-08-16'),
('5', '접변', '공연시간<br><br>정보예매가능시간: 전일 17시(월~토 관람 시)까지<br>전일 11시(일요일 관람 시)까지<br><br>화, 목, 금 20:00 / 수 16:00, 20:00 / 토 15:00, 19:00 / 일·공휴일 14:00, 18:00',
       '서울', 'https://ticketimage.interpark.com/Play/image/etc/24/24008373-04.jpg', '2024-07-05', '만 13세 이상', '대학로 TOM관', '인터파크 티켓', 'https://tickets.interpark.com/goods/24008373', '20000', '10000', '2024-07-20', '2024-09-02', '2024-07-20', '2024-09-02');
       

-- 허니팟 게시판 테이블 생성
INSERT INTO HONEYPOT(INTEREST_CODE, HONEYPOT_TITLE, HONEYPOT_CONTENT, USER_CODE, POSTER, REGION, TOTAL_MEMBER, REG_DATE, EVENT_DATE, END_DATE, VISIBILITY_STATUS, CLOSURE_STATUS, REPORT_COUNT, SEQ_NO) VALUES
(2, '경주어린이박물관학교 70주년, 함께 지킨 오랜 약속', '국립경주박물관에서 열리는 특별전에 함께 가요!', 2, 'http://www.culture.go.kr/upload/rdf/24/07/show_202407514595600096.jpg', '경북', 4, '2024-07-01', '2024-07-16', '2024-09-22', '활성화', '진행완료', null, 276153),
(3, '갤러리 인사1010 기획전 김한기 <오즈의 과학자>', '갤러리 인사 1010에서 열리는 전시회에 같이 가요', 3, 'http://www.culture.go.kr/upload/rdf/24/07/show_2024070413495286462.jpg', '서울', 3, '2024-07-05', '2024-07-17', '2024-08-18', '활성화', '진행완료', null, 281960),
(1, '2024 대한민국 우표전시회', '노들섬 복합문화공간에서 열리는 전시회에 같이 가실 분?', 4, 'http://www.culture.go.kr/upload/rdf/24/07/show_202407317272109874.jpg', '서울', 3, '2024-07-10', '2024-07-18', '2024-07-24', '활성화', '모집중', null, 280781),
(4, '차 한 잔 하실래요?', '국립정동극장 세실에서 열리는 무용 공연 함께 즐겨요', 2, 'http://www.culture.go.kr/upload/rdf/24/06/show_2024061815282151579.jpg', '서울', 2, '2024-07-12', '2024-07-23', '2024-07-23', '활성화', '모집중', null, 280096),
(5, '2024년 광명문화재단 7월 기획 공연 <WBG 트롬본 콰르텟 콘서트>', '광명시민회관 대공연장에서 열리는 트롬본 콘서트 같이 가실 분?', 3, 'http://www.culture.go.kr/upload/rdf/24/06/show_2024062415564581789.jpg', '경기', 4, '2024-07-08', '2024-07-19', '2024-07-19', '활성화', '모집중', null, 280798),
(2, '[세종] 지브리 영화음악 심포니 콘서트 with 오케스트라', '세종예술의전당 대공연장에서 열리는 영화음악 콘서트에 함께해요', 4, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_2024061921182631620.gif', '세종', 3, '2024-07-11', '2024-07-19', '2024-07-19', '활성화', '모집중', null, 280393),
(3, '[공주] 제198회 공주시충남교향악단 정기연주회: 비창의 미학', '공주문예회관 대공연장에서 열리는 오케스트라 공연 함께 볼까요?', 2, 'http://www.culture.go.kr/upload/rdf/24/06/rdf_202406192119858675.gif', '충남', 4, '2024-07-09', '2024-07-19', '2024-07-19', '활성화', '모집중', null, 280419);

-- 승인 신청 데이터
INSERT
   INTO
 `APPLICATION`(HONEYPOT_CODE, USER_CODE, APPLICATION_DATE)
 VALUES
        (1, 3, '2024-07-03'),
		(1, 4, '2024-07-03');        
        
-- 참가신청 DB
INSERT 
  INTO
 `APPROVAL_STATUS`(DECISION_STATUS, DECISION_DATE)
 VALUES
        ('승인', '2024-07-04', '2024-07-05'),
        ('승인', '2024-07-04', '2024-07-05');
        
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
       ('서비스', '대상혁이 있나요', '대상혁 신전가면 대상혁도 있나요?', 4, '2024-06-03', 7, '답변대기', null, null),
       ('서비스', '중상혁이 있나요', '중상혁 신전가면 중상혁도 있나요?', 5, '2024-06-04', 7, '답변대기', null, null),
       ('서비스', '소상혁이 있나요', '소상혁 신전가면 소상혁도 있나요?', 6, '2024-06-05', 7, '답변대기', null, null),
       ('기능', '허니팟에선 꿀도 주나요', '어디 양봉장 꿀을 주시나요?', 5, '2024-06-03', 7, '답변대기', null, null),
       ('기능', '채찍피티가 뭔가요', '채찍을 맞으면서 피티를 받는 곳인가요?', 6, '2024-06-04', 7, '답변대기', null, null);
       
-- 공지사항 DB
INSERT
  INTO
  `NOTICE`(CATEGORY, TITLE, CONTENT, USER_CODE, REG_DATE)
  VALUES
       ('공지사항', '링크비 서비스 업데이트 안내', '링크비 플랫폼을 이용해 주셔서 감사합니다. 우리는 항상 사용자 여러분의 편의를 고려하여 서비스를 개선하고 있습니다.', 7, '2024-06-24'),
       ('이벤트', '여름 특별 할인 티켓 이벤트', '여름이 다가오면서 링크비에서는 여러분을 위한 특별한 이벤트를 준비했습니다. 이번 이벤트 기간 동안 링크비 사용자분들께서는 다양한 공연과 전시 티켓을 할인된 가격에 만나보실 수 있습니다.', 7, '2024-06-24'),
       ('공지사항', '새로운 이용 약관 적용 안내', '링크비는 사용자 여러분의 편의를 위해 새로운 이용 약관을 적용하게 되었습니다. 더 자세한 내용 및 질문이 있으신 경우, 고객센터로 문의해 주세요. 감사합니다.', 7, '2024-06-25'),
       ('공지사항', '링크비 서비스 업데이트 공지', '링크비는 사용자 여러분의 편의를 위해 새로운 이용 약관을 적용하게 되었습니다. 더 자세한 내용 및 질문이 있으신 경우, 고객센터로 문의해 주세요. 감사합니다.', 7, '2024-06-25'),
       ('공지사항', '새로운 이용 약관 적용 안내', '회원 여러분의 다양한 요구를 반영하여 새로운 기능을 추가하였습니다. 예를 들어, 더 많은 공연 및 전시 정보 제공, 개인화된 추천 기능 강화 등이 포함되어 있습니다.', 7, '2024-06-25');       
              
-- 댓글 DB(기존 DB 제거)
      
-- 파일 DB 없음