#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "queue.h"

int main() {
    queue_t *q = NULL;
    q = queue_new();
    queue_display(q);
    queue_insert_head(q, "xyz");
    queue_insert_head(q, "abc");
    queue_insert_head(q, "123");
    queue_insert_tail(q, "opq");
    queue_display(q);
    assert(strcmp(q->head->value, "123") == 0);
    assert(strcmp(q->tail->value, "opq") == 0);
    assert(q->size == 4);
    printf("Size=%lu\n", q->size);
    queue_reverse(q);
    queue_display(q);
    assert(strcmp(q->tail->value, "123") == 0);
    char *headval = (char *) malloc(2 * sizeof(char));
    queue_remove_head(q, headval, 2);
    printf("Removed head %s\n", headval);
    queue_display(q);
    printf("Size=%lu\n", q->size);
    queue_free(q);
    if (headval != NULL) free(headval);

    return 0;
}
