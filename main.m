llr=[-13.3125 -12.1875 12.6875 -11.375 12.4375 9.5625 -6.0625 6.25 -2 -8.0625 -1.375 -9.625 9.1875 13 -1.5625 6.8125];
len=length(llr);

for i=1:len
    n= llr(len-i+1);
    total_bit = 12;
    fraction = 4;
    
    if n >= 0
        n=n;
        flag=0;
    else
        n=-n;
        flag=1;
    end
    [num,numint,numf] = dectobin1( n, fraction);
    [numo,numinto,numfo]=conv(numint, numf, flag);
    
    N=length(numo);
    sign_numo = numo(1);
    
    N= total_bit-N;
    
    for i = 1:N
        if sign_numo == 0
            numo = [0, numo];
        else
            numo = [1, numo];
        end
    end
    
    fprintf('%d', numo)
end

