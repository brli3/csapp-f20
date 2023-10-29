#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>
#include "cachelab.h"

typedef struct {
    int valid;
    int tag;
    int time;
} CacheLine; 

typedef CacheLine* CacheSet;

typedef CacheSet* Cache;

typedef struct {
    int s;
    int b;
    int t;
    int S;
    int E;
    int hitCount;
    int missCount;
    int evictCount;
} CacheParam;

void initCache();
void displayCache();
void freeCache();
void simulate(char* filePath);
void accessCache(unsigned addr);
void lruUpdate();

Cache cache = NULL;
CacheParam* cacheParam = NULL;

int main(int argc, char** argv) {
    cacheParam = (CacheParam*) malloc(sizeof(CacheParam));
    if (cacheParam == NULL) {
        perror("Malloc failed at CacheParam\n");
        return 1;
    }
    cacheParam->s = 0;
    cacheParam->S = 0;
    cacheParam->E = 0;
    cacheParam->b = 0;
    cacheParam->hitCount = 0;
    cacheParam->missCount = 0;
    cacheParam->evictCount = 0;
    char* filePath = NULL;
    int opt = 0;
    while (-1 != (opt = getopt(argc, argv, "s:E:b:t:"))) {
        switch (opt) {
            case 's':
                cacheParam->s = atoi(optarg);
                cacheParam->S = 1 << cacheParam->s;
                break;
            case 'E':
                cacheParam->E = atoi(optarg);
                break;
            case 'b':
                cacheParam->b = atoi(optarg);
                break;
            case 't':
                filePath = optarg;
                break;
            default:
                perror("Wrong args\n");
                break;
        }
    }
    printf("s=%d E=%d b=%d file=%s\n", 
            cacheParam->s ,cacheParam->E, cacheParam->b, filePath);
    initCache();
    displayCache();
    simulate(filePath);
    displayCache();
    freeCache();
    printSummary(cacheParam->hitCount, cacheParam->missCount, cacheParam->evictCount);
    free(cacheParam);
    return 0;
}

void initCache() {
    int S = cacheParam->S;
    int E = cacheParam->E;
    cache = (Cache) malloc(S * sizeof(CacheSet));
    if (cache == NULL) {
        perror("Memory allocation of cache failed\n");
        exit(EXIT_FAILURE);
    }
    for (int i = 0; i < S; i++) {
        cache[i] = (CacheSet) malloc(E * sizeof(CacheLine));
        if (cache[i] == NULL) {
            perror("Memory allocation of cache[i] failed\n");
            exit(EXIT_FAILURE);
        }
        memset(cache[i], 0, E * sizeof(CacheLine));
    }
}

void displayCache() {
    if (cache == NULL) return;
    for (int i = 0; i < cacheParam->S; i++) {
        for (int j = 0; j < cacheParam->E; j++) {
            printf("%d %x %d\n", cache[i][j].valid, 
                    cache[i][j].tag, cache[i][j].time);
        }
    }
}

void freeCache() {
    if (cache == NULL) return;
    for (int i = 0; i < cacheParam->S; i++) {
        free(cache[i]);
    }
    free(cache);
}

void simulate(char* filePath) {
    FILE* file = fopen(filePath, "r");
    if (file == NULL) {
        perror("Error opening file\n");
        return;
    }
    char op;
    unsigned addr;
    int size;
    while (fscanf(file, " %c %x,%d", &op, &addr, &size) > 0) {
        if (op == 'I') continue;
        switch (op) {
            case 'M':
                accessCache(addr);
            case 'L':
            case 'S':
                accessCache(addr);
                break;
        }
        lruUpdate(cache, cacheParam);
        printf("from file: %c %x, %d\n", op, addr, size);
    }
    fclose(file);
}

void lruUpdate() {
    for (int i = 0; i < cacheParam->S; i++) {
        for (int j = 0; j < cacheParam->E; j++) {
            if (cache[i][j].valid == 1) cache[i][j].time++;
        }
    }
}

void accessCache(unsigned addr) {
    int b = cacheParam->b;
    int s = cacheParam->s;
    int tag = addr >> (b + s);
    int setIndex = (addr >> b) & ((-1U) >> (64 - s));
    CacheSet cacheSet = cache[setIndex];

    for (int i = 0; i < cacheParam->E; i++) {
        if (cacheSet[i].valid == 1 && cacheSet[i].tag == tag) {
            cacheParam->hitCount++;
            cacheSet[i].time = 0;
            return;
        }
    }

    cacheParam->missCount++;
    for (int i = 0; i < cacheParam->E; i++) {
        if (cacheSet[i].valid == 0) {
            cacheSet[i].valid = 1;
            cacheSet[i].tag = tag;
            cacheSet[i].time = 0;
            return;
        }
    }

    cacheParam->evictCount++;
    int evictIndex = 0;
    int maxTime = 0;
    for (int i = 0; i < cacheParam->E; i++) {
        if (cacheSet[i].time > maxTime) {
            maxTime = cacheSet[i].time;
            evictIndex = i;
        }
    }
    cacheSet[evictIndex].tag = tag;
    cacheSet[evictIndex].time = 0;
}
