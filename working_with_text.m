%%

% working with text - characters and strings
% use skills regex, cellfun, strfind, concatenate
wholetext = 'Hello my name is Mike and I like purple!';

% separate into a cell array based on spaces
wordsep = regexp(wholetext,' ','split');

% remove any words with excatly 4 characters.
numchars = cellfun(@length, wordsep);
words2keep = numchars~=4;
wordsep2 = wordsep(words2keep);

% replace 'Mike' with your name and 'purple' with your favorite color.
targname = 'Mike';
targcolor = 'purple';

namestart = strfind(wholetext,targname);
colorstart = strfind(wholetext,targcolor);

newtext = [wholetext(1:namestart-1) 'Paul' ...
    wholetext(namestart+length(targname):colorstart-1) 'blue' ...
    wholetext(colorstart+length(targcolor):end)];



