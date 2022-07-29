USE tiger;
CREATE TABLE IF NOT EXISTS `tiger`.`member2` (
  `ifmm2Seq` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ifmm2Seq`))
ENGINE = InnoDB
;

-- 전체 컬럼 조회
SELECT * FROM  member2;

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname VARCHAR(45);

ALTER TABLE member2 ADD COLUMN phone VARCHAR(45);

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45);

ALTER TABLE member2 ADD COLUMN nameCn VARCHAR(45) after nickname;

-- 컬럼 변수 타입 변경
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컴럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nicknamechange VARCHAR(45);

-- 컬럼 삭제
ALTER TABLE member2 drop COLUMN nicknamechange;

-- row 삭제 delete from where 먼저 쓰고 테이블명 적기
DELETE FROM 테이블명 WHERE seq = 2; 

-- commit / rollback 용어 

-- 컬럼에 들어간 데이터 수정

UPDATE member2 SET nameENG = "dd" where ifmm2Seq = 1;

SELECT * FROM member2;

SELECT * FROM member2
WHERE 1=1
AND nickname like ' '
;


SELECT * FROM member2
WHERE 1=1
-- AND intcolumn = 0
-- AND intcoulumn > 1
-- AND intcolumn >= 1
-- AND intcolumn between 0 and 1
;

SELECT * FROM member2
WHERE 1=1
AND nameEng is null
;

SELECT * FROM member2
WHERE 1=1
AND nickname like '%dn%'
;

SELECT * FROM member2
WHERE 1=1
-- AND age = 5
-- AND intcoulumn > 1
-- AND intcolumn >= 1
AND age between 0 and 10;
;

SELECT * FROM member2
WHERE 1=1
AND nameEng =""
;
