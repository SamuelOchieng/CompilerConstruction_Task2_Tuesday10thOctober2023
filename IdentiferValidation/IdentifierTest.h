#include <iostream>
#include <regex>

bool isValidIdentifier(const std::string& input) {
    //Regular expression for a valid identifier
    std::regex identifierRegex("^[a-zA-Z_][a-zA-Z0-9_]*$");

    //Checking if the input matches the regular expression
    return std::regex_match(input, identifierRegex);
}

int main() {
    std::string input;

    // Input from the user
    std::cout << "Enter an identifier: ";
    std::cin >> input;
    
    //Validating the Identifier
    if (isValidIdentifier(input)) {
        std::cout << "Valid identifier: " << input << std::endl;
    }
    else {
        std::cout << "Invalid identifier: " << input << std::endl;
    }

    return 0;
}

