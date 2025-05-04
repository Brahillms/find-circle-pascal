program findCircle;

{$mode objfpc}{$H+}

uses Math, sysutils;

var
	mode: WideChar;
	radius, circumference: string;
	convRadius, convCircumference, area: extended;
	loopShouldBreak: boolean;

const
	tau = pi * 2;
	failedTryStrToFloat = 'You must enter a numerical value, try again.';

begin
	loopShouldBreak := false;

	writeLn('Please select an option listed below from 1 to 4.');
	writeLn('[1]'+ #9 + 'Find circumference from radius' + sLineBreak + '[2]' + #9 + 'Find radius from circumference' + sLineBreak + '[3]' + #9 + 'Find diameter from radius' + sLineBreak + '[4]' + #9 + 'Find circle area from radius');
	writeLn('Enter any other key to exit.');

	readLn(mode);

	case (mode) of
		'1' :
			{Circumference mode}
			while loopShouldBreak = false do
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the circumference of: ');
				readLn(radius);
				
				if TryStrToFloat(radius, convRadius) = true then
				begin
					ConvCircumference := convRadius * tau;

					writeLn('Your circle''s circumference is ', convCircumference:1:6, '.');
					loopShouldBreak := true;
				end
				else
				begin
					writeLn(failedTryStrToFloat);
				end;
			end;
		'2' :
			{Radius mode}
			while loopShouldBreak = false do
			begin
				write(sLineBreak + 'Please put the circumference of your circle you want to find the radius of: ');
				readLn(circumference);
				
				if TryStrToFloat(circumference, convCircumference) = true then
				begin
					ConvRadius := ConvCircumference / tau;

					writeLn('Your circle''s radius is ', ConvRadius:1:6, '.');
					loopShouldBreak := true;
				end
				else
				begin
					writeLn(failedTryStrToFloat);
				end;
			end;
		'3' :
			{Diameter mode}
			while loopShouldBreak = false do
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the diameter of: ');
				readLn(radius);
				
				if TryStrToFloat(radius, convRadius) = true then
				begin
					convRadius := convRadius * 2;

					writeLn('Your circle''s diameter is ', convRadius:1:6, '.');
					loopShouldBreak := true;
				end
				else
				begin
					writeLn(failedTryStrToFloat);
				end;
			end;
		'4' :
			{Area mode}
			while loopShouldBreak = false do
			begin
				write(sLineBreak + 'Please put the radius of your circle you want to find the area of: ');
				readLn(radius);
				
				if TryStrToFloat(radius, convRadius) = true then
				begin
					area := pi * Power(convRadius, 2);

					writeLn('Your circle''s area is ', area:1:6, '.');
					loopShouldBreak := true;
				end
				else
				begin
					writeLn(failedTryStrToFloat);
				end;
			end;
	end;
end.
