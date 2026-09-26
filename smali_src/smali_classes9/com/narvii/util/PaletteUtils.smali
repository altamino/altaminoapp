.class public Lcom/narvii/util/PaletteUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method public static getColorGrayScale(I)D
    .locals 7

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    div-float/2addr p0, v1

    const-wide v3, 0x3fd322d0e5604189L    # 0.299

    float-to-double v0, v0

    mul-double/2addr v0, v3

    const-wide v3, 0x3fe2c8b439581062L    # 0.587

    float-to-double v5, v2

    mul-double/2addr v5, v3

    add-double/2addr v0, v5

    const-wide v2, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v4, p0

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static isDarkColor(I)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/util/PaletteUtils;->getColorGrayScale(I)D

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 10
    .line 11
    cmpg-double p0, v0, v2

    .line 12
    .line 13
    if-gez p0, :cond_0

    .line 14
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method public static isLightTone(Landroid/graphics/Bitmap;)Z
    .locals 4

    .line 4
    invoke-static {p0}, Landroidx/palette/graphics/Palette;->b(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Builder;->a()Landroidx/palette/graphics/Palette;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette;->g()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroidx/palette/graphics/Palette$Swatch;->c()[F

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLightTone(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/narvii/util/PaletteUtils;->isLightTone(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method
