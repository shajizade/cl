# cl
Simple Bash Column Splitter

## Installation
Donwload `cl` file and put it in somewhere included in your `PATH` (like `/usr/local/bin`)

## Usage
This bash script get column numbers as its parameters, split `stdin` by its white spaces, put mentioned columns in `stdout`. It's a simplified `awk` command that only split columns and return them.

## Samples:
Here is some samples:

```
>  docker ps | cl 1 3
CONTAINER IMAGE
abc2362b9b50 "/docker-entrypoint.…"
800da717008b "docker-php-entrypoi…"
```

```
> docker ps | cl 1 2 3
CONTAINER ID IMAGE
abc2362b9b50 repo.dev/nginx:alpine "/docker-entrypoint.…"
800da717008b sfpm "docker-php-entrypoi…"
```

Here is another sample, a command to kill all the processes have 'saeed' in theire name:
```
> sudo kill `ps -aux|grep saeed|cl 2`
```
