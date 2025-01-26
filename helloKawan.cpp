// kode program C++ menentukan inputan ganjil attau genap
#include <iostream>
using namespace std;

int main() {
    int angka;
    cout << "Masukkan angka: ";
    cin >> angka;

    // mengecek apakah angka tersebut genap atau ganjil
    if (angka % 2 == 0) {
        cout << angka << " adalah angka genap"
    } else {
        cout << angka < " adalah angka ganjil";
    }

    return 0;
}