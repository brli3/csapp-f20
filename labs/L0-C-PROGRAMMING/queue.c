/**
 * @file queue.c
 * @brief Implementation of a queue that supports FIFO and LIFO operations.
 *
 * This queue implementation uses a singly-linked list to represent the
 * queue elements. Each queue element stores a string value.
 *
 * Assignment for basic C skills diagnostic.
 * Developed for courses 15-213/18-213/15-513 by R. E. Bryant, 2017
 * Extended to store strings, 2018
 *
 * TODO: fill in your name and Andrew ID
 * @author brandon <brandon@andrew.cmu.edu>
 */

#include "queue.h"
// #include "harness.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/**
 * @brief Allocates a new queue
 * @return The new queue, or NULL if memory allocation failed
 */
queue_t *queue_new(void) {
    queue_t *q = malloc(sizeof(queue_t));
    /* What if malloc returned NULL? */
    if (q == NULL)
        return NULL;
    q->head = NULL;
    q->tail = NULL;
    q->size = 0;
    return q;
}

void free_node(list_ele_t *node) {
    if (node == NULL)
        return;
    if (node->value != NULL)
        free(node->value);
    free(node);
}

/**
 * @brief Frees all memory used by a queue
 * @param[in] q The queue to free
 */
void queue_free(queue_t *q) {
    /* How about freeing the list elements and the strings? */
    /* Free queue structure */
    if (q == NULL || q->head == NULL)
        return;
    list_ele_t *p1 = q->head;
    list_ele_t *p2 = NULL;
    while (p1 != NULL) {
        p2 = p1;
        p1 = p1->next;
        free_node(p2);
    }
    free(q);
}

/**
 * @brief Attempts to insert an element at head of a queue
 *
 * This function explicitly allocates space to create a copy of `s`.
 * The inserted element points to a copy of `s`, instead of `s` itself.
 *
 * @param[in] q The queue to insert into
 * @param[in] s String to be copied and inserted into the queue
 *
 * @return true if insertion was successful
 * @return false if q is NULL, or memory allocation failed
 */
bool queue_insert_head(queue_t *q, const char *s) {
    list_ele_t *newh;
    /* What should you do if the q is NULL? */
    if (q == NULL)
        return false;
    newh = malloc(sizeof(list_ele_t));
    /* Don't forget to allocate space for the string and copy it */
    char *newv = (char *)malloc(strlen(s) * sizeof(char));
    /* What if either call to malloc returns NULL? */
    if (newh == NULL || newv == NULL)
        return false;
    strcpy(newv, s);
    newh->value = newv;
    newh->next = q->head;
    q->head = newh;
    q->size++;
    if (q->tail == NULL) {
        q->tail = q->head;
    }
    return true;
}

/**
 * @brief Attempts to insert an element at tail of a queue
 *
 * This function explicitly allocates space to create a copy of `s`.
 * The inserted element points to a copy of `s`, instead of `s` itself.
 *
 * @param[in] q The queue to insert into
 * @param[in] s String to be copied and inserted into the queue
 *
 * @return true if insertion was successful
 * @return false if q is NULL, or memory allocation failed
 */
bool queue_insert_tail(queue_t *q, const char *s) {
    /* You need to write the complete code for this function */
    /* Remember: It should operate in O(1) time */
    list_ele_t *newh;
    if (q == NULL)
        return false;
    newh = malloc(sizeof(list_ele_t));
    char *newv = (char *)malloc(strlen(s) * sizeof(char));
    if (newh == NULL || newv == NULL)
        return false;
    strcpy(newv, s);
    newh->value = newv;
    q->tail->next = newh;
    q->tail = newh;
    q->size++;
    if (q->head == NULL) {
        q->head = q->tail;
    }
    return true;
}

/**
 * @brief Attempts to remove an element from head of a queue
 *
 * If removal succeeds, this function frees all memory used by the
 * removed list element and its string value before returning.
 *
 * If removal succeeds and `buf` is non-NULL, this function copies up to
 * `bufsize - 1` characters from the removed string into `buf`, and writes
 * a null terminator '\0' after the copied string.
 *
 * @param[in]  q       The queue to remove from
 * @param[out] buf     Output buffer to write a string value into
 * @param[in]  bufsize Size of the buffer `buf` points to
 *
 * @return true if removal succeeded
 * @return false if q is NULL or empty
 */
bool queue_remove_head(queue_t *q, char *buf, size_t bufsize) {
    /* You need to fix up this code. */
    if (q == NULL || q->head == NULL || buf == NULL) {
        return false;
    }
    list_ele_t *temp = q->head;
    for (size_t i = 0; i < bufsize; i++) {
        char *val = temp->value;
        if (i >= strlen(val))
            break;
        buf[i] = val[i];
    }
    buf[bufsize] = '\0';
    q->head = temp->next;
    free_node(temp);
    q->size--;
    return true;
}

/**
 * @brief Returns the number of elements in a queue
 *
 * This function runs in O(1) time.
 *
 * @param[in] q The queue to examine
 *
 * @return the number of elements in the queue, or
 *         0 if q is NULL or empty
 */
size_t queue_size(queue_t *q) {
    /* You need to write the code for this function */
    /* Remember: It should operate in O(1) time */
    return q->size;
}

/**
 * @brief Reverse the elements in a queue
 *
 * This function does not allocate or free any list elements, i.e. it does
 * not call malloc or free, including inside helper functions. Instead, it
 * rearranges the existing elements of the queue.
 *
 * @param[in] q The queue to reverse
 */
void queue_reverse(queue_t *q) {
    /* You need to write the code for this function */
    if (q == NULL)
        return;
    list_ele_t *old_head = q->head;
    list_ele_t *old_tail = q->tail;

    list_ele_t *p1 = q->head;
    list_ele_t *p2 = NULL;
    while (p1 != NULL) {
        list_ele_t *temp = p1->next;
        p1->next = p2;
        p2 = p1;
        p1 = temp;
    }
    q->head = old_tail;
    q->tail = old_head;
}

void queue_display(queue_t *q) {
    if (q == NULL)
        return;
    list_ele_t *p = q->head;
    printf("[");
    while (p != NULL) {
        if (p->next == NULL) {
            printf("%s", p->value);
        } else {
            printf("%s, ", p->value);
        }
        p = p->next;
    }
    printf("]\n");
}
