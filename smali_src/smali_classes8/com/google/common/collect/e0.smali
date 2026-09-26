.class public Lcom/google/common/collect/e0;
.super Lcom/google/common/collect/c0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/d1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e0$c;,
        Lcom/google/common/collect/e0$b;,
        Lcom/google/common/collect/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/d1<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient emptySet:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient entries:Lcom/google/common/collect/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/d0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lcom/google/common/collect/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e0<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/b0;ILjava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/b0<",
            "TK;",
            "Lcom/google/common/collect/d0<",
            "TV;>;>;I",
            "Ljava/util/Comparator<",
            "-TV;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/c0;-><init>(Lcom/google/common/collect/b0;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Lcom/google/common/collect/e0;->t(Ljava/util/Comparator;)Lcom/google/common/collect/d0;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/common/collect/e0;->emptySet:Lcom/google/common/collect/d0;

    .line 10
    return-void
.end method

.method private static A(Ljava/util/Comparator;)Lcom/google/common/collect/d0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/d0$a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    new-instance p0, Lcom/google/common/collect/d0$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/common/collect/d0$a;-><init>()V

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    new-instance v0, Lcom/google/common/collect/f0$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/common/collect/f0$a;-><init>(Ljava/util/Comparator;)V

    .line 14
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Ljava/util/Comparator;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 13
    move-result v1

    .line 14
    .line 15
    if-ltz v1, :cond_4

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/common/collect/b0;->a()Lcom/google/common/collect/b0$a;

    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    move v5, v4

    .line 23
    .line 24
    :goto_0
    if-ge v4, v1, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 28
    move-result-object v6

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 32
    move-result v7

    .line 33
    .line 34
    if-lez v7, :cond_2

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/google/common/collect/e0;->A(Ljava/util/Comparator;)Lcom/google/common/collect/d0$a;

    .line 38
    move-result-object v8

    .line 39
    move v9, v3

    .line 40
    .line 41
    :goto_1
    if-ge v9, v7, :cond_0

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 45
    move-result-object v10

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v10}, Lcom/google/common/collect/d0$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/d0$a;

    .line 49
    .line 50
    add-int/lit8 v9, v9, 0x1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/d0$a;->l()Lcom/google/common/collect/d0;

    .line 55
    move-result-object v8

    .line 56
    .line 57
    .line 58
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    .line 59
    move-result v9

    .line 60
    .line 61
    if-ne v9, v7, :cond_1

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v6, v8}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 65
    add-int/2addr v5, v7

    .line 66
    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 71
    .line 72
    .line 73
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 78
    move-result v1

    .line 79
    .line 80
    add-int/lit8 v1, v1, 0x28

    .line 81
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .line 87
    const-string v1, "Duplicate key-value pairs exist for key "

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 101
    throw p1

    .line 102
    .line 103
    :cond_2
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const/16 v1, 0x1f

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    .line 112
    const-string v1, "Invalid value count "

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 126
    throw p1

    .line 127
    .line 128
    .line 129
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/b0$a;->c()Lcom/google/common/collect/b0;

    .line 130
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    sget-object v1, Lcom/google/common/collect/c0$e;->MAP_FIELD_SETTER:Lcom/google/common/collect/c1$b;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0, p1}, Lcom/google/common/collect/c1$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .line 137
    sget-object p1, Lcom/google/common/collect/c0$e;->SIZE_FIELD_SETTER:Lcom/google/common/collect/c1$b;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, p0, v5}, Lcom/google/common/collect/c1$b;->a(Ljava/lang/Object;I)V

    .line 141
    .line 142
    sget-object p1, Lcom/google/common/collect/e0$c;->EMPTY_SET_FIELD_SETTER:Lcom/google/common/collect/c1$b;

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lcom/google/common/collect/e0;->t(Ljava/util/Comparator;)Lcom/google/common/collect/d0;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/c1$b;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    return-void

    .line 151
    :catch_0
    move-exception p1

    .line 152
    .line 153
    new-instance v0, Ljava/io/InvalidObjectException;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    check-cast p1, Ljava/io/InvalidObjectException;

    .line 167
    throw p1

    .line 168
    .line 169
    :cond_4
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const/16 v2, 0x1d

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    .line 178
    const-string v2, "Invalid key count "

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 192
    throw p1
.end method

.method private static t(Ljava/util/Comparator;)Lcom/google/common/collect/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/d0;->x()Lcom/google/common/collect/d0;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/f0;->K(Ljava/util/Comparator;)Lcom/google/common/collect/z0;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method

.method static v(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/e0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/e0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/common/collect/e0;->x()Lcom/google/common/collect/e0;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/google/common/collect/b0$a;

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 17
    move-result v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/google/common/collect/b0$a;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Ljava/util/Collection;

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v2}, Lcom/google/common/collect/e0;->z(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/d0;

    .line 51
    move-result-object v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 55
    move-result v4

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/b0$a;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/b0$a;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 64
    move-result v2

    .line 65
    add-int/2addr v1, v2

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_2
    new-instance p0, Lcom/google/common/collect/e0;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/common/collect/b0$a;->c()Lcom/google/common/collect/b0;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, v0, v1, p1}, Lcom/google/common/collect/e0;-><init>(Lcom/google/common/collect/b0;ILjava/util/Comparator;)V

    .line 76
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->y()Ljava/util/Comparator;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/google/common/collect/c1;->d(Lcom/google/common/collect/m0;Ljava/io/ObjectOutputStream;)V

    .line 14
    return-void
.end method

.method public static x()Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/collect/q;->INSTANCE:Lcom/google/common/collect/q;

    .line 3
    return-object v0
.end method

.method private static z(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Lcom/google/common/collect/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/common/collect/d0;->t(Ljava/util/Collection;)Lcom/google/common/collect/d0;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/f0;->G(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/f0;

    .line 11
    move-result-object p0

    .line 12
    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->u()Lcom/google/common/collect/d0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->w(Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic o()Lcom/google/common/collect/y;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/e0;->u()Lcom/google/common/collect/d0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic q(Ljava/lang/Object;)Lcom/google/common/collect/y;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e0;->w(Ljava/lang/Object;)Lcom/google/common/collect/d0;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public u()Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/d0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0;->entries:Lcom/google/common/collect/d0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/common/collect/e0$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/common/collect/e0$b;-><init>(Lcom/google/common/collect/e0;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/common/collect/e0;->entries:Lcom/google/common/collect/d0;

    .line 12
    :cond_0
    return-object v0
.end method

.method public w(Ljava/lang/Object;)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/d0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c0;->map:Lcom/google/common/collect/b0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/b0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/common/collect/d0;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/common/collect/e0;->emptySet:Lcom/google/common/collect/d0;

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Lcom/google/common/collect/d0;

    .line 17
    return-object p1
.end method

.method y()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e0;->emptySet:Lcom/google/common/collect/d0;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/google/common/collect/f0;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/collect/f0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/common/collect/f0;->comparator()Ljava/util/Comparator;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method
