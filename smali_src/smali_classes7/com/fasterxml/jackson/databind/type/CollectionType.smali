.class public final Lcom/fasterxml/jackson/databind/type/CollectionType;
.super Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x6cbb315ebf8435f0L


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 4
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 12
    return-object v6
.end method


# virtual methods
.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
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
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    .line 8
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p1

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 14
    return-object v6
.end method

.method public narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

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
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 26
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 30
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
    const-string v1, "[collection type; class "

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
    const-string v1, ", contains "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "]"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public widenContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
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
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

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
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    .line 24
    .line 25
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    .line 26
    move-object v1, v0

    .line 27
    .line 28
    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 30
    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7

    .line 3
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v6
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7

    .line 3
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v6
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/CollectionType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7

    .line 3
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/JavaType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v6
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 7

    .line 3
    new-instance v6, Lcom/fasterxml/jackson/databind/type/CollectionType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JavaType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->_elementType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/JavaType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/JavaType;->_asStatic:Z

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/type/CollectionType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v6
.end method
