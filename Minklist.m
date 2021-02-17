classdef Minklist
    properties 
       pos
       num {mustBeNumeric}
    end
    methods
        function Minklist = initial(Minklist, N)
            Minklist.num = N;
            for i=1:Minklist.num
                m = initial(Mink);
                Minklist.pos(i, :) = [m.xpos, m.ypos];
            end
        end
        function Minklist = move(Minklist, r, T)
            for j=1:T
                for i=1:Minklist.num
                    angle = rand(1)*2*pi;
                    Minklist.pos(i,1) = round(Minklist.pos(i,1) + r*cos(angle), 10);
                    Minklist.pos(i,2) = round(Minklist.pos(i,2) + r*sin(angle), 10);
                end
            end
        end
    end
end