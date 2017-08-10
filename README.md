# Matlab Utils

[![][badge-license]][license]

This regroups utilitary functions for Matlab.

[badge-license]: https://img.shields.io/badge/license-MPL--2.0-blue.svg?style=flat-square
[license]: https://www.mozilla.org/en-US/MPL/2.0/

## List of functions

- [`mkParentDir`](#mkparentdir): create parent directory.
- [`cached`](#cached): transform a function into a cached function.
- [`sub2mask`](#sub2mask): generate a logical binary mask based on subscripts.
- [`evalBinaryClassif`](#evalbinaryclassif): compute precision, recall and jaccard index of a binary classification result.

## `mkParentDir`

Create file parent directory if it does not already exist.

__Syntax__

```matlab
mkParentDir( file_path );
```

__Description__

```matlab
file_path: String. The path of the file of which we want to create parent dir.
```

## `cached`

Transform a function into a cached function (result stored in a file).
If the cache file already exists, returns the value inside this file.
Otherwise, compute the function and also store results in cache file.
Warning: this obviously is a side effect.

__Syntax__

```matlab
[ output1, output2 ] = cached( cache_filepath, @myFunction, input1, input2 );
```

__Description__

```matlab
cache_filepath: String.
    The path ('my/file.mat' for example) of the file to use as cache.
@myFunction: @Function. The function to call.
input#: inputs of the function.
output#: outputs of the function.
```


## `sub2mask`

Generate a binary mask (logical) true at the positions given in subscripts.
Positions negative or higher than mask dimensions are filtered out.

__Syntax__

```matlab
mask = sub2mask( mask_size, row_sub, col_sub );
```

__Description__

```matlab
mask_size: [ n_row, n_col ]. The size of the mask.
row_sub: Int vector. The row coordinates of points.
col_sub: Int vector. The column coordinates of points.
mask: n_row x n_col logical array. The generated mask.
```

# `evalBinaryClassif`

Compute the precision, recall and jaccard index of binary classification.

__Syntax__

```matlab
[ precision, recall, jaccard ] = evalBinaryClassif( values, groundtruth );
```

__Description__

```matlab
values: logical tensor. The computed values to compare to ground truth.
groundtruth: logical tensor. The ground truth reference.
precision: double in [0,1]. TP / (TP + FP)
recall: double in [0,1]. TP / (TP + FN)
jaccard: double in [0,1]. TP / (TP + FP + FN)
```
