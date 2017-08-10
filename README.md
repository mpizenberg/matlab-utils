# Matlab Utils

This regroups utilitary functions for Matlab.

## List of functions

- `mkParentDir`: create parent directory.
- `cached`: transform a function into a cached function.

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
