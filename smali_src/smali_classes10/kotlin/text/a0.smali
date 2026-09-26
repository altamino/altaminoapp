.class public final Lkotlin/text/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)B
    .locals 1
    .param p0    # Ljava/lang/String;
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
    .line 8
    invoke-static {p0}, Lkotlin/text/a0;->b(Ljava/lang/String;)Lw7/b0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lw7/b0;->f()B

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/text/s;->l(Ljava/lang/String;)Ljava/lang/Void;

    .line 20
    .line 21
    new-instance p0, Lw7/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 25
    throw p0
.end method

.method public static final b(Ljava/lang/String;)Lw7/b0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v0, 0xa

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/text/a0;->c(Ljava/lang/String;I)Lw7/b0;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final c(Ljava/lang/String;I)Lw7/b0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-static {p0, p1}, Lkotlin/text/a0;->f(Ljava/lang/String;I)Lw7/d0;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lw7/d0;->f()I

    .line 16
    move-result p0

    .line 17
    .line 18
    const/16 v0, 0xff

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lw7/d0;->b(I)I

    .line 22
    move-result v0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m;->a(II)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-lez v0, :cond_0

    .line 29
    return-object p1

    .line 30
    :cond_0
    int-to-byte p0, p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lw7/b0;->b(B)B

    .line 34
    move-result p0

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Lw7/b0;->a(B)Lw7/b0;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_1
    return-object p1
.end method

.method public static final d(Ljava/lang/String;)I
    .locals 1
    .param p0    # Ljava/lang/String;
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
    .line 8
    invoke-static {p0}, Lkotlin/text/a0;->e(Ljava/lang/String;)Lw7/d0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lw7/d0;->f()I

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/text/s;->l(Ljava/lang/String;)Ljava/lang/Void;

    .line 20
    .line 21
    new-instance p0, Lw7/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 25
    throw p0
.end method

.method public static final e(Ljava/lang/String;)Lw7/d0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v0, 0xa

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/text/a0;->f(Ljava/lang/String;I)Lw7/d0;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final f(Ljava/lang/String;I)Lw7/d0;
    .locals 9
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-static {p1}, Lkotlin/text/a;->a(I)I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    return-object v1

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v3

    .line 22
    .line 23
    const/16 v4, 0x30

    .line 24
    .line 25
    .line 26
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->l(II)I

    .line 27
    move-result v4

    .line 28
    .line 29
    if-gez v4, :cond_2

    .line 30
    const/4 v4, 0x1

    .line 31
    .line 32
    if-eq v0, v4, :cond_1

    .line 33
    .line 34
    const/16 v5, 0x2b

    .line 35
    .line 36
    if-eq v3, v5, :cond_3

    .line 37
    :cond_1
    return-object v1

    .line 38
    :cond_2
    move v4, v2

    .line 39
    .line 40
    .line 41
    :cond_3
    invoke-static {p1}, Lw7/d0;->b(I)I

    .line 42
    move-result v3

    .line 43
    .line 44
    .line 45
    const v5, 0x71c71c7

    .line 46
    move v6, v5

    .line 47
    .line 48
    :goto_0
    if-ge v4, v0, :cond_8

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v7

    .line 53
    .line 54
    .line 55
    invoke-static {v7, p1}, Lkotlin/text/b;->b(CI)I

    .line 56
    move-result v7

    .line 57
    .line 58
    if-gez v7, :cond_4

    .line 59
    return-object v1

    .line 60
    .line 61
    .line 62
    :cond_4
    invoke-static {v2, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m;->a(II)I

    .line 63
    move-result v8

    .line 64
    .line 65
    if-lez v8, :cond_6

    .line 66
    .line 67
    if-ne v6, v5, :cond_5

    .line 68
    const/4 v6, -0x1

    .line 69
    .line 70
    .line 71
    invoke-static {v6, v3}, Lkotlin/text/z;->a(II)I

    .line 72
    move-result v6

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m;->a(II)I

    .line 76
    move-result v8

    .line 77
    .line 78
    if-lez v8, :cond_6

    .line 79
    :cond_5
    return-object v1

    .line 80
    :cond_6
    mul-int/2addr v2, v3

    .line 81
    .line 82
    .line 83
    invoke-static {v2}, Lw7/d0;->b(I)I

    .line 84
    move-result v2

    .line 85
    .line 86
    .line 87
    invoke-static {v7}, Lw7/d0;->b(I)I

    .line 88
    move-result v7

    .line 89
    add-int/2addr v7, v2

    .line 90
    .line 91
    .line 92
    invoke-static {v7}, Lw7/d0;->b(I)I

    .line 93
    move-result v7

    .line 94
    .line 95
    .line 96
    invoke-static {v7, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m;->a(II)I

    .line 97
    move-result v2

    .line 98
    .line 99
    if-gez v2, :cond_7

    .line 100
    return-object v1

    .line 101
    .line 102
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 103
    move v2, v7

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_8
    invoke-static {v2}, Lw7/d0;->a(I)Lw7/d0;

    .line 108
    move-result-object p0

    .line 109
    return-object p0
.end method

.method public static final g(Ljava/lang/String;)J
    .locals 2
    .param p0    # Ljava/lang/String;
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
    .line 8
    invoke-static {p0}, Lkotlin/text/a0;->h(Ljava/lang/String;)Lw7/f0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lw7/f0;->f()J

    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/text/s;->l(Ljava/lang/String;)Ljava/lang/Void;

    .line 20
    .line 21
    new-instance p0, Lw7/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 25
    throw p0
.end method

.method public static final h(Ljava/lang/String;)Lw7/f0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v0, 0xa

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/text/a0;->i(Ljava/lang/String;I)Lw7/f0;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final i(Ljava/lang/String;I)Lw7/f0;
    .locals 17
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "<this>"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p1 .. p1}, Lkotlin/text/a;->a(I)I

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    return-object v3

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v5

    .line 26
    .line 27
    const/16 v6, 0x30

    .line 28
    .line 29
    .line 30
    invoke-static {v5, v6}, Lkotlin/jvm/internal/t;->l(II)I

    .line 31
    move-result v6

    .line 32
    .line 33
    if-gez v6, :cond_2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eq v2, v4, :cond_1

    .line 37
    .line 38
    const/16 v6, 0x2b

    .line 39
    .line 40
    if-eq v5, v6, :cond_2

    .line 41
    :cond_1
    return-object v3

    .line 42
    :cond_2
    int-to-long v5, v1

    .line 43
    .line 44
    .line 45
    invoke-static {v5, v6}, Lw7/f0;->b(J)J

    .line 46
    move-result-wide v5

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-wide v7, 0x71c71c71c71c71cL

    .line 52
    .line 53
    const-wide/16 v9, 0x0

    .line 54
    move-wide v11, v7

    .line 55
    .line 56
    :goto_0
    if-ge v4, v2, :cond_7

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 60
    move-result v13

    .line 61
    .line 62
    .line 63
    invoke-static {v13, v1}, Lkotlin/text/b;->b(CI)I

    .line 64
    move-result v13

    .line 65
    .line 66
    if-gez v13, :cond_3

    .line 67
    return-object v3

    .line 68
    .line 69
    .line 70
    :cond_3
    invoke-static {v9, v10, v11, v12}, Lkotlin/text/x;->a(JJ)I

    .line 71
    move-result v14

    .line 72
    .line 73
    if-lez v14, :cond_5

    .line 74
    .line 75
    cmp-long v11, v11, v7

    .line 76
    .line 77
    if-nez v11, :cond_4

    .line 78
    .line 79
    const-wide/16 v11, -0x1

    .line 80
    .line 81
    .line 82
    invoke-static {v11, v12, v5, v6}, Lkotlin/text/y;->a(JJ)J

    .line 83
    move-result-wide v11

    .line 84
    .line 85
    .line 86
    invoke-static {v9, v10, v11, v12}, Lkotlin/text/x;->a(JJ)I

    .line 87
    move-result v14

    .line 88
    .line 89
    if-lez v14, :cond_5

    .line 90
    :cond_4
    return-object v3

    .line 91
    :cond_5
    mul-long/2addr v9, v5

    .line 92
    .line 93
    .line 94
    invoke-static {v9, v10}, Lw7/f0;->b(J)J

    .line 95
    move-result-wide v9

    .line 96
    .line 97
    .line 98
    invoke-static {v13}, Lw7/d0;->b(I)I

    .line 99
    move-result v13

    .line 100
    int-to-long v13, v13

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const-wide v15, 0xffffffffL

    .line 106
    and-long/2addr v13, v15

    .line 107
    .line 108
    .line 109
    invoke-static {v13, v14}, Lw7/f0;->b(J)J

    .line 110
    move-result-wide v13

    .line 111
    add-long/2addr v13, v9

    .line 112
    .line 113
    .line 114
    invoke-static {v13, v14}, Lw7/f0;->b(J)J

    .line 115
    move-result-wide v13

    .line 116
    .line 117
    .line 118
    invoke-static {v13, v14, v9, v10}, Lkotlin/text/x;->a(JJ)I

    .line 119
    move-result v9

    .line 120
    .line 121
    if-gez v9, :cond_6

    .line 122
    return-object v3

    .line 123
    .line 124
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 125
    move-wide v9, v13

    .line 126
    goto :goto_0

    .line 127
    .line 128
    .line 129
    :cond_7
    invoke-static {v9, v10}, Lw7/f0;->a(J)Lw7/f0;

    .line 130
    move-result-object v0

    .line 131
    return-object v0
.end method

.method public static final j(Ljava/lang/String;)S
    .locals 1
    .param p0    # Ljava/lang/String;
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
    .line 8
    invoke-static {p0}, Lkotlin/text/a0;->k(Ljava/lang/String;)Lw7/i0;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lw7/i0;->f()S

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lkotlin/text/s;->l(Ljava/lang/String;)Ljava/lang/Void;

    .line 20
    .line 21
    new-instance p0, Lw7/i;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lw7/i;-><init>()V

    .line 25
    throw p0
.end method

.method public static final k(Ljava/lang/String;)Lw7/i0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const/16 v0, 0xa

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0}, Lkotlin/text/a0;->l(Ljava/lang/String;I)Lw7/i0;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final l(Ljava/lang/String;I)Lw7/i0;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .line 8
    invoke-static {p0, p1}, Lkotlin/text/a0;->f(Ljava/lang/String;I)Lw7/d0;

    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lw7/d0;->f()I

    .line 16
    move-result p0

    .line 17
    .line 18
    .line 19
    const v0, 0xffff

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lw7/d0;->b(I)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m;->a(II)I

    .line 27
    move-result v0

    .line 28
    .line 29
    if-lez v0, :cond_0

    .line 30
    return-object p1

    .line 31
    :cond_0
    int-to-short p0, p0

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lw7/i0;->b(S)S

    .line 35
    move-result p0

    .line 36
    .line 37
    .line 38
    invoke-static {p0}, Lw7/i0;->a(S)Lw7/i0;

    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    return-object p1
.end method
