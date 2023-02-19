#include "libft_tester.hpp"

static void	test_bzero(int len, int n) {
	std::string str(len, 'A');
	std::string result = str;
	std::string expected = str;

	ft_bzero((void *)result.c_str(), n);
	bzero((void *)expected.c_str(), n);
	EXPECT_EQ(result, expected) << "Input: " << str << n;
}

TEST(bzero, null) {
	ft_bzero(NULL, 0);
	ft_bzero(NULL, 500);
	std::cout << "[  INFO    ] Your bzero is safe!" << std::endl;
}

TEST(bzero, general) {
	test_bzero(50, 10);
	test_bzero(50, 50);
	test_bzero(50, 1);
	test_bzero(50, 0);
}
