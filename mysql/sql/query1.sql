USE tiger;

SELECT * FROM infraMember;
SELECT * FROM tradAuthor;
SELECT 
    *
FROM
    tradBook;
SELECT * FROM tradBookAuthor;
SELECT *FROM  tradPurchaseBooks;
SELECT *FROM  tradPurchase;
SELECT *FROM  tradWishlist;
SELECT * FROM tradBook;

DELETE FROM infraMember WHERE ifmmSeq =11;

ALTER TABLE tradBook RENAME COLUMN tdbk TO tdbkDop;
ALTER TABLE tradBook ADD tdbkGenre VARCHAR(45) NULL;
ALTER TABLE tradBook ADD tdbkIntro TEXT NULL;
ALTER TABLE infraMember ADD ifmmtel VARCHAR(45) NULL;

ALTER TABLE tradBook ADD tdbk VARCHAR(45) NULL;

ALTER TABLE tradAuthor DROP COLUMN tdauDob;
ALTER TABLE tradBook MODIFY tdbkToc TEXT;

INSERT INTO tradBook WHERE tdbkSeq = 2 (
	
    tdbkDiscountprice
   
)
VALUES (
	null
)

;





CREATE TABLE IF NOT EXISTS `tiger`.`codeGroup` (
  `cgSeq` INT NOT NULL AUTO_INCREMENT,
  `cgName` VARCHAR(45) NULL,
  PRIMARY KEY (`cgSeq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tiger`.`code` (
  `cSeq` INT NOT NULL,
  `cdName` VARCHAR(45) NULL,
  `codeGroup_cgSeq` INT NOT NULL,
  PRIMARY KEY (`cSeq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_cgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_cgSeq`)
    REFERENCES `tiger`.`codeGroup` (`cgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
SELECT * FROM tradBook;
UPDATE tradBook SET tdbkIntro = 
"

"
WHERE tdbkSeq =12;

SELECT * FROM tradBook;
UPDATE tradBook SET tdbkPusblisheropinion = 
"


"
WHERE tdbkSeq =12;

SELECT * FROM tradBook;
UPDATE tradBook SET tdbkToc = 
"

"
WHERE tdbkSeq =12;