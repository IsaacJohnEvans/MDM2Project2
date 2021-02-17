classdef Mink < Minklist
    properties 
        xpos {mustBeNumeric}
        ypos {mustBeNumeric}
    end
    methods
        function Mink = initial(Mink)
            r = rand(1)*2.5;
            angle = rand(1)*2*pi;
            Mink.xpos = round(r*cos(angle), 10);
            Mink.ypos = round(r*sin(angle), 10);
        end
        function Mink = move(Mink, r, angle)
            Mink.xpos = round(Mink.xpos + r*cos(angle), 10);
            Mink.ypos = round(Mink.ypos + r*sin(angle), 10);
        end
    end
end