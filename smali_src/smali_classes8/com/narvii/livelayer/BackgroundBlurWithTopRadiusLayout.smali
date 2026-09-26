.class public Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;
.super Lcom/github/mmin18/widget/RealtimeBlurLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    .line 7
    return-void
.end method


# virtual methods
.method protected drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    move-result v0

    .line 5
    .line 6
    new-instance v1, Landroid/graphics/Path;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 10
    .line 11
    new-instance v2, Landroid/graphics/RectF;

    .line 12
    .line 13
    iget v3, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    .line 14
    const/4 v4, -0x1

    .line 15
    const/4 v5, 0x0

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    move v3, v5

    .line 19
    goto :goto_0

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 23
    move-result v3

    .line 24
    .line 25
    iget v4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    .line 26
    sub-int/2addr v3, v4

    .line 27
    int-to-float v3, v3

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 31
    move-result v4

    .line 32
    int-to-float v4, v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 36
    move-result v6

    .line 37
    int-to-float v6, v6

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v5, v3, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 41
    .line 42
    const/16 v3, 0x8

    .line 43
    .line 44
    new-array v3, v3, [F

    .line 45
    .line 46
    iget v4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lt:I

    .line 47
    int-to-float v5, v4

    .line 48
    const/4 v6, 0x0

    .line 49
    .line 50
    aput v5, v3, v6

    .line 51
    const/4 v5, 0x1

    .line 52
    int-to-float v4, v4

    .line 53
    .line 54
    aput v4, v3, v5

    .line 55
    .line 56
    iget v4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rt:I

    .line 57
    int-to-float v5, v4

    .line 58
    const/4 v6, 0x2

    .line 59
    .line 60
    aput v5, v3, v6

    .line 61
    const/4 v5, 0x3

    .line 62
    int-to-float v4, v4

    .line 63
    .line 64
    aput v4, v3, v5

    .line 65
    .line 66
    iget v4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rb:I

    .line 67
    int-to-float v5, v4

    .line 68
    const/4 v6, 0x4

    .line 69
    .line 70
    aput v5, v3, v6

    .line 71
    const/4 v5, 0x5

    .line 72
    int-to-float v4, v4

    .line 73
    .line 74
    aput v4, v3, v5

    .line 75
    .line 76
    iget v4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lb:I

    .line 77
    int-to-float v5, v4

    .line 78
    const/4 v6, 0x6

    .line 79
    .line 80
    aput v5, v3, v6

    .line 81
    const/4 v5, 0x7

    .line 82
    int-to-float v4, v4

    .line 83
    .line 84
    aput v4, v3, v5

    .line 85
    .line 86
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 93
    .line 94
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/github/mmin18/widget/RealtimeBlurLayout;->drawBlurredBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 96
    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public setRadius(IIII)V
    .locals 0

    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lt:I

    iput p2, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rt:I

    iput p3, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->lb:I

    iput p4, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->rb:I

    return-void
.end method

.method public setTargetHeight(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->targetHeight:I

    return-void
.end method
