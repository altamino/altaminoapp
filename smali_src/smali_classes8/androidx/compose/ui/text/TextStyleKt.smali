.class public final Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/TextStyleKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextStyleKt;->b(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->a(Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;)Landroidx/compose/ui/text/PlatformTextStyle;

    .line 10
    move-result-object p0

    .line 11
    :goto_0
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;F)Landroidx/compose/ui/text/TextStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "start"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "stop"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->E()Landroidx/compose/ui/text/SpanStyle;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->E()Landroidx/compose/ui/text/SpanStyle;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->b(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;F)Landroidx/compose/ui/text/SpanStyle;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->D()Landroidx/compose/ui/text/ParagraphStyle;

    .line 28
    move-result-object p0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextStyle;->D()Landroidx/compose/ui/text/ParagraphStyle;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/ParagraphStyleKt;->a(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;F)Landroidx/compose/ui/text/ParagraphStyle;

    .line 36
    move-result-object p0

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 40
    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 3
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "style"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "direction"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    new-instance v0, Landroidx/compose/ui/text/TextStyle;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->u()Landroidx/compose/ui/text/SpanStyle;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/text/SpanStyleKt;->f(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->r()Landroidx/compose/ui/text/ParagraphStyle;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p1}, Landroidx/compose/ui/text/ParagraphStyleKt;->c(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->s()Landroidx/compose/ui/text/PlatformTextStyle;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    .line 36
    return-object v0
.end method

.method public static final e(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/style/TextDirection;)I
    .locals 5
    .param p0    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDirection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "layoutDirection"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/text/style/TextDirection;->Companion:Landroidx/compose/ui/text/style/TextDirection$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->a()I

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDirection;->l()I

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-static {v4, v1}, Landroidx/compose/ui/text/style/TextDirection;->i(II)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    move-result p0

    .line 33
    .line 34
    aget p0, p1, p0

    .line 35
    .line 36
    if-eq p0, v3, :cond_2

    .line 37
    .line 38
    if-ne p0, v2, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->c()I

    .line 42
    move-result p0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_1
    new-instance p0, Lw7/s;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 49
    throw p0

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->b()I

    .line 53
    move-result p0

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_3
    :goto_0
    if-nez p1, :cond_6

    .line 57
    .line 58
    sget-object p1, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 62
    move-result p0

    .line 63
    .line 64
    aget p0, p1, p0

    .line 65
    .line 66
    if-eq p0, v3, :cond_5

    .line 67
    .line 68
    if-ne p0, v2, :cond_4

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->e()I

    .line 72
    move-result p0

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_4
    new-instance p0, Lw7/s;

    .line 76
    .line 77
    .line 78
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 79
    throw p0

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextDirection$Companion;->d()I

    .line 83
    move-result p0

    .line 84
    goto :goto_1

    .line 85
    .line 86
    .line 87
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextDirection;->l()I

    .line 88
    move-result p0

    .line 89
    :goto_1
    return p0
.end method
