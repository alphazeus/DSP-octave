function[X]= dft(x,N)

% DFT using matrix vector multiplication

%x=Enter sequence 1(enter values in [])
%h=Enter sequence 2(enter values in [])

ls=length(x);
if ls<N
    y=zeros(1,N-ls);
    x=[x,y];
elseif ls>N
    for i=1:ls-N
    x(:,(ls-N+1))=[];
    end
end
r=zeros(N,N);
for k=0:N-1
    for n=0:N-1
        e=exp((-j*2*pi*n*k)/N);
        r(k+1,n+1)=e;
    end
end
X=x*r;

end



  
  