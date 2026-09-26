.class public final Lcom/fasterxml/jackson/databind/type/MapType;
.super Lcom/fasterxml/jackson/databind/type/MapLikeType;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0xb41c5b2afd5e69cL


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 4
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 13
    return-object v7
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 11
    .line 12
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 13
    move-object v0, v7

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 18
    return-object v7
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 26
    .line 27
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 28
    move-object v1, v0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 32
    return-object v0
.end method

.method public narrowKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 26
    .line 27
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 28
    move-object v1, v0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 32
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "[map type; class "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, ", "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, " -> "

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "]"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 21
    move-result-object v4

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 26
    .line 27
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 28
    move-object v1, v0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 32
    return-object v0
.end method

.method public widenKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 26
    .line 27
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 28
    move-object v1, v0

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 32
    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 3
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 3
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method

.method public bridge synthetic withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 2
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method

.method public bridge synthetic withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 2
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 3
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 8

    .line 3
    new-instance v7, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapLikeType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v7
.end method
