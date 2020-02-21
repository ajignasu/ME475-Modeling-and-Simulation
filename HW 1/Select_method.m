%Q3(A)
%ME 475
% HW-1
% Anushrut Jignasu


function Select_method(s)
s = input('Type False_Position or Bisection: ');

str1 = 'Bisection';
str2 = 'False_Position';

if strcmp(s,str1) == 1
    Bisection
    exit
elseif strcmp(s,str2) == 1
    False_Position
    exit
end

end