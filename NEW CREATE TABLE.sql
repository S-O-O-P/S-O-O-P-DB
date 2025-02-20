use linkbeedb;

-- 회원정보 테이블 생성
CREATE TABLE IF NOT EXISTS LINKBEE_USER
(
	USER_CODE INTEGER NOT NULL AUTO_INCREMENT COMMENT '회원번호',
	NICKNAME VARCHAR(16) NOT NULL COMMENT '닉네임',
	EMAIL VARCHAR(255) NOT NULL COMMENT '이메일',
	GENDER VARCHAR(255) NOT NULL COMMENT '성별',
	PROFILE_PIC VARCHAR(5000) COMMENT '프로필사진',
	ABOUTME VARCHAR(180) COMMENT '자기소개',
	USER_ROLE VARCHAR(255) NOT NULL COMMENT '권한',
	SIGNUP_DATE DATE NOT NULL COMMENT '가입일자',
	SIGNUP_PLATFORM VARCHAR(255) NOT NULL COMMENT '플랫폼',
PRIMARY KEY (USER_CODE)
) ENGINE=INNODB COMMENT = '회원정보';

ALTER TABLE LINKBEE_USER MODIFY COLUMN NICKNAME VARCHAR(255);

-- 로그인 테이블 생성
CREATE TABLE IF NOT EXISTS `LOGIN` (
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호',
    `ID` VARCHAR(16) NOT NULL COMMENT '아이디',
    `PASSWORD` VARCHAR(16) NOT NULL COMMENT '비밀번호',
    PRIMARY KEY (`USER_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`)

) ENGINE=INNODB COMMENT = '로그인';

CREATE TABLE IF NOT EXISTS REFRESHENTITY
(
	REFRESH_CODE INTEGER NOT NULL AUTO_INCREMENT COMMENT '리프레쉬 토큰 번호',
	USER_CODE INTEGER NOT NULL COMMENT '회원번호',
    PROFILE_PIC VARCHAR(5000) COMMENT '프로필사진',
	SIGNUP_PLATFORM VARCHAR(255) NOT NULL COMMENT '플랫폼',
	REFRESH VARCHAR(512) NOT NULL COMMENT '리프레쉬 토큰',
	EXPIRATION VARCHAR(255) NOT NULL COMMENT '만료',
PRIMARY KEY (REFRESH_CODE)
) ENGINE=INNODB COMMENT = '리프레쉬 토큰';

ALTER TABLE REFRESHENTITY MODIFY COLUMN REFRESH TEXT;

-- 관심사 카테고리 테이블 생성
CREATE TABLE IF NOT EXISTS `INTEREST` 
(
    `INTEREST_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '관심사번호',
    `INTEREST_NAME` VARCHAR(255) NOT NULL COMMENT '관심사이름',
    PRIMARY KEY (`INTEREST_CODE`)
) ENGINE=INNODB COMMENT = '관심사';

-- 회원의 관심사 테이블 생성
CREATE TABLE IF NOT EXISTS `INTEREST_OF_USER` 
(
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호',
    `INTEREST_CODE` INTEGER NOT NULL COMMENT '관심사번호',
    PRIMARY KEY (`USER_CODE`, `INTEREST_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`),
    FOREIGN KEY (`INTEREST_CODE`) REFERENCES `INTEREST` (`INTEREST_CODE`)
) ENGINE=INNODB COMMENT = '회원관심사';

-- 얼리버드 게시판 테이블 생성
CREATE TABLE IF NOT EXISTS `EARLY_BIRD`
(
    `EARLY_BIRD_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '얼리버드번호',
    `INTEREST_CODE` INTEGER NOT NULL COMMENT '관심사(장르)번호',
    `EB_TITLE` VARCHAR(255) NOT NULL COMMENT '제목',
    `EB_CONTENT` VARCHAR(1000) NOT NULL COMMENT '내용',
    `REGION` VARCHAR(255) NOT NULL COMMENT '지역',
    `POSTER` VARCHAR(255) COMMENT '포스터',
    `DATE_WRITTEN` DATE NOT NULL COMMENT'작성일자',
    `AGE_LIMIT` VARCHAR(255) NOT NULL COMMENT '관람연령',
    `PLACE` VARCHAR(255) NOT NULL COMMENT '관람장소',
    `SELLER` VARCHAR(255) NOT NULL COMMENT '판매처',
	`SELLER_LINK` VARCHAR(255) COMMENT '판매처링크',
    `REGULAR_PRICE` INTEGER NOT NULL COMMENT '일반가격',
    `DISCOUNT_PRICE` INTEGER NOT NULL COMMENT '할인가격',
    `SALE_START_DATE` DATE NOT NULL COMMENT '판매시작일',
    `SALE_END_DATE` DATE NOT NULL COMMENT '판매종료일',
    `USAGE_START_DATE` DATE NOT NULL COMMENT '사용시작일',
    `USAGE_END_DATE` DATE NOT NULL COMMENT '사용종료일',
    PRIMARY KEY (`EARLY_BIRD_CODE`),
    FOREIGN KEY (`INTEREST_CODE`) REFERENCES `INTEREST` (`INTEREST_CODE`)
) ENGINE=INNODB COMMENT = '얼리버드';


-- 허니팟 게시판 테이블 생성
CREATE TABLE IF NOT EXISTS `HONEYPOT`
(
    `HONEYPOT_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '허니팟번호',
    `INTEREST_CODE` INTEGER NOT NULL COMMENT '관심사(장르)번호',
    `HONEYPOT_TITLE` VARCHAR(24) NOT NULL COMMENT '제목',
    `HONEYPOT_CONTENT` VARCHAR(500) NOT NULL COMMENT '소개글',
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호(작성자번호)',
    `POSTER` VARCHAR(255) COMMENT '포스터',
    `REGION` VARCHAR(255) NOT NULL COMMENT '지역',
    `TOTAL_MEMBER` INTEGER NOT NULL COMMENT '총인원',
    `REG_DATE` DATE NOT NULL COMMENT '작성일자',
    `EVENT_DATE` DATE NOT NULL COMMENT '모임일자',
    `END_DATE` DATE NOT NULL COMMENT '마감일자',
    `VISIBILITY_STATUS` VARCHAR(255) NOT NULL COMMENT '노출상태',
    `CLOSURE_STATUS` VARCHAR(255) NOT NULL COMMENT '마감상태',
    `REPORT_COUNT` INTEGER COMMENT '신고횟수',
    `SEQ_NO` INTEGER NOT NULL COMMENT '시퀀스번호',
    PRIMARY KEY (`HONEYPOT_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`),
    FOREIGN KEY (`INTEREST_CODE`) REFERENCES `INTEREST` (`INTEREST_CODE`)
) ENGINE=INNODB COMMENT = '소셜링 게시물';

-- 참가신청 테이블 생성
CREATE TABLE IF NOT EXISTS `APPLICATION` (
    `APPLICATION_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '참가신청번호',
    `HONEYPOT_CODE` INTEGER NOT NULL COMMENT '허니팟번호',
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호(참가회원번호)',
    `APPLICATION_DATE` DATE NOT NULL COMMENT '참가신청일자',
    PRIMARY KEY (`APPLICATION_CODE`),
    FOREIGN KEY (`HONEYPOT_CODE`) REFERENCES `HONEYPOT` (`HONEYPOT_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`)
) ENGINE=INNODB COMMENT = '참가신청';

-- 승인/거절 상태 테이블 생성
CREATE TABLE IF NOT EXISTS `APPROVAL_STATUS` (
    `APPLICATION_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '참가신청번호',
    `DECISION_STATUS` VARCHAR(255) NOT NULL COMMENT '상태',
    `DECISION_DATE` DATE COMMENT '결정일자',
    PRIMARY KEY (`APPLICATION_CODE`),
    FOREIGN KEY (`APPLICATION_CODE`) REFERENCES `APPLICATION` (`APPLICATION_CODE`)
) ENGINE=INNODB COMMENT = '승인/거절상태';

-- 평점 테이블 생성
CREATE TABLE IF NOT EXISTS `RATING` (
    `RATING_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '평점번호',
    `RATING_NAME` VARCHAR(255) NOT NULL COMMENT '평가명',
    `SCORE` INTEGER NOT NULL COMMENT '평점',
    `CONTENT` VARCHAR(255) NOT NULL COMMENT '평가내용',
    PRIMARY KEY (`RATING_CODE`)
) ENGINE=INNODB COMMENT = '평점';

-- 회원평가 테이블 생성
CREATE TABLE IF NOT EXISTS `USER_RATING` (
    `USER_RATING_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '유저평가번호',
    `HONEYPOT_CODE` INTEGER COMMENT '허니팟번호',
    `RATER_CODE` INTEGER NOT NULL COMMENT '평가자번호',
    `RATEE_CODE` INTEGER NOT NULL COMMENT '피평가자번호',
    `RATING_CODE` INTEGER NOT NULL COMMENT '평점번호',
    PRIMARY KEY (`USER_RATING_CODE`),
    FOREIGN KEY (`HONEYPOT_CODE`) REFERENCES `HONEYPOT` (`HONEYPOT_CODE`),
    FOREIGN KEY (`RATER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`),
    FOREIGN KEY (`RATEE_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`),
    FOREIGN KEY (`RATING_CODE`) REFERENCES `RATING` (`RATING_CODE`)
) ENGINE=INNODB COMMENT = '리뷰';

ALTER TABLE USER_RATING
ADD CONSTRAINT unique_rating UNIQUE (HONEYPOT_CODE, RATER_CODE, RATEE_CODE);

-- 문의 게시판 테이블 생성
CREATE TABLE IF NOT EXISTS `INQUIRY` (
    `INQUIRY_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '문의번호',
    `CATEGORY` VARCHAR(255) NOT NULL COMMENT '카테고리',
    `TITLE` VARCHAR(255) NOT NULL COMMENT '문의제목',
    `CONTENT` VARCHAR(255) NOT NULL COMMENT '문의내용',
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호(문의작성자)',
    `INQUIRY_DATE` DATE NOT NULL COMMENT '문의날짜',
    `ADMIN_CODE` INTEGER NOT NULL COMMENT '회원번호(관리자)',
    `ANSWER_STATUS` VARCHAR(255) NOT NULL COMMENT '답변여부',
    `ANSWER` VARCHAR(500) COMMENT '답변내용',
    `ANSWER_DATE` DATE COMMENT '답변날짜',
    PRIMARY KEY (`INQUIRY_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`),
    FOREIGN KEY (`ADMIN_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`)
) ENGINE=INNODB COMMENT = '문의';

-- 공지사항 테이블 생성
CREATE TABLE IF NOT EXISTS `NOTICE` (
    `NOTICE_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '공지사항번호',
    `CATEGORY` VARCHAR(255) NOT NULL COMMENT '카테고리',
    `TITLE` VARCHAR(255) NOT NULL COMMENT '제목',
    `CONTENT` VARCHAR(255) NOT NULL COMMENT '내용',
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호(작성자)',
    `REG_DATE` DATE NOT NULL COMMENT '작성일자',
    PRIMARY KEY (`NOTICE_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`)
) ENGINE=INNODB COMMENT = '공지사항';

-- 댓글 테이블 생성
CREATE TABLE IF NOT EXISTS `COMMENT` (
    `COMMENT_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '댓글번호',
    `HONEYPOT_CODE` INTEGER NOT NULL COMMENT '허니팟번호',
    `USER_CODE` INTEGER NOT NULL COMMENT '회원번호(댓글작성자)',
    `CONTENT` VARCHAR(500) NOT NULL COMMENT '내용',
    `WRITING_TIME` DATETIME NOT NULL COMMENT '작성시간',
    `UPDATE_TIME` DATETIME COMMENT '수정시간',
    PRIMARY KEY (`COMMENT_CODE`),
    FOREIGN KEY (`HONEYPOT_CODE`) REFERENCES `HONEYPOT` (`HONEYPOT_CODE`),
    FOREIGN KEY (`USER_CODE`) REFERENCES `LINKBEE_USER` (`USER_CODE`)
) ENGINE=INNODB COMMENT = '댓글';

-- FILE 테이블 생성
CREATE TABLE IF NOT EXISTS `ATTACHED_FILE` (
    `FILE_CODE` INTEGER NOT NULL AUTO_INCREMENT COMMENT '파일번호',
    `NAME` VARCHAR(255) NOT NULL COMMENT '파일이름',
    `NOTICE_CODE` INTEGER NOT NULL COMMENT '공지사항번호',
    PRIMARY KEY (`FILE_CODE`),
    FOREIGN KEY (`NOTICE_CODE`) REFERENCES `NOTICE` (`NOTICE_CODE`)
) ENGINE=INNODB COMMENT = '파일';

-- 기존 외래 키 제약 조건 삭제
ALTER TABLE `COMMENT` 
DROP FOREIGN KEY `COMMENT_ibfk_1`;

-- CASCADE 옵션이 포함된 새로운 외래 키 제약 조건 추가
ALTER TABLE `COMMENT`
ADD CONSTRAINT `COMMENT_ibfk_1` 
FOREIGN KEY (`HONEYPOT_CODE`) 
REFERENCES `HONEYPOT` (`HONEYPOT_CODE`) 
ON DELETE CASCADE;

