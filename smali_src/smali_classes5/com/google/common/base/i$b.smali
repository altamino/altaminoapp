.class public final Lcom/google/common/base/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/i$b$a;,
        Lcom/google/common/base/i$b$b;
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final holderHead:Lcom/google/common/base/i$b$b;

.field private holderTail:Lcom/google/common/base/i$b$b;

.field private omitEmptyValues:Z

.field private omitNullValues:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/common/base/i$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/i$b$b;-><init>(Lcom/google/common/base/i$a;)V

    iput-object v0, p0, Lcom/google/common/base/i$b;->holderHead:Lcom/google/common/base/i$b$b;

    iput-object v0, p0, Lcom/google/common/base/i$b;->holderTail:Lcom/google/common/base/i$b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/i$b;->omitNullValues:Z

    iput-boolean v0, p0, Lcom/google/common/base/i$b;->omitEmptyValues:Z

    .line 4
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/i$b;->className:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/i$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/google/common/base/i$b$b;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/base/i$b$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lcom/google/common/base/i$b$b;-><init>(Lcom/google/common/base/i$a;)V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/common/base/i$b;->holderTail:Lcom/google/common/base/i$b$b;

    .line 9
    .line 10
    iput-object v0, v1, Lcom/google/common/base/i$b$b;->next:Lcom/google/common/base/i$b$b;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/common/base/i$b;->holderTail:Lcom/google/common/base/i$b$b;

    .line 13
    return-object v0
.end method

.method private b(Ljava/lang/Object;)Lcom/google/common/base/i$b;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/base/i$b;->a()Lcom/google/common/base/i$b$b;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iput-object p1, v0, Lcom/google/common/base/i$b$b;->value:Ljava/lang/Object;

    .line 7
    return-object p0
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p0, Ljava/lang/CharSequence;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p0, Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 12
    move-result p0

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    move v1, v2

    .line 16
    :cond_0
    return v1

    .line 17
    .line 18
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    check-cast p0, Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    .line 29
    :cond_2
    instance-of v0, p0, Ljava/util/Map;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    check-cast p0, Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    .line 40
    :cond_3
    instance-of v0, p0, Lcom/google/common/base/l;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    check-cast p0, Lcom/google/common/base/l;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/common/base/l;->c()Z

    .line 48
    move-result p0

    .line 49
    xor-int/2addr p0, v2

    .line 50
    return p0

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 64
    move-result p0

    .line 65
    .line 66
    if-nez p0, :cond_5

    .line 67
    move v1, v2

    .line 68
    :cond_5
    return v1
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lcom/google/common/base/i$b;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/base/i$b;->b(Ljava/lang/Object;)Lcom/google/common/base/i$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/common/base/i$b;->omitNullValues:Z

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/google/common/base/i$b;->omitEmptyValues:Z

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const/16 v3, 0x20

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/common/base/i$b;->className:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v3, 0x7b

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/google/common/base/i$b;->holderHead:Lcom/google/common/base/i$b$b;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/google/common/base/i$b$b;->next:Lcom/google/common/base/i$b$b;

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    :goto_0
    if-eqz v3, :cond_5

    .line 30
    .line 31
    iget-object v5, v3, Lcom/google/common/base/i$b$b;->value:Ljava/lang/Object;

    .line 32
    .line 33
    instance-of v6, v3, Lcom/google/common/base/i$b$a;

    .line 34
    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    if-nez v0, :cond_4

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_0
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-static {v5}, Lcom/google/common/base/i$b;->d(Ljava/lang/Object;)Z

    .line 46
    move-result v6

    .line 47
    .line 48
    if-nez v6, :cond_4

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v4, v3, Lcom/google/common/base/i$b$b;->name:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const/16 v4, 0x3d

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    :cond_2
    if-eqz v5, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    .line 73
    move-result v4

    .line 74
    .line 75
    if-eqz v4, :cond_3

    .line 76
    const/4 v4, 0x1

    .line 77
    .line 78
    new-array v6, v4, [Ljava/lang/Object;

    .line 79
    const/4 v7, 0x0

    .line 80
    .line 81
    aput-object v5, v6, v7

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 89
    move-result v6

    .line 90
    sub-int/2addr v6, v4

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v5, v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 94
    goto :goto_2

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    :goto_2
    const-string v4, ", "

    .line 100
    .line 101
    :cond_4
    iget-object v3, v3, Lcom/google/common/base/i$b$b;->next:Lcom/google/common/base/i$b$b;

    .line 102
    goto :goto_0

    .line 103
    .line 104
    :cond_5
    const/16 v0, 0x7d

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    return-object v0
.end method
