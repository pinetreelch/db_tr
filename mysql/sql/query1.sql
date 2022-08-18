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
SELECT * FROM tradAuthor;
UPDATE tradAuthor SET tdeducationBg = 
null
WHERE tdauSeq =1;

SELECT * FROM tradBook;
UPDATE tradAuthor SET tdauIntro = 
"
베르나르 베르베르 Bernard Werber
베르베르는 일곱 살 때부터 단편소설을 쓰기 시작한 타고난 글쟁이다. 1961년 프랑스 툴루즈에서 태어나 법학을 전공하고 국립 언론 학교에서 저널리즘을 공부했다. 저널리스트로 활동하면서 과학 잡지에 개미에 관한 글을 발표해 오다가, 드디어 1991년 120여 차례 개작을 거친 『개미』를 출간, 전 세계 독자들을 사로잡으며 단숨에 <프랑스의 천재 작가>로 떠올랐다. 이후 죽음과 삶을 넘나드는 영계 탐사단을 소재로 한 『타나토노트』, 독특한 개성으로 세계를 빚어내는 신들의 이야기 『신』, 제2의 지구를 찾아 떠난 인류의 모험 『파피용』, 고양이가 화자가 되어 인간을 상대화하는 『고양이』, 새로운 시각과 기발한 상상력이 빛나는 단편집 『나무』, 사고를 전복시키는 놀라운 지식의 향연 『상대적이며 절대적인 지식의 백과사전』 등 수많은 베스트셀러를 써냈다. 그의 작품은 전 세계 35개 언어로 번역되었으며, 2천3백만 부 이상 판매되었다.
"
WHERE tdauSeq =19;

SELECT * FROM tradBook;
UPDATE tradAuthor SET tdbkToc = 
"

"
WHERE tdauSeq =19;



select 
	a.tdbkSeq
    ,a.tdbkBookTitle
    ,a.tdbkSubtitle
    ,a.tdPaperprice
    ,b.tdbkathSeq
	,(select c.tdauName from tradAuthor c where 1=1 and c.tdauSeq = b.tradAuthor_tdatSeq ) as "저자"
from tradBook a
left join tradBookAuthor b on a.tdbkSeq = b.tradBook_tdbkSeq
left join tradAuthor c on b.tradAuthor_tdatSeq = c.tdauSeq

order by tdbkSeq desc
;

select
	ifmmSeq
    ,ifmmName
    ,gender
    ,ifmmId
    from  infraMember
    
    where gender = 0
    
Union

select
	ifmmSeq
    ,ifmmName
    ,gender
    ,ifmmId
    from  infraMember
    
    where gender = 1
    ;
    
select
	ifmmName
    from infraMember
    
union

select
	tdbkBookTitle
    from tradBook
    ;
    
CREATE TABLE IF NOT EXISTS `tiger`.`bkUploaded` (
  `bkuSeq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNY` TINYINT NULL,
  `sort` TINYINT NULL,
  `orginalName` VARCHAR(45) NULL,
  `uuidName` VARCHAR(45) NULL,
  `ext` VARCHAR(45) NULL,
  `size` INT NULL,
  `delNY` TINYINT NOT NULL,
  `bkSeq` INT NOT NULL,
  PRIMARY KEY (`bkuSeq`))
ENGINE = InnoDB
;


