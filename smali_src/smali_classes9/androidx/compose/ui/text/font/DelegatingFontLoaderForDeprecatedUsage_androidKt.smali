.class public final Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/text/font/Font$ResourceLoader;)Landroidx/compose/ui/text/font/FontFamily$Resolver;
    .locals 9
    .param p0    # Landroidx/compose/ui/text/font/Font$ResourceLoader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "fontResourceLoader"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, p0}, Landroidx/compose/ui/text/font/DelegatingFontLoaderForDeprecatedUsage;-><init>(Landroidx/compose/ui/text/font/Font$ResourceLoader;)V

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    .line 18
    const/16 v7, 0x1e

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v1, v0

    .line 21
    .line 22
    .line 23
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;ILkotlin/jvm/internal/k;)V

    .line 24
    return-object v0
.end method
