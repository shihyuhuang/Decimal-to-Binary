function [numo,numinto,numfo]=conv(numint,numf,flag)

    %二进制数的补码表示
    
    %输入参数为numint整数部分的二进制表达式,numf小数部分二进制表达式,flag负数标志
    
    %输出参数为numo输入的补码,numinto整数部分的补码,numfo小数部分的补码
    
    if (flag==0)
    
        numo=[0,numint,numf];%正数
        
        numinto=numint;
        
        numfo=numf;
    
    else%负数,整数和小数部分均进行按位取反并加一
    
        l1=length(numint);
        
        l2=length(numf);
        
        num=[numint,numf];
        
        l=l1+l2;
    
        for i=1:l
        
            if num(i)==1%按位取反
            
                num(i)=0;
            
            else
            
                num(i)=1;
        
            end
    
        end
    
        %取反后加一
        
        temp_l=l;
        
        while(temp_l~=0)
        
            if num(temp_l)==0%最低位为0
            
                num(temp_l)=1;
            
                temp_l=0;%结束循环
    
            else
            
                num(temp_l)=0;
                
                temp_l=temp_l-1;
                
            end
    
        end
    
    
        numinto=num(1:l1);
        
        numfo=num(l1+1:l);
        
        numo=[1,numinto,numfo];
    
    end
end