typedef enum { typeCon, typeConf, typeId, typeCh, typeOpr } nodeEnum;

/* constants */
typedef struct {
    int value;                  /* value of constant */
} conNodeType;

/* constant for float */
typedef struct {
    float value;                  /* value of constant */
} conNodeFloatType;

/* identifiers */
typedef struct {
    int i;                      /* subscript to sym array */
} idNodeType;

/* Character Identifiers */
typedef struct {
    char c;                      /* subscript to sym array for character ID */
} idNodeTypeChar;

/* operators */
typedef struct {
    int oper;                   /* operator */
    int nops;                   /* number of operands */
    struct nodeTypeTag *op[1];  /* operands, extended at runtime */
} oprNodeType;

typedef struct nodeTypeTag {
    nodeEnum type;              /* type of node */

    union {
        conNodeType con;        /* constants */
		conNodeFloatType conf;  /* float constant*/
        idNodeType id;          /* identifiers */
		idNodeTypeChar ch;      /* identifiers for character */
        oprNodeType opr;        /* operators */
    };
} nodeType;

extern int sym[26];