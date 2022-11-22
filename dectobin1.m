
function [num,numint,numf]=dectobin1(innum,N)

    %十进制数转换为二进制数
    
    %输入为十进制数innum,以及小数部分的位数N
    
    %输出为三个参数num,numint,numf
    
    %num为输出的二进制形式
    
    %numint为整数部分的二进制表达式
    
    %numf为小数部分的二进制表达式
    

    
    if(mod(innum,1)==0)%判断输入是否为整数,mod为取余函数
    
        numint=dec2bin(innum);
        
        numint=double(numint)-48;
        
        numf=zeros(1,N);
        
        num=[numint,numf];
        
        return
    
    end
    
    %输入为非整数的情况
    
    nint=floor(innum);%整数部分
    
    nf=innum-nint;%小数部分
    
    res_nint=dec2bin(nint);
    
    res_nint=double(res_nint)-48;
    
    res_nf=dectobin(nf,N);
    
    numint=res_nint;
    
    numf=res_nf;
    
    num=[numint, numf];
end

function y = dectobin(innum,N)

    %十进制小数转换为二进制数
    
    %输入参数为innum和N
    
    %innum为输入的十进制小数
    
    %N为指定转换后二进制的位数
    
    if ((innum>1)||(N == 0)) %判断输入的有效性
    
        disp('error!');
    
        return;

    end

    count=0;
    
    tempnum=innum;
    
    record=zeros(1,N);
    
    while(N)
    
        count=count+1;%长度小于N
    
        if(count>N)
    
            N=0;
    
            % return;
    
        end

        tempnum=tempnum*2;%小数转换为二进制,乘2取整

        if tempnum>1

            record(count)=1;

            tempnum=tempnum-1;

        elseif(tempnum==1)

            record(count)=1;
        
            N=0;%stop loop

        else
    
            record(count)=0;
    
        end

    end

    y=record;

end


