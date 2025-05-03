program findCircle;

{$mode objfpc}{$H+}

var
	mode: char;
	radius, circumference: single;

const
	tau = pi * 2;

begin
	writeLn('Please select an option listed below from 1 to 4.');
	writeLn('[1]'+ #9 + 'Find circumference from radius' + sLineBreak + '[2]' + #9 + 'Find radius from circumference' + sLineBreak + '[3]' + #9 + 'Find diameter from radius' + sLineBreak + '[4]' + #9 + 'Find circle area from radius');
	writeLn('Enter any other key to exit.');

	readLn(mode);

	case (mode) of
		'1' :
			{Circumference mode}
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the circumference of: ');
				readLn(radius);
			
				circumference := radius * tau;

				writeLn('Your circle''s circumference is ', circumference:1:6, '.');
			end;
		'2' :
			{Radius mode}
			begin
				write(sLineBreak + 'Please put the circumference of your circle you want to find the radius of: ');
				readLn(circumference);
				
				radius := circumference / tau;

				writeLn('Your circle''s radius is ', radius:1:6, '.');
		'3' : exit;
		
		'4' : exit;
	end;
end.

