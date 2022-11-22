n= -8.5;
if n > 0
    n=n;
    flag=0;
else
    n=-n;
    flag=1;
end
[num,numint,numf] = dectobin1( n, 4);
[numo,numinto,numfo]=conv(numint, numf, flag);

N=length(numo);
sign_numo = numo(1);

N=12-N;

for i = 1:N
    if sign_numo == 0
        numo = [0, numo];
    else
        numo = [1, numo];
    end
end

disp(numo)
