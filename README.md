# libft_tester

A tester for libft, the first 42 project, using googletest.
The libft project consists in recreating and creating functions for our own lib that is used along the course.

Im making this to learn about googletest and cpp. I know there are other testers out there but the ones I've seen are not that accurate.

## Use

In makefile you can find the LIBFT_PATH rule, where you set the relative or absolute path to your libft directory

![App Screenshot](https://imgur.com/a/JT4Io5Z)

Then you can simply run "make" and the rule you want to run the tests

### Rules

#### "make a":

will run all the tests

#### "make m":

will run only mandatory functions tests

#### "make b":

will run only bonus functions tests

#### "make atoi bzero":

will run the atoi and bzero functions tests, and you can do this to any other function
