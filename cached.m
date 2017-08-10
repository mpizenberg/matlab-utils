function varargout = cached ( cache_filepath, f, varargin )
% Transform a function into a cached function (result stored in a file).
% If the cache file already exists, returns the value inside this file.
% Otherwise, compute the function and also store results in cache file.
% Warning: this obviously is a side effect.
%
% Syntax #####################
%
% [ output1, output2 ] = cached( cache_filepath, @myFunction, input1, input2 );
%
% Description ################
%
% cache_filepath: String.
%     The path ('my/file.mat' for example) of the file to use as cache.
% @myFunction: @Function. The function to call.
% input#: inputs of the function.
% output#: outputs of the function.


% Add the '.mat' extension in case it is forgotten.
[ ~, ~, ext ] = fileparts( cache_filepath );
if ~ strcmp( ext, '.mat' )
	cache_filepath = strcat( cache_filepath, '.mat' );
end


% Compute cached function.
if exist( cache_filepath, 'file' ) == 2
	load( cache_filepath, 'varargout' );
else
	[ varargout{ 1:nargout } ] = f( varargin{:} );
	mkParentDir( cache_filepath );
	save( cache_filepath, 'varargout' );
end


end
