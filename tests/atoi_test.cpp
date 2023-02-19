#include "libft_tester.hpp"

static void	test_atoi(const std::string str) {
	int result = ft_atoi(str.c_str());
	int expected = atoi(str.c_str());
	EXPECT_EQ(result, expected) << "Input: " << str;
}

static void	test_range(long start, long end) {
	for (long i = start; i <= end; i++) {
		test_atoi(std::to_string(i));
		if (i > 0)
			test_atoi("+" + std::to_string(i));
	}
}

TEST(atoi, null) {
	int result = ft_atoi(NULL);
	std::cout << "[  INFO    ] atoi segfaults... but your is safe! It returns " << result << "." << std::endl;
}

TEST(atoi, spaces_and_signs) {
	test_atoi(" \t\n\v\r42");
	test_atoi("--42");
	test_atoi("++42");
	test_atoi(" + 42");
	test_atoi(" +42 42");
}


TEST(atoi, positive_numbers) {
	int num = 1;
	test_range(num, num + 100);
	num = 100000;
	test_range(num, num + 1000);
	num = INT_MAX;
	test_range(num - 20, (long)num + 20);
}

TEST(atoi, negative_numbers) {
	int num = -1;
	test_range(num - 100, num);
	num = -100000;
	test_range(num - 1000, num);
	num = INT_MIN;
	test_range((long)num - 20, num + 20);
}
