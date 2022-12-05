%% 1 Cell Model
figure(3)
plot(DoD*100,a1)

title('x-engineer.org')
xlabel('Depth of discharge [%]')
ylabel('Nickel-cadmium battery (6 cells) voltage [V]')

% Lead-acid
figure(4)
plot(DoD*100,b1)

title('x-engineer.org')
xlabel('Depth of discharge [%]')
ylabel('Lead-acid battery (6 cells) voltage [V]')

%% 6 Cell Model
% Nickel-cadmium
figure(1)
plot(DoD*100,a)

title('x-engineer.org')
xlabel('Depth of discharge [%]')
ylabel('Nickel-cadmium battery (6 cells) voltage [V]')

% Lead-acid
figure(2)
plot(DoD*100,b)

title('x-engineer.org')
xlabel('Depth of discharge [%]')
ylabel('Lead-acid battery (6 cells) voltage [V]')

