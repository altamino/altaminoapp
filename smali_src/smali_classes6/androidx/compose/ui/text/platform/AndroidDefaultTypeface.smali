.class public final Landroidx/compose/ui/text/platform/AndroidDefaultTypeface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/platform/AndroidTypeface;


# instance fields
.field private final fontFamily:Landroidx/compose/ui/text/font/FontFamily;
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
    sget-object v0, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontFamily$Companion;->b()Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/ui/text/platform/AndroidDefaultTypeface;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;
    .locals 2
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
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v0, 0x1c

    .line 10
    .line 11
    if-ge p3, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->c(Landroidx/compose/ui/text/font/FontWeight;I)I

    .line 15
    move-result p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string p2, "{\n            Typeface.d\u2026)\n            )\n        }"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object p3, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    .line 28
    .line 29
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 30
    .line 31
    const-string v1, "DEFAULT"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/FontWeight;->k()I

    .line 38
    move-result p1

    .line 39
    .line 40
    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontStyle$Companion;->a()I

    .line 44
    move-result v1

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v1}, Landroidx/compose/ui/text/font/FontStyle;->f(II)Z

    .line 48
    move-result p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, v0, p1, p2}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 52
    move-result-object p1

    .line 53
    :goto_0
    return-object p1
.end method
