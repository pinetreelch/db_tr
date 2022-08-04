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