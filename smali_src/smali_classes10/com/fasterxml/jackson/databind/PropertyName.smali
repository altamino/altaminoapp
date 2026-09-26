.class public Lcom/fasterxml/jackson/databind/PropertyName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

.field public static final USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

.field private static final _NO_NAME:Ljava/lang/String; = ""

.field private static final _USE_DEFAULT:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = 0x6e0fe282c0ebea86L


# instance fields
.field protected final _namespace:Ljava/lang/String;

.field protected final _simpleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 11
    .line 12
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v3, v2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    sput-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    return-void
.end method

.method public static construct(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, ""

    .line 5
    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    sget-object p0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 15
    return-object p0

    .line 16
    .line 17
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    .line 10
    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    move-result-object v3

    .line 17
    .line 18
    if-eq v2, v3, :cond_2

    .line 19
    return v1

    .line 20
    .line 21
    :cond_2
    check-cast p1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v2, :cond_3

    .line 26
    .line 27
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    return v1

    .line 31
    .line 32
    :cond_3
    iget-object v3, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 37
    .line 38
    if-nez v2, :cond_4

    .line 39
    return v1

    .line 40
    .line 41
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_6

    .line 44
    .line 45
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 46
    .line 47
    if-nez p1, :cond_5

    .line 48
    goto :goto_0

    .line 49
    :cond_5
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 51
    .line 52
    :cond_6
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p1

    .line 57
    return p1
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNamespace()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSimpleName()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSimpleName(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 15
    move-result v0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v1

    .line 22
    xor-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public internSimpleName()Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    return-object p0

    .line 23
    .line 24
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-object v1
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->NO_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 28
    return-object v0

    .line 29
    :cond_1
    return-object p0

    .line 30
    .line 31
    :cond_2
    :goto_0
    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 32
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 7
    return-object v0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    const-string v1, "{"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "}"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public withNamespace(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    return-object p0

    .line 17
    .line 18
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-object v0
.end method

.method public withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, ""

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_simpleName:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/PropertyName;->_namespace:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-object v0
.end method
