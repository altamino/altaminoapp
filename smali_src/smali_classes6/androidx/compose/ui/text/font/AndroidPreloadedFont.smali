.class public abstract Landroidx/compose/ui/text/font/AndroidPreloadedFont;
.super Landroidx/compose/ui/text/font/AndroidFont;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->b()I

    .line 6
    move-result v0

    .line 7
    .line 8
    sget-object v1, Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;->INSTANCE:Landroidx/compose/ui/text/font/AndroidPreloadedFontTypefaceLoader;

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/k;)V

    .line 13
    return-void
.end method


# virtual methods
.method public abstract e()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract f()Landroid/graphics/Typeface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
