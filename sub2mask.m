function mask = sub2mask ( mask_size, row_sub, col_sub )
% Generate a binary mask (logical) true at the positions given in subscripts.
% Positions negative or higher than mask dimensions are filtered out.
%
% Syntax #####################
%
% mask = sub2mask( mask_size, row_sub, col_sub );
%
% Description ################
%
% mask_size: [ n_row, n_col ]. The size of the mask.
% row_sub: Int vector. The row coordinates of points.
% col_sub: Int vector. The column coordinates of points.
% mask: n_row x n_col logical array. The generated mask.


% Filter to keep only the points inside the matrix
n_row = mask_size(1);
n_col = mask_size(2);
idx_ok = row_sub >= 1 & row_sub <= n_row & col_sub >= 1 & col_sub <= n_col;


% Transform to a mask
mask = false( mask_size );
mask( sub2ind( mask_size, row_sub(idx_ok), col_sub(idx_ok) ) ) = true;


end
