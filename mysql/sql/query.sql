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

INSERT INTO tradBook (
tdbkIntro
)
VALUES (
"기후위기는 지구의 문제가 아니다
절멸로 치닫는 인류생존의 문제다

지금 당장의 내가 편리하고 시원하면 되는 것일까요?
3년 뒤, 5년 뒤, 10년 뒤의 우리는 어떻게 되는 걸까요?
내 아이가 살아갈 미래는 또 어떤 모습일까요?
정말 개인의 노력으로는 상황을 바꿀 수 없는 걸까요?

논픽션 오리지널 〈리와일드〉 7월호에서는 더는 방관할 수 없는 기후 문제를 다룹니다.

일개 소수의 노력만으로는 어려우니 결국은 기업과 정부가 나서야 한다는 말 뒤에 숨기보다는 내가 할 수 있는 일부터 시작하자고 말합니다. 주1회 채식을 시도하고 '쓰레기'라 불리던 것들을 다시 쓰는 일상의 실천, 그리고 더 큰 목소리로 변화를 요구하자는 운동의 일상화와 기존의 프레임을 깨고 다시 환경 문제를 직면하자는 제언까지 깊은 혹은 넓은 이야기를 다룹니다.

버틸 수 있는 시간은 8년밖에 남지 않았음을 알리며 기후변화에 관한 정부 간 협의체(IPCC)의 보고서를 중심으로 기후위기의 심각성을 논하는 최우리 기자의 글, 헐렁하고 소심한 채식주의가 세상을 구할 수 있다며 제일 간단한 것부터 시작해보자고 손을 내미는 오지은 작가의 글, 젠더 고려가 없는 기후 대응문제를 논하며 성평등이 문제를 더 잘 해결할 수 있다고 제시하는 정은아 연구원의 글, 누구보다 '플라스틱 프리' 운동에 진심으로 실생활에서 쓰레기 없는 삶을 연구하며 살아가는 실천기인 유혜민 감독의 글, 북극곰의 눈물에서 벗어나 지구가 아닌 우리의 목숨을 지키기 위해 나서야 한다며 경종을 울리는 이소연 작가의 글까지.

〈리와일드〉 7월호 기후위기? 인류위기 편에서는 읽다 보면 심장 떨리는 기후위기, 아니 인류위기 이야기를 소개합니다.

※ 〈리와일드〉는 야망 있는 여자가 인류를 구한다 는 슬로건 아래 모든 협업자를 여성으로 구성하여 작업을 진행하고 있습니다. 〈리와일드〉는 여자가 관심 있는 것이 인류에게 이로운 방향이라 믿습니다."
)
WHERE tdbkSeq = 1
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