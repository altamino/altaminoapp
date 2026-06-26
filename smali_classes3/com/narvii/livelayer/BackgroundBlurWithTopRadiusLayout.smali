.class public Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;
.super Lcom/github/mmin18/widget/RealtimeBlurLayout;
.source "BackgroundBlurWithTopRadiusLayout.java"


# static fields
.field private static final UNSPECIFIC_TARGET_HEIGHT:I = -0x1


# instance fields
.field private lb:I

.field private lt:I

.field private rb:I

.field private rt:I

.field private targetHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    return-void
.end method


# virtual methods
.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 9

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 49
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    if-ne v7, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iget v7, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v5, v4, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v4, 0x8

    new-array v4, v4, [F

    iget v5, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lt:I

    int-to-float v7, v5

    aput v7, v4, v2

    int-to-float v2, v5

    aput v2, v4, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rt:I

    int-to-float v5, v2

    aput v5, v4, v1

    const/4 v1, 0x3

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rb:I

    int-to-float v5, v2

    aput v5, v4, v1

    const/4 v1, 0x5

    int-to-float v2, v2

    aput v2, v4, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lb:I

    int-to-float v5, v2

    aput v5, v4, v1

    const/4 v1, 0x7

    int-to-float v2, v2

    aput v2, v4, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v6, v4, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_3

    .line 52
    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v5, v1, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 55
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    if-eqz v3, :cond_4

    .line 57
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lt:I

    .line 33
    iput p2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rt:I

    .line 34
    iput p3, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lb:I

    .line 35
    iput p4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rb:I

    return-void
.end method

.method public setTargetHeight(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    return-void
.end method
