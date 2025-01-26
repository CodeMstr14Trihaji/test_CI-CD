// program menghitung jumlah kata dalam sebuah kalimat
#include <iostream>
#include <string>
using namespace std;

int main() {
    string kalimat;
    cout << "Masukkan kalimat: ";
    getline(cin, kalimat);

    int jumlahKata = 1;
    for (int i = 0; i < kalimat.length(); i++) {
        if (kalimat[i] == ' ') {
            jumlahKata++;
        }
    }

    cout << "Jumlah kata dalam kalimat tersebut adalah: " << jumlahKata;

    return 0;
}