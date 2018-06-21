function[xr]=bitrev(x)
%{
SYNTAX
x=bitrev(x)
%}
    l1=log2(length(x));
     %if sequence length not a power of 2 then zeropad to make it
    while l1~=ceil(l1)
        x=[x,0];
        l1=log2(length(x));
    end
    
    s=length(x);
    lo=log2(s);
    l=0:s-1;

    b=dec2bin(l);

    [r,c]=size(b);
    for i=1:r
        n=c;
        for j=1:c
            br(i,n)=b(i,j);
            n=n-1;
        end
    end
    rev=transpose(bin2dec(br))+1;

    for i=1:s
        xr(1,i)=x(1,rev(i));
    end
    
  
end