#include "../include/lab4/matrix.hpp"

int main()
{
    srand((unsigned) time(0));
    //wczytanie i wyswietlenie rowów i columnusów
    int row;
    int col;

    cout << "podaj liczbe wierszy" << endl;
    cin >> row;
    cout << "podaj liczbe kolumn" << endl;
    cin >> col;
    //---------------proba konstruktorow----------------//

    //tworzenie matrixa z konstruktorem jedoargumentowym
    labmatrix macierz(row);
    //tworzenie matrixa z drugim konstruktorem
    labmatrix macierz2(row, col);
    labmatrix macierz3(row, col);
    //z pliku
    labmatrix macierz4("C:\\Users\\proco\\cppprojects\\lab3\\plik.txt");
    
    //-----proba funkcji cols i rows-----------//
    cout << "kolumny to" << macierz2.col() << endl;
    cout << "wiersze to" << macierz2.row() << endl;

    //-------proba funkcji set i get---------//
    macierz2.set(1, 1, 3);
    macierz2.set(1, 0, 5);
    macierz2.set(0, 0, 2);
    macierz3.set(1, 1, 5);
    macierz3.set(1, 0, 3);
    macierz3.set(0, 0, 7);
    int get = macierz2.get(1, 1);
    cout << "test funkcji get: " << get << endl;

    //--------proba funkcji print----------//
    cout << "macierz 1:" << endl;
    macierz.print();
    cout << "macierz 2:" << endl;
    macierz2.print(); 
    cout << "macierz 3:" << endl;
    macierz3.print(); 
    cout << "wypisz macierz 4 (z pliku)" << endl;
    macierz4.print();

    //------add, subtract, multiply-------//
        //matrix dodawanie
    cout << "---------" << endl;
    cout << "dodawanie" << endl;
    macierz2 = macierz2.add(macierz3);
    macierz2.print();
        //matrix odejmowanie
    cout << "---------" << endl;
    cout << "odejmowanie" << endl;
    macierz2 = macierz2.substract(macierz3);
    macierz2.print();
        //matrix mnozenie
    cout << "---------" << endl;
    cout << "mnozenie" << endl;
    macierz2 = macierz2.multiply(macierz3);
    macierz2.print();
    
    //--------test  funkcji store-------//

    macierz2.store("plik.txt", "C:\\Users\\proco\\cppprojects\\lab3\\");
    
    return 0;
}
