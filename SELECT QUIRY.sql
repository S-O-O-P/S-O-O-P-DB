-- 댓글 작성 시 호스트, 참가자 구분

SELECT 
    A.HONEYPOT_CODE,
    A.USER_CODE AS COMMENT_USER_CODE,
    A.CONTENT,
    B.USER_CODE AS HOST_USER_CODE,
    CASE 
        WHEN A.USER_CODE = B.USER_CODE THEN '호스트'
        ELSE '참가자'
    END AS 작성자구분
FROM 
    COMMENT A
JOIN 
    HONEYPOT B ON A.HONEYPOT_CODE = B.HONEYPOT_CODE;
    
-- 수정 테스트
        UPDATE HONEYPOT
           SET HONEYPOT_TITLE = '테스트 제목 수정',
               HONEYPOT_CONTENT = '테스트 내용 수정',
               EVENT_DATE = '2024-07-19',
               END_DATE = '2024-07-18',
               TOTAL_MEMBER = 3
         WHERE HONEYPOT_CODE = 1