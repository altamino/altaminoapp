.class public Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FORMULA_MULTIPLIER:F = 4.5f

.field private static final FORMULA_OFFSET:F = 2.0f

.field private static final OVERLAY_ACCENT_COLOR_ALPHA:I


# instance fields
.field private final colorSurface:I

.field private final displayDensity:F

.field private final elevationOverlayAccentColor:I

.field private final elevationOverlayColor:I

.field private final elevationOverlayEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, 0x4014666666666667L    # 5.1000000000000005

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 9
    move-result-wide v0

    .line 10
    long-to-int v0, v0

    .line 11
    .line 12
    sput v0, Ll3/a;->OVERLAY_ACCENT_COLOR_ALPHA:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Ld3/b;->elevationOverlayEnabled:I

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/android/material/resources/b;->b(Landroid/content/Context;IZ)Z

    move-result v3

    sget v0, Ld3/b;->elevationOverlayColor:I

    .line 2
    invoke-static {p1, v0, v1}, Li3/a;->b(Landroid/content/Context;II)I

    move-result v4

    sget v0, Ld3/b;->elevationOverlayAccentColor:I

    .line 3
    invoke-static {p1, v0, v1}, Li3/a;->b(Landroid/content/Context;II)I

    move-result v5

    sget v0, Ld3/b;->colorSurface:I

    .line 4
    invoke-static {p1, v0, v1}, Li3/a;->b(Landroid/content/Context;II)I

    move-result v6

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v7, p1, Landroid/util/DisplayMetrics;->density:F

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v7}, Ll3/a;-><init>(ZIIIF)V

    return-void
.end method

.method public constructor <init>(ZIIIF)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/a;->elevationOverlayEnabled:Z

    iput p2, p0, Ll3/a;->elevationOverlayColor:I

    iput p3, p0, Ll3/a;->elevationOverlayAccentColor:I

    iput p4, p0, Ll3/a;->colorSurface:I

    iput p5, p0, Ll3/a;->displayDensity:F

    return-void
.end method

.method private f(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    .line 2
    const/16 v0, 0xff

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget v0, p0, Ll3/a;->colorSurface:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method


# virtual methods
.method public a(F)F
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Ll3/a;->displayDensity:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpg-float v2, v0, v1

    .line 6
    .line 7
    if-lez v2, :cond_1

    .line 8
    .line 9
    cmpg-float v2, p1, v1

    .line 10
    .line 11
    if-gtz v2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    div-float/2addr p1, v0

    .line 14
    float-to-double v0, p1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->log1p(D)D

    .line 18
    move-result-wide v0

    .line 19
    double-to-float p1, v0

    .line 20
    .line 21
    const/high16 v0, 0x40900000    # 4.5f

    .line 22
    mul-float/2addr p1, v0

    .line 23
    .line 24
    const/high16 v0, 0x40000000    # 2.0f

    .line 25
    add-float/2addr p1, v0

    .line 26
    .line 27
    const/high16 v0, 0x42c80000    # 100.0f

    .line 28
    div-float/2addr p1, v0

    .line 29
    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    :goto_0
    return v1
.end method

.method public b(IF)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Ll3/a;->a(F)F

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    const/16 v1, 0xff

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 14
    move-result p1

    .line 15
    .line 16
    iget v1, p0, Ll3/a;->elevationOverlayColor:I

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1, p2}, Li3/a;->h(IIF)I

    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x0

    .line 22
    .line 23
    cmpl-float p2, p2, v1

    .line 24
    .line 25
    if-lez p2, :cond_0

    .line 26
    .line 27
    iget p2, p0, Ll3/a;->elevationOverlayAccentColor:I

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    sget v1, Ll3/a;->OVERLAY_ACCENT_COLOR_ALPHA:I

    .line 32
    .line 33
    .line 34
    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Li3/a;->g(II)I

    .line 39
    move-result p1

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->o(II)I

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public c(IF)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Ll3/a;->elevationOverlayEnabled:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ll3/a;->f(I)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Ll3/a;->b(IF)I

    .line 14
    move-result p1

    .line 15
    :cond_0
    return p1
.end method

.method public d(F)I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Ll3/a;->colorSurface:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Ll3/a;->c(IF)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll3/a;->elevationOverlayEnabled:Z

    return v0
.end method
