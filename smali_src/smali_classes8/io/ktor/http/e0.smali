.class public final Lio/ktor/http/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,95:1\n24#2:96\n*S KotlinDebug\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n*L\n14#1:96\n*E\n"
.end annotation


# direct methods
.method private static final a(Lio/ktor/http/a0;Ljava/lang/String;IIIZ)V
    .locals 9

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 4
    .line 5
    if-ne p3, v0, :cond_2

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p4, p1}, Lio/ktor/http/e0;->f(IILjava/lang/CharSequence;)I

    .line 9
    move-result v3

    .line 10
    .line 11
    .line 12
    invoke-static {v3, p4, p1}, Lio/ktor/http/e0;->e(IILjava/lang/CharSequence;)I

    .line 13
    move-result v4

    .line 14
    .line 15
    if-le v4, v3, :cond_1

    .line 16
    .line 17
    if-eqz p5, :cond_0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    .line 21
    const/16 v7, 0xc

    .line 22
    const/4 v8, 0x0

    .line 23
    move-object v2, p1

    .line 24
    .line 25
    .line 26
    invoke-static/range {v2 .. v8}, Lio/ktor/http/b;->k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    check-cast p2, Ljava/lang/Iterable;

    .line 42
    .line 43
    .line 44
    invoke-interface {p0, p1, p2}, Lio/ktor/util/u;->d(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 45
    :cond_1
    return-void

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-static {p2, p3, p1}, Lio/ktor/http/e0;->f(IILjava/lang/CharSequence;)I

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-static {v3, p3, p1}, Lio/ktor/http/e0;->e(IILjava/lang/CharSequence;)I

    .line 53
    move-result v4

    .line 54
    .line 55
    if-le v4, v3, :cond_5

    .line 56
    .line 57
    if-eqz p5, :cond_3

    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    .line 61
    const/16 v7, 0xc

    .line 62
    const/4 v8, 0x0

    .line 63
    move-object v2, p1

    .line 64
    .line 65
    .line 66
    invoke-static/range {v2 .. v8}, Lio/ktor/http/b;->k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object p2

    .line 68
    goto :goto_1

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 78
    .line 79
    .line 80
    invoke-static {p3, p4, p1}, Lio/ktor/http/e0;->f(IILjava/lang/CharSequence;)I

    .line 81
    move-result v3

    .line 82
    .line 83
    .line 84
    invoke-static {v3, p4, p1}, Lio/ktor/http/e0;->e(IILjava/lang/CharSequence;)I

    .line 85
    move-result v4

    .line 86
    .line 87
    if-eqz p5, :cond_4

    .line 88
    const/4 v5, 0x1

    .line 89
    const/4 v6, 0x0

    .line 90
    .line 91
    const/16 v7, 0x8

    .line 92
    const/4 v8, 0x0

    .line 93
    move-object v2, p1

    .line 94
    .line 95
    .line 96
    invoke-static/range {v2 .. v8}, Lio/ktor/http/b;->k(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    goto :goto_2

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_2
    invoke-interface {p0, p2, p1}, Lio/ktor/util/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_5
    return-void
.end method

.method private static final b(Lio/ktor/http/a0;Ljava/lang/String;IIZ)V
    .locals 17

    .line 1
    .line 2
    move/from16 v0, p3

    .line 3
    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    .line 10
    move/from16 v4, p2

    .line 11
    .line 12
    if-gt v4, v1, :cond_4

    .line 13
    move v10, v2

    .line 14
    move v7, v3

    .line 15
    move v2, v4

    .line 16
    move v6, v2

    .line 17
    .line 18
    :goto_0
    if-ne v10, v0, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    move-object/from16 v12, p1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v4

    .line 26
    .line 27
    const/16 v5, 0x26

    .line 28
    .line 29
    if-ne v4, v5, :cond_1

    .line 30
    .line 31
    move-object/from16 v4, p0

    .line 32
    .line 33
    move-object/from16 v5, p1

    .line 34
    move v8, v2

    .line 35
    .line 36
    move/from16 v9, p4

    .line 37
    .line 38
    .line 39
    invoke-static/range {v4 .. v9}, Lio/ktor/http/e0;->a(Lio/ktor/http/a0;Ljava/lang/String;IIIZ)V

    .line 40
    .line 41
    add-int/lit8 v4, v2, 0x1

    .line 42
    .line 43
    add-int/lit8 v10, v10, 0x1

    .line 44
    move v7, v3

    .line 45
    move v6, v4

    .line 46
    goto :goto_1

    .line 47
    .line 48
    :cond_1
    const/16 v5, 0x3d

    .line 49
    .line 50
    if-ne v4, v5, :cond_2

    .line 51
    .line 52
    if-ne v7, v3, :cond_2

    .line 53
    move v7, v2

    .line 54
    .line 55
    :cond_2
    :goto_1
    if-eq v2, v1, :cond_3

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v13, v6

    .line 60
    move v14, v7

    .line 61
    move v2, v10

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_4
    move-object/from16 v12, p1

    .line 65
    move v14, v3

    .line 66
    move v13, v4

    .line 67
    .line 68
    :goto_2
    if-ne v2, v0, :cond_5

    .line 69
    return-void

    .line 70
    .line 71
    .line 72
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 73
    move-result v15

    .line 74
    .line 75
    move-object/from16 v11, p0

    .line 76
    .line 77
    move-object/from16 v12, p1

    .line 78
    .line 79
    move/from16 v16, p4

    .line 80
    .line 81
    .line 82
    invoke-static/range {v11 .. v16}, Lio/ktor/http/e0;->a(Lio/ktor/http/a0;Ljava/lang/String;IIIZ)V

    .line 83
    return-void
.end method

.method public static final c(Ljava/lang/String;IIZ)Lio/ktor/http/z;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "query"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-le p1, v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lio/ktor/http/z;->Companion:Lio/ktor/http/z$a;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/ktor/http/z$a;->a()Lio/ktor/http/z;

    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object v0, Lio/ktor/http/z;->Companion:Lio/ktor/http/z$a;

    .line 21
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Lio/ktor/http/d0;->b(IILjava/lang/Object;)Lio/ktor/http/a0;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p0, p1, p2, p3}, Lio/ktor/http/e0;->b(Lio/ktor/http/a0;Ljava/lang/String;IIZ)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lio/ktor/http/a0;->build()Lio/ktor/http/z;

    .line 34
    move-result-object p0

    .line 35
    :goto_0
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/z;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p4, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x4

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    const/16 p2, 0x3e8

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p4, p4, 0x8

    .line 14
    .line 15
    if-eqz p4, :cond_2

    .line 16
    const/4 p3, 0x1

    .line 17
    .line 18
    .line 19
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/e0;->c(Ljava/lang/String;IIZ)Lio/ktor/http/z;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private static final e(IILjava/lang/CharSequence;)I
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-le p1, p0, :cond_0

    .line 3
    .line 4
    add-int/lit8 v0, p1, -0x1

    .line 5
    .line 6
    .line 7
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/text/a;->c(C)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return p1
.end method

.method private static final f(IILjava/lang/CharSequence;)I
    .locals 1

    .line 1
    .line 2
    :goto_0
    if-ge p0, p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-interface {p2, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/text/a;->c(C)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    add-int/lit8 p0, p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return p0
.end method
