/*************************************************************************
     File Name: app.c
     Author: fht
     Created Time: Thu 12 Oct 2017 09:58:40 AM CST
 ************************************************************************/

#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>
#include <fcntl.h>

//extern int f();
char const *  CPUPATH = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor";

int read_scaling_governor_mode(){
    int cpu_fd;
    char buffer[256]={'0'};
    int ret;

    cpu_fd = open(CPUPATH, O_RDWR);
    if(cpu_fd){
        read(cpu_fd, buffer, sizeof(buffer));
        printf(" read cpu mode : %s \n", buffer);
        ret = write(cpu_fd, "performance", sizeof("performance"));
        printf(" write ret = %d \n", ret);
        read(cpu_fd, buffer, sizeof(buffer));
        printf(" read cpu mode : %s \n", buffer);
    }
    close(cpu_fd);
    return 0;
}


int main(){
    read_scaling_governor_mode();
    return 0;
}
