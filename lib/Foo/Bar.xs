#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "../../ppport.h"

#include <string.h>

typedef struct foo_bar_s foo_bar_t;
typedef foo_bar_t* Foo__Bar;

struct foo_bar_s {
    char* name;
};

MODULE = Foo::Bar PACKAGE = Foo::Bar

Foo::Bar
new(char* class_name, char* name)
CODE:
{
    foo_bar_t* self;
    Newx(self, 1, foo_bar_t);
    Newxz(self->name, strlen(name)+1, char);
    strcpy(self->name, name);

    PERL_UNUSED_VAR(class_name);

    RETVAL = self;
}
OUTPUT:
    RETVAL

void
DESTROY(Foo::Bar self)
CODE:
{
    Safefree(self->name);
    Safefree(self);
}

char*
name(Foo::Bar self)
CODE:
{
    RETVAL = self->name;
}
OUTPUT:
    RETVAL

