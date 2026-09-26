.class public final Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlaceholderExtensions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlaceholderExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,89:1\n32#2,6:90\n*S KotlinDebug\n*F\n+ 1 PlaceholderExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt\n*L\n34#1:90,6\n*E\n"
.end annotation


# direct methods
.method private static final a(J)I
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide p0

    .line 5
    .line 6
    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 10
    move-result-wide v1

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x2

    .line 32
    :goto_0
    return p0
.end method

.method private static final b(I)I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->Companion:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->a()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->g()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    const/4 p0, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->b()I

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 34
    move-result v1

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    const/4 p0, 0x2

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->c()I

    .line 42
    move-result v1

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    const/4 p0, 0x3

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->f()I

    .line 54
    move-result v1

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    const/4 p0, 0x4

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->d()I

    .line 66
    move-result v1

    .line 67
    .line 68
    .line 69
    invoke-static {p0, v1}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    const/4 p0, 0x5

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;->e()I

    .line 78
    move-result v0

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0}, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->j(II)Z

    .line 82
    move-result p0

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    const/4 p0, 0x6

    .line 86
    :goto_0
    return p0

    .line 87
    .line 88
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    const-string v0, "Invalid PlaceholderVerticalAlign"

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    .line 96
    .line 97
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p0
.end method

.method private static final c(Landroid/text/Spannable;Landroidx/compose/ui/text/Placeholder;IILandroidx/compose/ui/unit/Density;)V
    .locals 8

    .line 1
    .line 2
    new-instance v7, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->c()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 10
    move-result v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->c()J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->a(J)I

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->a()J

    .line 22
    move-result-wide v3

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 26
    move-result v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->a()J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    .line 33
    invoke-static {v4, v5}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->a(J)I

    .line 34
    move-result v4

    .line 35
    .line 36
    .line 37
    invoke-interface {p4}, Landroidx/compose/ui/unit/Density;->E0()F

    .line 38
    move-result v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p4}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 42
    move-result p4

    .line 43
    .line 44
    mul-float v5, v0, p4

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/text/Placeholder;->b()I

    .line 48
    move-result p1

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->b(I)I

    .line 52
    move-result v6

    .line 53
    move-object v0, v7

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFIFI)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v7, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 60
    return-void
.end method

.method public static final d(Landroid/text/Spannable;Ljava/util/List;Landroidx/compose/ui/unit/Density;)V
    .locals 5
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
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
    const-string v0, "placeholders"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "density"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->a()Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    .line 34
    check-cast v3, Landroidx/compose/ui/text/Placeholder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->b()I

    .line 38
    move-result v4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->c()I

    .line 42
    move-result v2

    .line 43
    .line 44
    .line 45
    invoke-static {p0, v3, v4, v2, p2}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->c(Landroid/text/Spannable;Landroidx/compose/ui/text/Placeholder;IILandroidx/compose/ui/unit/Density;)V

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
