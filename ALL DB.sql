-- LINKBEE_USER(회원정보) DB
INSERT
  INTO
`LINKBEE_USER`(NICKNAME, EMAIL, GENDER, PROFILE_PIC, ABOUTME, USER_ROLE, SIGNUP_DATE, SIGNUP_PLATFORM)
VALUES
	   ('김민국', 'rlaalsrnr@ohgiraffers.com', '남', null, '안녕하세요. 김민국입니다.', 'USER', '2024-06-01', '네이버'),
       ('박민국', 'qkralsrnr@ohgiraffers.com',  '남', null, '안녕하세요. 박민국입니다.', 'USER', '2024-06-02', '구글'),
	   ('이국민', 'dlrnrals@ohgiraffers.com', '남', null, '안녕하세요. 이국민입니다.', 'USER', '2024-06-02', '구글'),
	   ('최민국', 'chlalsrnr@ohgiraffers.com', '남', null, '안녕하세요. 최민국입니다.', 'USER', '2024-06-02', '구글'),
       ('남효정', 'koala@ohgiraffers.com', '여', null, '안녕하세요. 남쪽 효정입니다.', 'USER', '2024-06-03', '구글'),
       ('북효정', 'northkoala@ohgiraffers.com', '여', null, '안녕하세요. 북쪽 효정입니다.', 'USER', '2024-06-03', '카카오'),
       ('관리자', 'admin@admin.com', '여', null, '안녕하세요 유저코드 7번 관리자입니다.', 'ADMIN', '2024-06-06', '몰루'); 

-- INTEREST(관심사) DB
INSERT
  INTO
`INTEREST`(INTEREST_NAME)
VALUES
	   ('팝업'),
	   ('공연'),
       ('행사/축제'),
       ('전시회'),
       ('뮤지컬');

-- 회원 관심사 DB
INSERT
  INTO
`INTEREST_OF_USER`(USER_CODE, INTEREST_CODE)
VALUES
	   (1, 1),
       (1, 2),
       (1, 3),
       (1, 4),
       (2, 3),
       (2, 5),
       (3, 1),
       (3, 3),
       (3, 5),
       (4, 1),
       (4, 2),
       (4, 4),
       (5, 1),
       (5, 4),
       (6, 2),
       (6, 3),
       (6, 5);
       

-- 얼리버드 게시판 DB
INSERT
  INTO
`EARLY_BIRD`(INTEREST_CODE, EB_TITLE, EB_CONTENT, REGION, POSTER, SELLER, SELLER_LINK, REGULAR_PRICE, DISCOUNT_PRICE,
             SALE_START_DATE, SALE_END_DATE, USAGE_START_DATE, USAGE_END_DATE)
VALUES
	   (1, '빠른 대상혁신전 방문기', '대상혁 신전을 50%의 가격으로 방문하여 숭배할 수 있어용.', '서울', null, '인터파크티켓', 'interpark.co.kr', 100000, 50000,
        '2024-06-01', '2024-06-10', '2024-06-01', '2024-06-10');


-- 허니팟 게시판 테이블 생성
INSERT
  INTO
`HONEYPOT`(INTEREST_CODE, HONEYPOT_TITLE, HONEYPOT_CONTENT, USER_CODE, POSTER, REGION, TOTAL_MEMBER, REG_DATE, END_DATE, VISIBILITY_STATUS, CLOSURE_STATUS, REPORT_COUNT)
VALUES
	   (1, '대상혁님 신전가서 숭배하실분 구합니다.', '대상혁님을 숭배하러 가실 신자들 모집합니다. 찐팬 분들만 오세요', 1, null, '서울', 4, '2024-06-01', '2024-06-10', '활성화', '모집중', null);
       
-- 참가신청 DB
INSERT
  INTO
`APPLICATION`(HONEYPOT_CODE, USER_CODE, APPLICATION_DATE)
VALUES
       (1, 3, '2024-06-02'),
       (1, 4, '2024-06-02'),
       (1, 6, '2024-06-03');
       
-- 참가신청 DB
INSERT
  INTO
`APPROVAL_STATUS`(DECISION_STATUS, DECISION_DATE)
VALUES
       ('승인대기중', null),
       ('승인대기중', null),
       ('승인', '2024-06-04');

-- 평점 DB
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
       
-- 멤버평가 DB(실제로 입력예정)

-- 1:1 문의 DB
INSERT
  INTO
`INQUIRY`(CATEGORY, TITLE, CONTENT, USER_CODE, INQUIRY_DATE, ANSWER, ANSWER_DATE)
VALUES
	   ('서비스', '대상혁이 있나요', '대상혁 신전가면 대상혁도 있나요?', 4, '2024-06-03', '답변대기', null),
       ('서비스', '중상혁이 있나요', '중상혁 신전가면 중상혁도 있나요?', 5, '2024-06-04', '답변대기', null),
       ('서비스', '소상혁이 있나요', '소상혁 신전가면 소상혁도 있나요?', 6, '2024-06-05', '답변대기', null),
       ('기능', '허니팟에선 꿀도 주나요', '어디 양봉장 꿀을 주시나요?', 5, '2024-06-03', '답변대기', null),
	   ('기능', '채찍피티가 뭔가요', '채찍을 맞으면서 피티를 받는 곳인가요?', 6, '2024-06-04', '답변대기', null);
       
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
              
-- 댓글 DB
INSERT
  INTO
`COMMENT`(HONEYPOT_CODE, USER_CODE, CONTENT, WRITING_TIME)
VALUES
	  (1, 6, '몇시에 모여요?', '2024-06-01 09:00:00'),
      (1, 1, '구마유시에 모입니다. 껄껄', '2024-06-01 09:05:00');
      
-- 파일 DB 없음
      