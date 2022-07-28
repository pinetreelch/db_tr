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

ALTER TABLE member2 ADD COLUMN nameEng VARCHAR(45);

ALTER TABLE member2 ADD COLUMN nameCn VARCHAR(45) after nickname;

-- 컬럼 변수 타입 변경
ALTER TABLE member2 MODIFY COLUMN nickname varchar(100);

-- 컴럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nicknamechange VARCHAR(45);
