.class public Lcom/fasterxml/jackson/databind/type/HierarchicType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _actualType:Ljava/lang/reflect/Type;

.field protected final _genericType:Ljava/lang/reflect/ParameterizedType;

.field protected final _rawClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

.field protected _superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 2
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 6
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    :goto_0
    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can not be used to construct HierarchicType"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            "Lcom/fasterxml/jackson/databind/type/HierarchicType;",
            ")V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-void
.end method


# virtual methods
.method public final asGeneric()Ljava/lang/reflect/ParameterizedType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    return-object v0
.end method

.method public deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    :goto_0
    new-instance v7, Lcom/fasterxml/jackson/databind/type/HierarchicType;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_actualType:Ljava/lang/reflect/Type;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 19
    const/4 v6, 0x0

    .line 20
    move-object v1, v7

    .line 21
    move-object v5, v0

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Lcom/fasterxml/jackson/databind/type/HierarchicType;Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/type/HierarchicType;->setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V

    .line 30
    :cond_1
    return-object v7
.end method

.method public final getRawClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSubType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-object v0
.end method

.method public final getSuperType()Lcom/fasterxml/jackson/databind/type/HierarchicType;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-object v0
.end method

.method public final isGeneric()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSubType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_subType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-void
.end method

.method public setSuperType(Lcom/fasterxml/jackson/databind/type/HierarchicType;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_superType:Lcom/fasterxml/jackson/databind/type/HierarchicType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_genericType:Ljava/lang/reflect/ParameterizedType;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/HierarchicType;->_rawClass:Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
