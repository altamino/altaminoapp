.class public final Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/font/FontFamily$Resolver;


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontFamilyResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontFamilyResolver.kt\nandroidx/compose/ui/text/font/FontFamilyResolverImpl\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,253:1\n126#2,3:254\n32#2,4:257\n129#2,2:261\n37#2:263\n131#2:264\n*S KotlinDebug\n*F\n+ 1 FontFamilyResolver.kt\nandroidx/compose/ui/text/font/FontFamilyResolverImpl\n*L\n49#1:254,3\n49#1:257,4\n49#1:261,2\n49#1:263\n49#1:264\n*E\n"
.end annotation


# instance fields
.field private final createDefaultTypeface:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final platformFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/PlatformFontLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/PlatformResolveInterceptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/text/font/TypefaceRequestCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "platformFontLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformResolveInterceptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typefaceRequestCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontListFontFamilyTypefaceAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformFamilyTypefaceAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    iput-object p3, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->typefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    iput-object p4, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    iput-object p5, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    .line 2
    new-instance p1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->createDefaultTypeface:Le8/l;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 3
    sget-object p2, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->Companion:Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor$Companion;->a()Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 4
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->b()Landroidx/compose/ui/text/font/TypefaceRequestCache;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 5
    new-instance p4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    invoke-static {}, Landroidx/compose/ui/text/font/FontFamilyResolverKt;->a()Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p7, 0x2

    invoke-direct {p4, p2, p3, p7, p3}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;-><init>(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/coroutines/g;ILkotlin/jvm/internal/k;)V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 6
    new-instance p5, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    invoke-direct {p5}, Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;-><init>()V

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Le8/l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->createDefaultTypeface:Le8/l;

    .line 3
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    .line 3
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->h(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/runtime/State;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/runtime/State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            ")",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->typefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    .line 3
    .line 4
    new-instance v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->d(Landroidx/compose/ui/text/font/TypefaceRequest;Le8/l;)Landroidx/compose/runtime/State;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/runtime/State;
    .locals 8
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "II)",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fontWeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->a(Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/font/FontFamily;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->b(Landroidx/compose/ui/text/font/FontWeight;)Landroidx/compose/ui/text/font/FontWeight;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, p3}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->c(I)I

    .line 25
    move-result v4

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p4}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->d(I)I

    .line 31
    move-result v5

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v1, v0

    .line 40
    .line 41
    .line 42
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;Lkotlin/jvm/internal/k;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->h(Landroidx/compose/ui/text/font/TypefaceRequest;)Landroidx/compose/runtime/State;

    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final f()Landroidx/compose/ui/text/font/PlatformFontLoader;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    return-object v0
.end method

.method public g(Landroidx/compose/ui/text/font/FontFamily;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 13
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;

    .line 8
    .line 9
    iget v1, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/ui/text/font/FontFamily;

    .line 42
    .line 43
    iget-object v0, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    instance-of p2, p1, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 63
    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 67
    return-object p1

    .line 68
    .line 69
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->fontListFontFamilyTypefaceAdapter:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 72
    .line 73
    iput-object p0, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p1, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput v3, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$1;->label:I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1, v2, v0}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->b(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/PlatformFontLoader;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    if-ne p2, v1, :cond_4

    .line 84
    return-object v1

    .line 85
    :cond_4
    move-object v0, p0

    .line 86
    :goto_1
    move-object p2, p1

    .line 87
    .line 88
    check-cast p2, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontListFontFamily;->q()Ljava/util/List;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    new-instance v1, Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 98
    move-result v2

    .line 99
    .line 100
    .line 101
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 105
    move-result v2

    .line 106
    const/4 v3, 0x0

    .line 107
    .line 108
    :goto_2
    if-ge v3, v2, :cond_5

    .line 109
    .line 110
    .line 111
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    .line 114
    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 115
    .line 116
    new-instance v12, Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 117
    .line 118
    iget-object v5, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 119
    .line 120
    .line 121
    invoke-interface {v5, p1}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->a(Landroidx/compose/ui/text/font/FontFamily;)Landroidx/compose/ui/text/font/FontFamily;

    .line 122
    move-result-object v6

    .line 123
    .line 124
    iget-object v5, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 125
    .line 126
    .line 127
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->b()Landroidx/compose/ui/text/font/FontWeight;

    .line 128
    move-result-object v7

    .line 129
    .line 130
    .line 131
    invoke-interface {v5, v7}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->b(Landroidx/compose/ui/text/font/FontWeight;)Landroidx/compose/ui/text/font/FontWeight;

    .line 132
    move-result-object v7

    .line 133
    .line 134
    iget-object v5, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformResolveInterceptor:Landroidx/compose/ui/text/font/PlatformResolveInterceptor;

    .line 135
    .line 136
    .line 137
    invoke-interface {v4}, Landroidx/compose/ui/text/font/Font;->c()I

    .line 138
    move-result v4

    .line 139
    .line 140
    .line 141
    invoke-interface {v5, v4}, Landroidx/compose/ui/text/font/PlatformResolveInterceptor;->c(I)I

    .line 142
    move-result v8

    .line 143
    .line 144
    sget-object v4, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->a()I

    .line 148
    move-result v9

    .line 149
    .line 150
    iget-object v4, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->platformFontLoader:Landroidx/compose/ui/text/font/PlatformFontLoader;

    .line 151
    .line 152
    .line 153
    invoke-interface {v4}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 154
    move-result-object v10

    .line 155
    const/4 v11, 0x0

    .line 156
    move-object v5, v12

    .line 157
    .line 158
    .line 159
    invoke-direct/range {v5 .. v11}, Landroidx/compose/ui/text/font/TypefaceRequest;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;Lkotlin/jvm/internal/k;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v1, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    add-int/lit8 v3, v3, 0x1

    .line 165
    goto :goto_2

    .line 166
    .line 167
    :cond_5
    iget-object p1, v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->typefaceRequestCache:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    .line 168
    .line 169
    new-instance p2, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;

    .line 170
    .line 171
    .line 172
    invoke-direct {p2, v0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$preload$2;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1, p2}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->c(Ljava/util/List;Le8/l;)V

    .line 176
    .line 177
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 178
    return-object p1
.end method
