.class public final Landroidx/compose/ui/text/ParagraphStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DefaultLineHeight:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnit$Companion;->a()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    sput-wide v0, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    .line 9
    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/ParagraphStyle;F)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/ParagraphStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/ParagraphStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

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
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->f()Landroidx/compose/ui/text/style/TextAlign;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->f()Landroidx/compose/ui/text/style/TextAlign;

    .line 20
    move-result-object v2

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    move-object v2, v1

    .line 26
    .line 27
    check-cast v2, Landroidx/compose/ui/text/style/TextAlign;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->g()Landroidx/compose/ui/text/style/TextDirection;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->g()Landroidx/compose/ui/text/style/TextDirection;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3, p2}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    move-object v3, v1

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/ui/text/style/TextDirection;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->c()J

    .line 46
    move-result-wide v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->c()J

    .line 50
    move-result-wide v6

    .line 51
    .line 52
    .line 53
    invoke-static {v4, v5, v6, v7, p2}, Landroidx/compose/ui/text/SpanStyleKt;->e(JJF)J

    .line 54
    move-result-wide v4

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->h()Landroidx/compose/ui/text/style/TextIndent;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    sget-object v1, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextIndent$Companion;->a()Landroidx/compose/ui/text/style/TextIndent;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->h()Landroidx/compose/ui/text/style/TextIndent;

    .line 70
    move-result-object v6

    .line 71
    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    sget-object v6, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Landroidx/compose/ui/text/style/TextIndent$Companion;->a()Landroidx/compose/ui/text/style/TextIndent;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {v1, v6, p2}, Landroidx/compose/ui/text/style/TextIndentKt;->a(Landroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/style/TextIndent;F)Landroidx/compose/ui/text/style/TextIndent;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->e()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 86
    move-result-object v1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->e()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 90
    move-result-object v7

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v7, p2}, Landroidx/compose/ui/text/ParagraphStyleKt;->b(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 94
    move-result-object v7

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->d()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 98
    move-result-object p0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/text/ParagraphStyle;->d()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->c(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    .line 106
    move-result-object p0

    .line 107
    move-object v8, p0

    .line 108
    .line 109
    check-cast v8, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 110
    const/4 v9, 0x0

    .line 111
    move-object v1, v0

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/k;)V

    .line 115
    return-object v0
.end method

.method private static final b(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;
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
    return-object p0

    .line 7
    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;->a()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    :cond_1
    if-nez p1, :cond_2

    .line 17
    .line 18
    sget-object p1, Landroidx/compose/ui/text/PlatformParagraphStyle;->Companion:Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/PlatformParagraphStyle$Companion;->a()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/AndroidTextStyle_androidKt;->b(Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/PlatformParagraphStyle;F)Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/ParagraphStyle;
    .locals 10
    .param p0    # Landroidx/compose/ui/text/ParagraphStyle;
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
    new-instance v0, Landroidx/compose/ui/text/ParagraphStyle;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->f()Landroidx/compose/ui/text/style/TextAlign;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign;->m()I

    .line 22
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    sget-object v1, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextAlign$Companion;->f()I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {v1}, Landroidx/compose/ui/text/style/TextAlign;->g(I)Landroidx/compose/ui/text/style/TextAlign;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->g()Landroidx/compose/ui/text/style/TextDirection;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v1}, Landroidx/compose/ui/text/TextStyleKt;->e(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/style/TextDirection;)I

    .line 41
    move-result p1

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Landroidx/compose/ui/text/style/TextDirection;->f(I)Landroidx/compose/ui/text/style/TextDirection;

    .line 45
    move-result-object v3

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->c()J

    .line 49
    move-result-wide v4

    .line 50
    .line 51
    .line 52
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 53
    move-result p1

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    sget-wide v4, Landroidx/compose/ui/text/ParagraphStyleKt;->DefaultLineHeight:J

    .line 58
    goto :goto_1

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->c()J

    .line 62
    move-result-wide v4

    .line 63
    .line 64
    .line 65
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->h()Landroidx/compose/ui/text/style/TextIndent;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    sget-object p1, Landroidx/compose/ui/text/style/TextIndent;->Companion:Landroidx/compose/ui/text/style/TextIndent$Companion;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent$Companion;->a()Landroidx/compose/ui/text/style/TextIndent;

    .line 74
    move-result-object p1

    .line 75
    :cond_2
    move-object v6, p1

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->e()Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 79
    move-result-object v7

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/compose/ui/text/ParagraphStyle;->d()Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 83
    move-result-object v8

    .line 84
    const/4 v9, 0x0

    .line 85
    move-object v1, v0

    .line 86
    .line 87
    .line 88
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;Lkotlin/jvm/internal/k;)V

    .line 89
    return-object v0
.end method
