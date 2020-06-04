#include <iostream>
#include <SFML/System.hpp>

int main()
{
    sf::Clock clock;
    sf::Time elasped1 = clock.getElapsedTime();

    std::cout << "Time elapsed = " << elasped1.asSeconds() << '\n';
    
    clock.restart();

    int i{0};

    while (i < 100)
    {
        std::cout << i << '\n';
        ++i;
    }

    sf::Time elapsed2 = clock.getElapsedTime();

    std::cout << "Time elapsed = " << elapsed2.asSeconds() << '\n';

    return 0;
}
