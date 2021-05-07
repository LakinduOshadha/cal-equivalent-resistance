%@author Lakindu Oshadha (lakinduoshadha98@gmail.com)

clear;
clc;
str = input('Enter the type of connection (s/p): ','s');
r = input('Input the value of resistors(in [r1,r2,r3..]): ');
rsum = 0;
R = 0;
temp = 0;

switch str
    case 'p'
        for i = 1 : length(r)
            temp = temp + (1/r(i));
        end
        rsum = 1/temp;
        disp(['Equivalent resistance: ', num2str(rsum)])
    case 's'
        disp(['Equivalent resistance: ', num2str(sum(r))])
    otherwise
        disp('Wrong input')
end
