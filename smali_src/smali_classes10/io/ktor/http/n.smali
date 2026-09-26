.class public final Lio/ktor/http/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpHeaderValueParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HttpHeaderValueParserKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,224:1\n1054#2:225\n1549#2:226\n1620#2,3:227\n*S KotlinDebug\n*F\n+ 1 HttpHeaderValueParser.kt\nio/ktor/http/HttpHeaderValueParserKt\n*L\n49#1:225\n96#1:226\n96#1:227,3\n*E\n"
.end annotation


# direct methods
.method private static final a(Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    .line 8
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 12
    move-result v1

    .line 13
    .line 14
    const/16 v2, 0x20

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eq p1, v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 29
    move-result p0

    .line 30
    .line 31
    const/16 p1, 0x3b

    .line 32
    .line 33
    if-ne p0, p1, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :cond_2
    :goto_1
    return v0
.end method

.method public static final b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/http/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lio/ktor/http/n;->c(Ljava/lang/String;Z)Ljava/util/List;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static final c(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lio/ktor/http/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 10
    .line 11
    sget-object v1, Lio/ktor/http/n$a;->INSTANCE:Lio/ktor/http/n$a;

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    if-gt v1, v2, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v1, v0, p1}, Lio/ktor/http/n;->d(Ljava/lang/String;ILw7/m;Z)I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {v0}, Lio/ktor/http/n;->j(Lw7/m;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method private static final d(Ljava/lang/String;ILw7/m;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lw7/m<",
            "+",
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/g;",
            ">;>;Z)I"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    sget-object v1, Lio/ktor/http/n$b;->INSTANCE:Lio/ktor/http/n$b;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    move v2, p1

    .line 18
    .line 19
    .line 20
    :goto_1
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 21
    move-result v3

    .line 22
    .line 23
    if-gt v2, v3, :cond_6

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 27
    move-result v3

    .line 28
    .line 29
    const/16 v4, 0x2c

    .line 30
    .line 31
    if-ne v3, v4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    .line 37
    check-cast p2, Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance p3, Lio/ktor/http/g;

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    move-result v1

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    move v1, v2

    .line 48
    .line 49
    .line 50
    :goto_2
    invoke-static {p0, p1, v1}, Lio/ktor/http/n;->i(Ljava/lang/String;II)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lio/ktor/http/n;->j(Lw7/m;)Ljava/util/List;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-direct {p3, p0, p1}, Lio/ktor/http/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    return v2

    .line 65
    .line 66
    :cond_2
    const/16 v4, 0x3b

    .line 67
    .line 68
    if-ne v3, v4, :cond_4

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v2, v0}, Lio/ktor/http/n;->e(Ljava/lang/String;ILw7/m;)I

    .line 80
    move-result v2

    .line 81
    goto :goto_1

    .line 82
    .line 83
    :cond_4
    if-eqz p3, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v2, v0}, Lio/ktor/http/n;->e(Ljava/lang/String;ILw7/m;)I

    .line 87
    move-result v2

    .line 88
    goto :goto_1

    .line 89
    .line 90
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_1

    .line 92
    .line 93
    .line 94
    :cond_6
    invoke-interface {p2}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 95
    move-result-object p2

    .line 96
    .line 97
    check-cast p2, Ljava/util/ArrayList;

    .line 98
    .line 99
    new-instance p3, Lio/ktor/http/g;

    .line 100
    .line 101
    if-eqz v1, :cond_7

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 105
    move-result v1

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v1, v2

    .line 108
    .line 109
    .line 110
    :goto_3
    invoke-static {p0, p1, v1}, Lio/ktor/http/n;->i(Ljava/lang/String;II)Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-static {v0}, Lio/ktor/http/n;->j(Lw7/m;)Ljava/util/List;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-direct {p3, p0, p1}, Lio/ktor/http/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return v2
.end method

.method private static final e(Ljava/lang/String;ILw7/m;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lw7/m<",
            "+",
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/h;",
            ">;>;)I"
        }
    .end annotation

    .line 1
    move v0, p1

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 5
    move-result v1

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-gt v0, v1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 13
    move-result v1

    .line 14
    .line 15
    const/16 v3, 0x3d

    .line 16
    .line 17
    if-ne v1, v3, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v0, 0x1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v1}, Lio/ktor/http/n;->g(Ljava/lang/String;I)Lw7/u;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lw7/u;->a()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    check-cast v2, Ljava/lang/Number;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 33
    move-result v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lw7/u;->b()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {p2, p0, p1, v0, v1}, Lio/ktor/http/n;->f(Lw7/m;Ljava/lang/String;IILjava/lang/String;)V

    .line 43
    return v2

    .line 44
    .line 45
    :cond_0
    const/16 v3, 0x3b

    .line 46
    .line 47
    if-ne v1, v3, :cond_1

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_1
    const/16 v3, 0x2c

    .line 51
    .line 52
    if-ne v1, v3, :cond_2

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {p2, p0, p1, v0, v2}, Lio/ktor/http/n;->f(Lw7/m;Ljava/lang/String;IILjava/lang/String;)V

    .line 56
    return v0

    .line 57
    .line 58
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {p2, p0, p1, v0, v2}, Lio/ktor/http/n;->f(Lw7/m;Ljava/lang/String;IILjava/lang/String;)V

    .line 63
    return v0
.end method

.method private static final f(Lw7/m;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/m<",
            "+",
            "Ljava/util/ArrayList<",
            "Lio/ktor/http/h;",
            ">;>;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lio/ktor/http/n;->i(Ljava/lang/String;II)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 8
    move-result p2

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    check-cast p0, Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance p2, Lio/ktor/http/h;

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, p1, p4}, Lio/ktor/http/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method private static final g(Ljava/lang/String;I)Lw7/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    .line 15
    invoke-static {p0, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v0

    .line 22
    .line 23
    const/16 v1, 0x22

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Lio/ktor/http/n;->h(Ljava/lang/String;I)Lw7/u;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    move v0, p1

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 37
    move-result v1

    .line 38
    .line 39
    if-gt v0, v1, :cond_4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 43
    move-result v1

    .line 44
    .line 45
    const/16 v2, 0x3b

    .line 46
    .line 47
    if-ne v1, v2, :cond_2

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_2
    const/16 v2, 0x2c

    .line 51
    .line 52
    if-ne v1, v2, :cond_3

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-static {p0, p1, v0}, Lio/ktor/http/n;->i(Ljava/lang/String;II)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-static {v1, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    .line 67
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 68
    goto :goto_0

    .line 69
    .line 70
    .line 71
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    .line 75
    invoke-static {p0, p1, v0}, Lio/ktor/http/n;->i(Ljava/lang/String;II)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    .line 78
    .line 79
    invoke-static {v1, p0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method private static final h(Ljava/lang/String;I)Lw7/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 9
    move-result v1

    .line 10
    .line 11
    const-string v2, "builder.toString()"

    .line 12
    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    if-gt p1, v1, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 19
    move-result v1

    .line 20
    .line 21
    if-ne v1, v3, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, p1}, Lio/ktor/http/n;->a(Ljava/lang/String;I)Z

    .line 25
    move-result v3

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    .line 47
    :cond_0
    const/16 v2, 0x5c

    .line 48
    .line 49
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Lkotlin/text/k;->W(Ljava/lang/CharSequence;)I

    .line 53
    move-result v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, -0x2

    .line 56
    .line 57
    if-ge p1, v2, :cond_1

    .line 58
    .line 59
    add-int/lit8 v1, p1, 0x1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 63
    move-result v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    add-int/lit8 p1, p1, 0x2

    .line 69
    goto :goto_0

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    add-int/lit8 p1, p1, 0x1

    .line 75
    goto :goto_0

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p0

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method

.method private static final i(Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lkotlin/text/k;->b1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final j(Lw7/m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/m<",
            "+",
            "Ljava/util/List<",
            "+TT;>;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lw7/m;->isInitialized()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    check-cast p0, Ljava/util/List;

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method
