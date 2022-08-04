use tiger;

select 
	a.tdbkSeq
    , a.tdbkBookTitle
    , a.tdbkSubTitle
from  tradBook a
-- inner join tradBookAuthor b on b.tdbkathSeq = a.tdbkSeq;
left join tradBookAuthor b on b.tdbkathSeq = a.tdbkSeq

;

select 
	a.tdbkSeq
    , a.tdbkBookTitle
    , a.tdbkSubTitle
from  tradBook a
inner join tradBookAuthor b on b.tdbkathSeq = a.tdbkSeq
inner join tradAuthor c on c.tdauSeq = a.tdbkSeq;
select * from tradAuthor;
select * from tradBook;
select * from tradBookAuthor;
