.class public final Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/FontFamilyTypefaceAdapter;


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation


# instance fields
.field private final platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefaces;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroidx/compose/ui/text/font/PlatformTypefacesKt;->a()Landroidx/compose/ui/text/font/PlatformTypefaces;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefaces;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;Le8/l;)Landroidx/compose/ui/text/font/TypefaceResult;
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/TypefaceRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceResult$Immutable;",
            "Lw7/l0;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/compose/ui/text/font/TypefaceResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "typefaceRequest"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "platformFontLoader"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string p2, "onAsyncCompletion"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string p2, "createDefaultTypeface"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->c()Landroidx/compose/ui/text/font/FontFamily;

    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x0

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_0
    instance-of p4, p2, Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    :goto_0
    iget-object p2, p0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefaces;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 38
    move-result-object p4

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 42
    move-result p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p2, p4, p1}, Landroidx/compose/ui/text/font/PlatformTypefaces;->c(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    instance-of p4, p2, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 50
    .line 51
    if-eqz p4, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;->platformTypefaceResolver:Landroidx/compose/ui/text/font/PlatformTypefaces;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->c()Landroidx/compose/ui/text/font/FontFamily;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    check-cast p4, Landroidx/compose/ui/text/font/GenericFontFamily;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 67
    move-result p1

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, p4, v0, p1}, Landroidx/compose/ui/text/font/PlatformTypefaces;->b(Landroidx/compose/ui/text/font/GenericFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_2
    instance-of p2, p2, Landroidx/compose/ui/text/font/LoadedFontFamily;

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->c()Landroidx/compose/ui/text/font/FontFamily;

    .line 80
    move-result-object p2

    .line 81
    .line 82
    check-cast p2, Landroidx/compose/ui/text/font/LoadedFontFamily;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/LoadedFontFamily;->m()Landroidx/compose/ui/text/font/Typeface;

    .line 86
    move-result-object p2

    .line 87
    .line 88
    check-cast p2, Landroidx/compose/ui/text/platform/AndroidTypeface;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 96
    move-result v0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->e()I

    .line 100
    move-result p1

    .line 101
    .line 102
    .line 103
    invoke-interface {p2, p4, v0, p1}, Landroidx/compose/ui/text/platform/AndroidTypeface;->a(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    :goto_1
    new-instance p2, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 107
    const/4 p4, 0x0

    .line 108
    const/4 v0, 0x2

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, p1, p4, v0, p3}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/k;)V

    .line 112
    return-object p2

    .line 113
    :cond_3
    return-object p3
.end method
