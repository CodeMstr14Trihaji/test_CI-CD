# Compiler dan flags
CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17

# Cari semua file .cpp di direktori saat ini
SRCS = $(wildcard *.cpp)
OBJS = $(SRCS:.cpp=.o)
TARGET = program

# Aturan default untuk kompilasi
all: $(TARGET)

# Aturan untuk membuat target
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# Aturan untuk membuat file objek
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Aturan untuk menjalankan program
test: $(TARGET)
	./$(TARGET)

# Aturan untuk membersihkan file objek dan target
clean:
	rm -f $(OBJS) $(TARGET)

# Aturan phony untuk menghindari konflik dengan file bernama sama
.PHONY: all clean test
