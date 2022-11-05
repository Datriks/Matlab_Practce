%%

% generate some random numbers and characters
N = 20;
numbers = randn(N, 1);
tmptext = char(randi(70, N, 1));

% random integer numbers
random = randi(50,N,1);

% clear the screen
clc

% html code for header
disp('<html>')
disp('<body>')

% html code for table
disp('<table>')

% loop over elements and print
for ri = 1:N
    disp(['<tr><td>' num2str(numbers(ri)) '</td><td>' tmptext(ri) '</td><td>'])
end

% close html
fprintf('</table>\n</body>\n</html>\n\n\n')