use tiger;

-- ccg
select 
	a.cgSeq
    , a.cgName
    , b.*
from  codeGroup a
-- inner join tradBookAuthor b on b.tdbkathSeq = a.tdbkSeq;
left join codeCd b on a.cgSeq  = b.codeGroup_cgSeq; 
;

		select 
			b.cgSeq
		    , b.cgName
		    , a.*
		  
		from  codeGroup b
		
		left join codeCd a on b.cgSeq  = a.codeGroup_cgSeq 
		WHERE 1=1
			AND a.delNY = 0
            ;
            
		select
			a. *
            , b. *
		from codeCd a
		join codeGroup b on a.codeGroup_cgSeq = b.cgSeq
        WHERE 1=1
			AND a.delNY = 0
            ;
            
-- 로그인
select * from infraMember;
select * from infraMember where ifmmId = "pinetreelch"  and  ifmmPwd = "sdfsdf";

-- 메인화면-
select 
	a.tdbkSeq
	,a.tdbkBookTitle
    ,a.tdbkSubtitle
    ,b.*

from tradBook a
left join tradBookAuthor b on a.tdbkSeq = b.tradBook_tdbkSeq
left join tradAuthor c on b.tradAuthor_tdatSeq = c.tdauSeq

where a.tdbkSeq = 1;


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
left join tradBookAuthor b on a.tdbkSeq = b.tradBook_tdbkSeq
left join tradAuthor c on b.tradAuthor_tdatSeq = c.tdauSeq


;
-- order by (등록일, 수정일)-- 숫사, 알파벳, 한글 아무것도 없으면 정방향// 아무것도 없다는 얘기는 asc를 사용하지 않은 것. ASC뜻은 정방향이라는 뜻 반대로 DESC가 있음. DESC는 역방향(한글, 알파벳, 숫자).// 정렬의 순서를 주고 싶을 때는 콤마 (,)를 사용 // defaultNY subQuery Order by 
-- group by,, sum(), having// 
-- union 

-- 구매페이지
  	select
			a. *
            , b. *
            -- ,(select count(cgSeq)as "total" FROM codeCd )
		from codeCd a
		join codeGroup b on a.codeGroup_cgSeq = b.cgSeq
        WHERE 1=1
			AND a.delNY = 0
           ;
           
		SELECT 
			a.*
			, b.codeGroup_cgSeq
            ,(select count(cSeq)  from codeCd where codeGroup_cgSeq = cgSeq ) as "total"
		FROM codeGroup a
		inner JOIN codeCd b on b.codeGroup_cgSeq = a.cgSeq
		WHERE 1=1
			AND a.delNY = 0
            ;
		
        -- insert
        
        INSERT INTO codeGroup(
 
        cgName
        ,cgKor

        )
        VALUES (
	
            "sdf"
            ,"abc"
        
        )
        ;
            
            