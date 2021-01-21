clear
clc

weeks = input('How many weeks did you exercise? ');
days = input('What is the most days in a weeks you exercise? ');

if days < 1
    days = 1;
end

exercise = zeros(weeks, days);

weight = input('How much do you weigh?');

multiplier = input('Enter the type of exercise\n1 Walking\n3 Yoga\n7 Running\nMultiplier: ');

for rows = 1:weeks
    fprintf("\nWeek %i, ", rows);
    for columns = 1:days
        fprintf("Day %i\n", columns);
        exercise(rows, columns) = input('Enter your exercise in minutes: ');
    end
end