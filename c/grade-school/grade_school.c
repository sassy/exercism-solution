#include "grade_school.h"
#include <string.h>

void init_roster(roster_t *roster)
{
    roster->count = 0;
}

int add_student(roster_t *roster, char *name, int grade)
{
    int count = roster->count;
    int i;
    for (i = 0; i < (int)roster->count; i++) {
        if (strcmp(roster->students[i].name, name) == 0) {
            return 0;
        }
    }
    strncpy(roster->students[count].name, name, MAX_NAME_LENGTH);
    roster->students[count].grade = grade;
    roster->count++;

    return 1;
}

roster_t get_grade(roster_t *roster, int grade)
{
    int i = 0;
    roster_t ret;
    ret.count = 0;
    for (i = 0; i < (int)roster->count; i++) {
        if (roster->students[i].grade == grade) {
            ret.students[ret.count] = roster->students[i];
            ret.count++;
        }
    }

    return ret;
}

