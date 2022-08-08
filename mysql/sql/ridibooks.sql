use tiger;

-- ccg
select 
	a.cgSeq
    , a.cgName
    , b.cSeq
    , b.cdName
from  codeGroup a
-- inner join tradBookAuthor b on b.tdbkathSeq = a.tdbkSeq;
left join codeCd b on a.cgSeq  = b.codeGroup_cgSeq; 
;

-- 로그인
select * from infraMember;
select * from infraMember where ifmmId = "pinetreelch"  and  ifmmPwd = "sdfsdf";

-- 메인화면



-- 책 상세보기 페이지 불러오기

select 
	a.tdbkSeq
	,a.tdbkBookTitle
    ,a.tdbkSubtitle
    ,a.tdPaperprice
    ,a.tdbkDiscountprice
    ,a.tdbkSales
    ,a.tdbkIntro
    ,a.tdbkPusblisherOpinion
    ,a.tdbkToc
    ,a.tdbkPublisher
    ,a.tdbkDop
    ,a.tdbkDopType
    ,a.tdbkDopPaper
    ,a.tdbkDopPtype
    ,a.tdbkGenre
    ,a.tdbkListenFunction
    ,a.tdbkFileinfo
    ,a.tdbkSupportDevice
    ,a.tdbkIsbn
    ,b.tdbkathSeq
    ,b.tradAuthor_tdatSeq
    ,b.tradBook_tdbkSeq
    ,c.tdauName
    ,c.tdauNameEng
    , c.tdauNationality
    , c.tdauBirthyear
    , c.tdauCareer
    , c.tdeducationBgUni
    , c.tdeducationBgHigh
    , c.tdauDebut
    , c.tdauAward
    , c.tdauIntro
    , c.tdauLinkBlog
    , c.tdauLinkTwitter
    , c.tdauLinkSite
from tradBook a
inner join tradBookAuthor b on a.tdbkSeq = b.tradBook_tdbkSeq
inner join tradAuthor c on b.tradAuthor_tdatSeq = c.tdauSeq

where a.tdbkSeq = 1;

-- 구매페이지
  
