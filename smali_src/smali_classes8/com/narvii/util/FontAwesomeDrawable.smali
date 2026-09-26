.class public Lcom/narvii/util/FontAwesomeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/narvii/lib/R$dimen;->fontawesome_min_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    .line 3
    :cond_0
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    int-to-float v0, v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result v1

    .line 27
    int-to-float v1, v1

    .line 28
    .line 29
    iget v2, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    .line 30
    mul-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    .line 37
    move-result v2

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    .line 43
    move-result v3

    .line 44
    sub-float/2addr v2, v3

    .line 45
    .line 46
    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 52
    move-result v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 60
    move-result v5

    .line 61
    .line 62
    div-int/lit8 v6, v1, 0x2

    .line 63
    sub-int/2addr v5, v6

    .line 64
    int-to-float v5, v5

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 68
    move-result v0

    .line 69
    sub-int/2addr v0, v6

    .line 70
    int-to-float v0, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    .line 75
    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    int-to-float v1, v1

    .line 77
    mul-float/2addr v1, v0

    .line 78
    div-float/2addr v1, v2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 84
    .line 85
    iget v5, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    .line 86
    .line 87
    iget v6, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    .line 88
    .line 89
    .line 90
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 91
    move-result v6

    .line 92
    .line 93
    iget v7, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    .line 94
    .line 95
    .line 96
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    .line 97
    move-result v7

    .line 98
    .line 99
    iget v8, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    .line 100
    .line 101
    .line 102
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 103
    move-result v8

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 107
    move-result v5

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 113
    .line 114
    iget v5, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowRadius:F

    .line 115
    div-float/2addr v5, v1

    .line 116
    .line 117
    iget v6, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDx:F

    .line 118
    div-float/2addr v6, v1

    .line 119
    .line 120
    iget v7, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDy:F

    .line 121
    div-float/2addr v7, v1

    .line 122
    .line 123
    iget v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowColor:I

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 127
    .line 128
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    .line 129
    sub-float/2addr v2, v3

    .line 130
    .line 131
    const/high16 v1, 0x40000000    # 2.0f

    .line 132
    div-float/2addr v2, v1

    .line 133
    .line 134
    iget-object v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    .line 138
    move-result v1

    .line 139
    neg-float v1, v1

    .line 140
    .line 141
    iget-object v3, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    if-gez v0, :cond_0

    sget v0, Lcom/narvii/util/FontAwesomeDrawable;->DEFAULT_ICON_SIZE:I

    :cond_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

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

    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mAlpha:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mColor:I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public setFocalArea(F)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mFocalArea:F

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 6
    return-void
.end method

.method public setIntrinsicSize(F)V
    .locals 0

    .line 1
    float-to-int p1, p1

    .line 2
    .line 3
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIntrinsicSize:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    return-void
.end method

.method public setKeyString(I)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setKeyString(Ljava/lang/String;)V

    return-void
.end method

.method public setKeyString(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/narvii/util/fonticon/FontAwesomeUtil;->getNvTypeface(Ljava/lang/String;)Lcom/narvii/util/fonticon/NVTypeface;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lcom/narvii/util/fonticon/NVTypeface;->getCharacters()Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mKeyString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mIconString:Ljava/lang/String;

    iget-object p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/narvii/util/FontAwesomeDrawable;->mTypeface:Lcom/narvii/util/fonticon/NVTypeface;

    iget-object v1, p0, Lcom/narvii/util/FontAwesomeDrawable;->mContext:Landroid/content/Context;

    .line 6
    invoke-interface {v0, v1}, Lcom/narvii/util/fonticon/NVTypeface;->getTypeface(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 8
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

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowRadius:F

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDx:F

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowDy:F

    .line 7
    .line 8
    iput p4, p0, Lcom/narvii/util/FontAwesomeDrawable;->shadowColor:I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 12
    return-void
.end method
