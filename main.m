llr=[-1.25, 3.5, 10.0, 12.75, 0, 2.125, -6.625, 7.0625];
len=length(llr);

for i=1:len
    n= llr(i);
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

