%--------------------mKP equation simulation---------------------%

% Defining the parameters
% Command Widow
% Using Disp command to display info
disp("Welcome to Differetial Equation Project");
disp("Made BY: Usman Haroon 22i-1177");
q1 = 1.301;    % Parameter q
alpha = 12;  % Parameter alpha
beta = 0.52;  % Parameter beta
delta = 4.3396;  % Parameter delta
l = 0.34;       % Parameter l
U = 4.9;       % Parameter U

% Time span for integration
tspan = [0 10]; % Adjust the time span as needed to obtain result

% Initial value
y0 = [0; 0]; % Initial conditions for psi and chi

% Define the ODE directly in the script
D = 3; % Parameter D (replace with the actual value if known)
% Define the system of ODEs as a function
dydt = @(t, y) [y(2); (D*l*y(1) - beta*y(2) + U*l)/alpha];

% Solve the ODE
[t1, y1] = ode45(dydt, tspan, y0);

% Plot results with thicker lines
figure;
plot(t1, y1(:, 1), 'k', 'LineWidth', 2); % 'LineWidth' property set to 2 for thicker line
hold on; % Retain the current plot while adding another
plot(t1, y1(:, 2), 'y', 'LineWidth', 2); % 'LineWidth' property set to 2 for thicker line
hold off; % Release the hold on the plot
xlabel('Time');
ylabel('Variables');
legend('\psi', '\chi');
