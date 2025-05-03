program findCircle;

{$mode objfpc}{$H+}

uses Math;

var
	mode: char;
	radius, circumference, area: single;

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
			end;
		'3' :
			{Diameter mode}
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the diameter of: ');
				readLn(radius);

				radius := radius * 2;

				writeLn('Your circle''s diameter is ', radius:1:6, '.');
			end;
		'4' :
			{Area mode}
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the area of: ');
				readLn(radius);

				area := pi * Power(radius, 2);

				writeLn('Your circle''s area is ', area:1:6, '.');
			end;
	end;
end.

