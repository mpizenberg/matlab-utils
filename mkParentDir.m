function mkParentDir ( file_path )
% Create file parent directory if it does not already exist.
%
% Syntax #####################
%
% mkParentDir( file_path );
%
% Description ################
%
% file_path: String. The path of the file of which we want to create parent dir.


[ parent_dir, ~, ~ ] = fileparts( file_path );


if ~ isempty( parent_dir ) && ~ exist( parent_dir, 'dir' )
	mkdir( parent_dir );
end


end
