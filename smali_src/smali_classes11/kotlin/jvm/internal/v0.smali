.class public Lkotlin/jvm/internal/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lf8/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p0, Lf8/b;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "kotlin.collections.MutableCollection"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/v0;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->f(Ljava/lang/Object;)Ljava/util/Collection;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lf8/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p0, Lf8/c;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "kotlin.collections.MutableIterable"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/v0;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lf8/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p0, Lf8/d;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "kotlin.collections.MutableList"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/v0;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->h(Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lf8/a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    instance-of v0, p0, Lf8/e;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "kotlin.collections.MutableMap"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lkotlin/jvm/internal/v0;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->i(Ljava/lang/Object;)Ljava/util/Map;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static e(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/v0;->k(Ljava/lang/Object;I)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "kotlin.jvm.functions.Function"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1}, Lkotlin/jvm/internal/v0;->q(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-object p0
.end method

.method public static f(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 1
    .line 2
    :try_start_0
    check-cast p0, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-object p0

    .line 4
    :catch_0
    move-exception p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 1
    .line 2
    :try_start_0
    check-cast p0, Ljava/lang/Iterable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-object p0

    .line 4
    :catch_0
    move-exception p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static h(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    :try_start_0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-object p0

    .line 4
    :catch_0
    move-exception p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static i(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    :try_start_0
    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-object p0

    .line 4
    :catch_0
    move-exception p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static j(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lkotlin/jvm/internal/o;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Lkotlin/jvm/internal/o;

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lkotlin/jvm/internal/o;->getArity()I

    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    .line 13
    :cond_0
    instance-of v0, p0, Le8/a;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    .line 19
    :cond_1
    instance-of v0, p0, Le8/l;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    .line 25
    :cond_2
    instance-of v0, p0, Le8/p;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    .line 31
    :cond_3
    instance-of v0, p0, Le8/q;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    const/4 p0, 0x3

    .line 35
    return p0

    .line 36
    .line 37
    :cond_4
    instance-of v0, p0, Le8/r;

    .line 38
    .line 39
    if-eqz v0, :cond_5

    .line 40
    const/4 p0, 0x4

    .line 41
    return p0

    .line 42
    .line 43
    :cond_5
    instance-of v0, p0, Le8/s;

    .line 44
    .line 45
    if-eqz v0, :cond_6

    .line 46
    const/4 p0, 0x5

    .line 47
    return p0

    .line 48
    .line 49
    :cond_6
    instance-of v0, p0, Le8/t;

    .line 50
    .line 51
    if-eqz v0, :cond_7

    .line 52
    const/4 p0, 0x6

    .line 53
    return p0

    .line 54
    .line 55
    :cond_7
    instance-of v0, p0, Le8/u;

    .line 56
    .line 57
    if-eqz v0, :cond_8

    .line 58
    const/4 p0, 0x7

    .line 59
    return p0

    .line 60
    .line 61
    :cond_8
    instance-of v0, p0, Le8/v;

    .line 62
    .line 63
    if-eqz v0, :cond_9

    .line 64
    .line 65
    const/16 p0, 0x8

    .line 66
    return p0

    .line 67
    .line 68
    :cond_9
    instance-of v0, p0, Le8/w;

    .line 69
    .line 70
    if-eqz v0, :cond_a

    .line 71
    .line 72
    const/16 p0, 0x9

    .line 73
    return p0

    .line 74
    .line 75
    :cond_a
    instance-of v0, p0, Le8/b;

    .line 76
    .line 77
    if-eqz v0, :cond_b

    .line 78
    .line 79
    const/16 p0, 0xa

    .line 80
    return p0

    .line 81
    .line 82
    :cond_b
    instance-of v0, p0, Le8/c;

    .line 83
    .line 84
    if-eqz v0, :cond_c

    .line 85
    .line 86
    const/16 p0, 0xb

    .line 87
    return p0

    .line 88
    .line 89
    :cond_c
    instance-of v0, p0, Le8/d;

    .line 90
    .line 91
    if-eqz v0, :cond_d

    .line 92
    .line 93
    const/16 p0, 0xc

    .line 94
    return p0

    .line 95
    .line 96
    :cond_d
    instance-of v0, p0, Le8/e;

    .line 97
    .line 98
    if-eqz v0, :cond_e

    .line 99
    .line 100
    const/16 p0, 0xd

    .line 101
    return p0

    .line 102
    .line 103
    :cond_e
    instance-of v0, p0, Le8/f;

    .line 104
    .line 105
    if-eqz v0, :cond_f

    .line 106
    .line 107
    const/16 p0, 0xe

    .line 108
    return p0

    .line 109
    .line 110
    :cond_f
    instance-of v0, p0, Le8/g;

    .line 111
    .line 112
    if-eqz v0, :cond_10

    .line 113
    .line 114
    const/16 p0, 0xf

    .line 115
    return p0

    .line 116
    .line 117
    :cond_10
    instance-of v0, p0, Le8/h;

    .line 118
    .line 119
    if-eqz v0, :cond_11

    .line 120
    .line 121
    const/16 p0, 0x10

    .line 122
    return p0

    .line 123
    .line 124
    :cond_11
    instance-of v0, p0, Le8/i;

    .line 125
    .line 126
    if-eqz v0, :cond_12

    .line 127
    .line 128
    const/16 p0, 0x11

    .line 129
    return p0

    .line 130
    .line 131
    :cond_12
    instance-of v0, p0, Le8/j;

    .line 132
    .line 133
    if-eqz v0, :cond_13

    .line 134
    .line 135
    const/16 p0, 0x12

    .line 136
    return p0

    .line 137
    .line 138
    :cond_13
    instance-of v0, p0, Le8/k;

    .line 139
    .line 140
    if-eqz v0, :cond_14

    .line 141
    .line 142
    const/16 p0, 0x13

    .line 143
    return p0

    .line 144
    .line 145
    :cond_14
    instance-of v0, p0, Le8/m;

    .line 146
    .line 147
    if-eqz v0, :cond_15

    .line 148
    .line 149
    const/16 p0, 0x14

    .line 150
    return p0

    .line 151
    .line 152
    :cond_15
    instance-of v0, p0, Le8/n;

    .line 153
    .line 154
    if-eqz v0, :cond_16

    .line 155
    .line 156
    const/16 p0, 0x15

    .line 157
    return p0

    .line 158
    .line 159
    :cond_16
    instance-of p0, p0, Le8/o;

    .line 160
    .line 161
    if-eqz p0, :cond_17

    .line 162
    .line 163
    const/16 p0, 0x16

    .line 164
    return p0

    .line 165
    :cond_17
    const/4 p0, -0x1

    .line 166
    return p0
.end method

.method public static k(Ljava/lang/Object;I)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Lw7/g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->j(Ljava/lang/Object;)I

    .line 8
    move-result p0

    .line 9
    .line 10
    if-ne p0, p1, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static l(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p0, Lf8/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of p0, p0, Lf8/d;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Ljava/util/Map$Entry;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p0, Lf8/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of p0, p0, Lf8/e$a;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public static n(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p0, Ljava/util/Set;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    instance-of v0, p0, Lf8/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    instance-of p0, p0, Lf8/f;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static o(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    const-class v0, Lkotlin/jvm/internal/v0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->r(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->o(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/ClassCastException;

    .line 7
    throw p0
.end method

.method public static q(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    const-string p0, "null"

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string p0, " cannot be cast to "

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Lkotlin/jvm/internal/v0;->r(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ClassCastException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/v0;->p(Ljava/lang/ClassCastException;)Ljava/lang/ClassCastException;

    .line 9
    move-result-object p0

    .line 10
    throw p0
.end method
