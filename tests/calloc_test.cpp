#include "libft_tester.hpp"

static void	test_calloc(int nmemb, int size) {
	char *result_ptr = (char *)ft_calloc(nmemb, size);
	char *expected_ptr = (char *)calloc(nmemb, size);
	if (result_ptr == NULL || expected_ptr == NULL)
		EXPECT_EQ(result_ptr, expected_ptr) << "Input: " << nmemb << " " << size;
	else {
		std::string result = result_ptr;
		std::string expected = expected_ptr;
		EXPECT_EQ(result, expected) << "Input: " << nmemb << " " << size;
	}
}

TEST(calloc, zero) {
	test_calloc(0, 0);
	test_calloc(10, 0);
	test_calloc(0, 10);
	std::cout << "[  INFO    ] Zero is not tested by moulinette!" << std::endl;
}

TEST(calloc, general) {
	test_calloc(10, 1);
	test_calloc(1, 10);
	test_calloc(10, 10);
}
