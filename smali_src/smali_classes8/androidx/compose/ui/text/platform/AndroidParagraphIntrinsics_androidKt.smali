.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)Landroidx/compose/ui/text/ParagraphIntrinsics;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            ")",
            "Landroidx/compose/ui/text/ParagraphIntrinsics;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "style"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "spanStyles"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "placeholders"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "density"

    .line 23
    .line 24
    .line 25
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    const-string v0, "fontFamilyResolver"

    .line 28
    .line 29
    .line 30
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    new-instance v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 33
    move-object v1, v0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, p2

    .line 37
    move-object v5, p3

    .line 38
    move-object v6, p5

    .line 39
    move-object v7, p4

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    .line 43
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/style/TextDirection;Landroidx/compose/ui/text/intl/LocaleList;)I
    .locals 6
    .param p0    # Landroidx/compose/ui/text/style/TextDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection;->l()I

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->a()I

    .line 13
    move-result p0

    .line 14
    .line 15
    :goto_0
    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->b()I

    .line 19
    move-result v1

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x2

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    goto :goto_1

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->c()I

    .line 31
    move-result v1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x3

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    :cond_2
    move v2, v3

    .line 40
    goto :goto_1

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->d()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 48
    move-result v1

    .line 49
    const/4 v4, 0x0

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    move v2, v4

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->e()I

    .line 57
    move-result v1

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v1}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 61
    move-result v1

    .line 62
    const/4 v5, 0x1

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    move v2, v5

    .line 66
    goto :goto_1

    .line 67
    .line 68
    .line 69
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->a()I

    .line 70
    move-result v0

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v0}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 74
    move-result p0

    .line 75
    .line 76
    if-eqz p0, :cond_9

    .line 77
    .line 78
    if-eqz p1, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/intl/LocaleList;->c(I)Landroidx/compose/ui/text/intl/Locale;

    .line 82
    move-result-object p0

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/Locale;->a()Landroidx/compose/ui/text/intl/PlatformLocale;

    .line 86
    move-result-object p0

    .line 87
    .line 88
    check-cast p0, Landroidx/compose/ui/text/intl/AndroidLocale;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/text/intl/AndroidLocale;->b()Ljava/util/Locale;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    if-nez p0, :cond_7

    .line 95
    .line 96
    .line 97
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    :cond_7
    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->a(Ljava/util/Locale;)I

    .line 102
    move-result p0

    .line 103
    .line 104
    if-eqz p0, :cond_8

    .line 105
    .line 106
    if-eq p0, v5, :cond_2

    .line 107
    :cond_8
    :goto_1
    return v2

    .line 108
    .line 109
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    const-string p1, "Invalid TextDirection."

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    throw p0
.end method
