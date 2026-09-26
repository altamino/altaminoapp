.class public final Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/platform/AndroidTypeface;


# instance fields
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final nativeTypeface:Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/GenericFontFamily;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/text/font/GenericFontFamily;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "fontFamily"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/GenericFontFamily;->m()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->nativeTypeface:Landroid/graphics/Typeface;

    .line 25
    return-void
.end method

.method private final b(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;
    .locals 3

    .line 1
    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v1, 0x1c

    .line 5
    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->nativeTypeface:Landroid/graphics/Typeface;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->c(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 12
    move-result p1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v0, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->nativeTypeface:Landroid/graphics/Typeface;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 25
    move-result p1

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v2}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, p1, p2}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 39
    move-result-object p1

    .line 40
    :goto_0
    return-object p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "fontWeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/platform/AndroidGenericFontFamilyTypeface;->b(Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const-string p2, "buildStyledTypeface(fontWeight, fontStyle)"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-object p1
.end method
