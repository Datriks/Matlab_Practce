% Create Hilbert Matrix

% list dimensions
m = 5;

% initialise variables
hilmat = zeros(m);
checkmat = zeros(m);

% create loops:
for i  = 1:m
    for j=1:m

        % denominator
        den = i+j-1;

        % and invert to find this element
        hilmat(i, j) = 1/den;

        % create a checkboard
        checkmat(i, j) = (-1)^den;
    end
end

% let's see what they look like
figure(1), clf

subplot(121)
imagesc(hilmat)
axis square, title('Hilbert Matrix')
set(gca, 'xtick', [], 'ytick', [])


subplot(122)
imagesc(checkmat)
axis square, title('Chess Board')
set(gca, 'xtick', [], 'ytick', [])

