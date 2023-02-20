# libft_tester

A tester for libft, the first 42 project, using googletest.
The libft project consists in recreating and creating functions for our own lib that is used along the course.

Im making this to learn about googletest and cpp. I know there are other testers out there but the ones I've seen are not that accurate.

## Use

In makefile you can find the LIBFT_PATH rule, where you set the relative or absolute path to your libft directory

![libft_path](https://user-images.githubusercontent.com/101738916/219993184-116aa7f5-f52b-49ca-a1a2-2db56252b444.PNG)

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

## Screenshots

![sucess_tests](https://user-images.githubusercontent.com/101738916/220001590-725dc7f4-9155-4fec-90e1-6bf236234335.PNG)

![failed_test](https://user-images.githubusercontent.com/101738916/220001494-8d4105ba-e820-4405-bf5b-87bc7a37a293.png)

