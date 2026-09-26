.class final Landroidx/compose/ui/text/font/PlatformTypefacesApi28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/PlatformTypefaces;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


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

.method private final d(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->b()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v1}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->d()Landroidx/compose/ui/text/font/FontWeight;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    move-result v1

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 30
    move-result v1

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    :cond_0
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 35
    .line 36
    const-string p2, "DEFAULT"

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    return-object p1

    .line 41
    .line 42
    :cond_1
    if-nez p1, :cond_2

    .line 43
    .line 44
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 54
    move-result p2

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 58
    move-result v0

    .line 59
    .line 60
    .line 61
    invoke-static {p3, v0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 62
    move-result p3

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2, p3}, Landroidx/appcompat/widget/r;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    const-string p2, "create(\n            fami\u2026ontStyle.Italic\n        )"

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    return-object p1
.end method

.method private final e(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->d(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 18
    move-result v0

    .line 19
    .line 20
    .line 21
    invoke-static {p3, v0}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 22
    move-result v0

    .line 23
    .line 24
    sget-object v2, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    .line 25
    .line 26
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 27
    .line 28
    const-string v4, "DEFAULT"

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 35
    move-result v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v4, v0}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->d(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 49
    move-result-object p2

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    move-result p2

    .line 54
    .line 55
    if-nez p2, :cond_1

    .line 56
    move-object v1, p1

    .line 57
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "familyName"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "weight"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->d()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->d()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->e()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v1

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->e()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->c()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->c()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 76
    move-result-object p1

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 80
    move-result-object p1

    .line 81
    goto :goto_0

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->a()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 85
    move-result-object v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->a()Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 99
    move-result-object p1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 103
    move-result-object p1

    .line 104
    goto :goto_0

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->e(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 108
    move-result-object p1

    .line 109
    :goto_0
    return-object p1
.end method

.method public b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/GenericFontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "name"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "fontWeight"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->d(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public c(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fontWeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1, p2}, Landroidx/compose/ui/text/font/PlatformTypefacesApi28;->d(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
