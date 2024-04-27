#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <sys/stat.h>

int main(){
    int fd = open("", O_CREAT | O_WRONLY,S_IRUSR | S_IWUSR | S_IXUSR);
}