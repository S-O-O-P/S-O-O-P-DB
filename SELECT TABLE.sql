use linkbeedb;

-- 테이블 별 전체 조회(조건 X)

SELECT * FROM `application`;
SELECT * FROM `approval_status`;
SELECT * FROM `attached_file`;
SELECT * FROM `comment`;
SELECT * FROM `early_bird`;
SELECT * FROM `honeypot`;
SELECT * FROM `inquiry`;
SELECT * FROM `interest`;
SELECT * FROM `interest_of_user` ORDER BY USER_CODE;
SELECT * FROM `linkbee_user`;
SELECT * FROM `notice`;
SELECT * FROM `rating`;
SELECT * FROM `user_rating`;

