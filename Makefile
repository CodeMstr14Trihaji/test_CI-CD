# Nama file output
TARGET = main

# Daftar file sumber
SRCS = main.cpp other_file.cpp baru.cpp

# Compiler dan flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17

# Daftar file objek
OBJS = $(SRCS:.cpp=.o)

# Aturan default untuk kompilasi
all: $(TARGET)

# Aturan untuk membuat target
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Aturan untuk membuat file objek
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Aturan untuk menjalankan tes
test: $(TARGET)
	./$(TARGET) # Ganti dengan perintah untuk menjalankan tes Anda

# Aturan untuk membersihkan file objek dan target
clean:
	rm -f $(OBJS) $(TARGET)

# Aturan phony untuk menghindari konflik dengan file bernama sama
.PHONY: all clean test
