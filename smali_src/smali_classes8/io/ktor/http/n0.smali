.class public final Lio/ktor/http/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nURLUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLUtils.kt\nio/ktor/http/URLUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1#2:166\n1360#3:167\n1446#3,2:168\n1549#3:170\n1620#3,3:171\n1448#3,3:174\n*S KotlinDebug\n*F\n+ 1 URLUtils.kt\nio/ktor/http/URLUtilsKt\n*L\n118#1:167\n118#1:168,2\n119#1:170\n119#1:171,3\n118#1:174,3\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/http/p0;)Lio/ktor/http/f0;
    .locals 13
    .param p0    # Lio/ktor/http/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "url"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/http/f0;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    .line 18
    const/16 v11, 0x1ff

    .line 19
    const/4 v12, 0x0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v12}, Lio/ktor/http/f0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lio/ktor/http/n0;->h(Lio/ktor/http/f0;Lio/ktor/http/p0;)Lio/ktor/http/f0;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final b(Ljava/lang/String;)Lio/ktor/http/f0;
    .locals 13
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "urlString"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Lio/ktor/http/f0;

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x0

    .line 16
    const/4 v10, 0x0

    .line 17
    .line 18
    const/16 v11, 0x1ff

    .line 19
    const/4 v12, 0x0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v12}, Lio/ktor/http/f0;-><init>(Lio/ktor/http/l0;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lio/ktor/http/z;Ljava/lang/String;ZILkotlin/jvm/internal/k;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lio/ktor/http/k0;->j(Lio/ktor/http/f0;Ljava/lang/String;)Lio/ktor/http/f0;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Lio/ktor/http/p0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "urlString"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lio/ktor/http/n0;->b(Ljava/lang/String;)Lio/ktor/http/f0;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/ktor/http/f0;->b()Lio/ktor/http/p0;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final d(Ljava/lang/Appendable;Ljava/lang/String;Lio/ktor/http/a0;Z)V
    .locals 12
    .param p0    # Ljava/lang/Appendable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/http/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "encodedPath"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "encodedQueryParameters"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/text/k;->z(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v2, 0x2

    .line 27
    .line 28
    const-string v3, "/"

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v3, v0, v2, v1}, Lkotlin/text/k;->K(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/16 v0, 0x2f

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Lio/ktor/util/u;->isEmpty()Z

    .line 46
    move-result p1

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    if-eqz p3, :cond_2

    .line 51
    .line 52
    :cond_1
    const-string p1, "?"

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-interface {p2}, Lio/ktor/util/u;->a()Ljava/util/Set;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    move-result p2

    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    move-result-object p2

    .line 79
    .line 80
    check-cast p2, Ljava/util/Map$Entry;

    .line 81
    .line 82
    .line 83
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 84
    move-result-object p3

    .line 85
    .line 86
    check-cast p3, Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    check-cast p2, Ljava/util/List;

    .line 93
    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    .line 101
    invoke-static {p3, v1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    .line 105
    invoke-static {p2}, Lkotlin/collections/t;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 106
    move-result-object p2

    .line 107
    goto :goto_2

    .line 108
    .line 109
    :cond_3
    check-cast p2, Ljava/lang/Iterable;

    .line 110
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    const/16 v3, 0xa

    .line 114
    .line 115
    .line 116
    invoke-static {p2, v3}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 117
    move-result v3

    .line 118
    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object p2

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v3

    .line 129
    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    .line 133
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v3

    .line 135
    .line 136
    check-cast v3, Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    invoke-static {p3, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 140
    move-result-object v3

    .line 141
    .line 142
    .line 143
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    move-object p2, v0

    .line 146
    .line 147
    :goto_2
    check-cast p2, Ljava/lang/Iterable;

    .line 148
    .line 149
    .line 150
    invoke-static {v2, p2}, Lkotlin/collections/t;->D(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 151
    goto :goto_0

    .line 152
    .line 153
    :cond_5
    const-string v4, "&"

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    .line 159
    sget-object v9, Lio/ktor/http/n0$a;->INSTANCE:Lio/ktor/http/n0$a;

    .line 160
    .line 161
    const/16 v10, 0x3c

    .line 162
    const/4 v11, 0x0

    .line 163
    move-object v3, p0

    .line 164
    .line 165
    .line 166
    invoke-static/range {v2 .. v11}, Lkotlin/collections/t;->r0(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le8/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 167
    return-void
.end method

.method public static final e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/StringBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x3a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    :cond_1
    const-string p1, "@"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    return-void
.end method

.method public static final f(Lio/ktor/http/p0;)Ljava/lang/String;
    .locals 2
    .param p0    # Lio/ktor/http/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/ktor/http/p0;->g()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v1, 0x3a

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lio/ktor/http/p0;->j()I

    .line 26
    move-result p0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final g(Lio/ktor/http/f0;Lio/ktor/http/f0;)Lio/ktor/http/f0;
    .locals 3
    .param p0    # Lio/ktor/http/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/http/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "url"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/http/f0;->o()Lio/ktor/http/l0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->y(Lio/ktor/http/l0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/ktor/http/f0;->j()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lio/ktor/http/f0;->n()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->x(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/ktor/http/f0;->g()Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->u(Ljava/util/List;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/ktor/http/f0;->h()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lio/ktor/http/f0;->f()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->t(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0, v1}, Lio/ktor/http/d0;->b(IILjava/lang/Object;)Lio/ktor/http/a0;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lio/ktor/http/f0;->e()Lio/ktor/http/a0;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lio/ktor/util/x;->c(Lio/ktor/util/u;Lio/ktor/util/u;)Lio/ktor/util/u;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->s(Lio/ktor/http/a0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lio/ktor/http/f0;->d()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->r(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lio/ktor/http/f0;->p()Z

    .line 80
    move-result p1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->z(Z)V

    .line 84
    return-object p0
.end method

.method public static final h(Lio/ktor/http/f0;Lio/ktor/http/p0;)Lio/ktor/http/f0;
    .locals 7
    .param p0    # Lio/ktor/http/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/http/p0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "url"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lio/ktor/http/p0;->k()Lio/ktor/http/l0;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->y(Lio/ktor/http/l0;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/ktor/http/p0;->g()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->w(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lio/ktor/http/p0;->j()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->x(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lio/ktor/http/p0;->d()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0}, Lio/ktor/http/h0;->i(Lio/ktor/http/f0;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lio/ktor/http/p0;->f()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lio/ktor/http/p0;->c()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->t(Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    const/4 v2, 0x0

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0, v1}, Lio/ktor/http/d0;->b(IILjava/lang/Object;)Lio/ktor/http/a0;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lio/ktor/http/p0;->e()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    const/4 v5, 0x6

    .line 67
    const/4 v6, 0x0

    .line 68
    .line 69
    .line 70
    invoke-static/range {v1 .. v6}, Lio/ktor/http/e0;->d(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/z;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-interface {v0, v1}, Lio/ktor/util/u;->e(Lio/ktor/util/t;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->s(Lio/ktor/http/a0;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lio/ktor/http/p0;->b()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lio/ktor/http/f0;->r(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lio/ktor/http/p0;->m()Z

    .line 88
    move-result p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Lio/ktor/http/f0;->z(Z)V

    .line 92
    return-object p0
.end method
