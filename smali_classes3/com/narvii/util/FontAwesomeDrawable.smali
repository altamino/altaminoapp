.class public Lcom/narvii/util/FontAwesomeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FontAwesomeDrawable.java"


# static fields
.field private static final DEFAULT_ICON_COLOR:I = -0x1000000

.field public static DEFAULT_ICON_SIZE:I


# instance fields
.field private mAlpha:I

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mFocalArea:F

.field private mIconString:Ljava/lang/String;

.field private mIntrinsicSize:I

.field private mKeyString:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

.field private shadowColor:I

.field private shadowDx:F

.field private shadowDy:F

.field private shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    const/high16 v0, -0x1000000

    .line 33
    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    const/16 v0, 0xff

    .line 34
    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    .line 42
    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    .line 44
    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->fontawesome_min_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    .line 47
    :cond_0
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 48
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 114
    iget-object v2, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 115
    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 118
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float v1, v1, v0

    div-float/2addr v1, v2

    .line 120
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 121
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    iget v6, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    iget v7, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    iget v8, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowRadius:F

    div-float/2addr v5, v1

    iget v6, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDx:F

    div-float/2addr v6, v1

    iget v7, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDy:F

    div-float/2addr v7, v1

    iget v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowColor:I

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 123
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    sub-float/2addr v2, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    neg-float v1, v1

    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    if-gez v0, :cond_0

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    :cond_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    if-gez v0, :cond_0

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    :cond_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFocalArea(F)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    .line 92
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setIntrinsicSize(F)V
    .locals 0

    float-to-int p1, p1

    .line 86
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setKeyString(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyString(Ljava/lang/String;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 72
    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    .line 73
    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    .line 76
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    if-eqz p1, :cond_2

    .line 79
    invoke-interface {p1}, Lcom/narvii/util/fonticon/NVTypeface;->getCharacters()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    iget-object v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/narvii/util/fonticon/NVTypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 82
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 77
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No icon match that key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShadow(FFFI)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowRadius:F

    .line 102
    iput p2, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDx:F

    .line 103
    iput p3, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDy:F

    .line 104
    iput p4, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowColor:I

    .line 105
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
