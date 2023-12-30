#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

int main() {
    char buf[32];

    int source_fd = open("source.txt", O_RDONLY);
    if (source_fd == -1) {
        perror("Error opening source file!\n");
        exit(EXIT_FAILURE);
    } else {
        printf("source fd = %d\n", source_fd);
    }

    int dest_fd = open("destination.txt", 
            O_WRONLY | O_CREAT | O_TRUNC, S_IRUSR | S_IWUSR);
    if (dest_fd == -1) {
        perror("Error handling destination file!\n");
        close(dest_fd);
        exit(EXIT_FAILURE);
    } else {
        printf("destination fd = %d\n", dest_fd);
    }

//    int bytesRead;
 //   while ((bytesRead = read(source_fd, buf, sizeof(buf))) > 0) {
     for (int bytesRead; (bytesRead = read(source_fd, buf, sizeof(buf))) > 0;) {
        int bytesWrite = write(dest_fd, buf, bytesRead);
        if (bytesWrite != bytesRead) {
            perror("Error copying file\n");
        } else {
            printf("Copied %d bytes\n", bytesWrite);
        }
    }

    close(source_fd);
    close(dest_fd);

    printf("File copy successful!\n");

    return 0;
}

