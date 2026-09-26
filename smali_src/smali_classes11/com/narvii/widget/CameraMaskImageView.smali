.class public Lcom/narvii/widget/CameraMaskImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field maskColor:I

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->CameraMaskImageView:[I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    sget p2, Lcom/narvii/lib/R$styleable;->CameraMaskImageView_maskColor:I

    .line 12
    .line 13
    const/high16 v0, 0x2b000000

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 17
    move-result p2

    .line 18
    .line 19
    iput p2, p0, Lcom/narvii/widget/CameraMaskImageView;->maskColor:I

    .line 20
    .line 21
    new-instance p2, Landroid/graphics/Paint;

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 26
    .line 27
    iput-object p2, p0, Lcom/narvii/widget/CameraMaskImageView;->paint:Landroid/graphics/Paint;

    .line 28
    .line 29
    iget v0, p0, Lcom/narvii/widget/CameraMaskImageView;->maskColor:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/graphics/RectF;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    new-instance v3, Landroid/graphics/RectF;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 40
    move-result v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    move-result v2

    .line 45
    sub-int/2addr v0, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 49
    move-result v2

    .line 50
    sub-int/2addr v0, v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 54
    move-result v2

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v3

    .line 59
    sub-int/2addr v2, v3

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 63
    move-result v3

    .line 64
    sub-int/2addr v2, v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 68
    move-result v3

    .line 69
    int-to-float v3, v3

    .line 70
    int-to-float v0, v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 74
    move-result v4

    .line 75
    sub-float/2addr v0, v4

    .line 76
    .line 77
    const/high16 v4, 0x40000000    # 2.0f

    .line 78
    div-float/2addr v0, v4

    .line 79
    add-float/2addr v3, v0

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 83
    move-result v0

    .line 84
    int-to-float v0, v0

    .line 85
    int-to-float v2, v2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 89
    move-result v5

    .line 90
    sub-float/2addr v2, v5

    .line 91
    div-float/2addr v2, v4

    .line 92
    add-float/2addr v0, v2

    .line 93
    .line 94
    new-instance v2, Landroid/graphics/RectF;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 98
    move-result v1

    .line 99
    add-float/2addr v1, v3

    .line 100
    const/4 v4, 0x0

    .line 101
    .line 102
    .line 103
    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    .line 105
    iget-object v0, p0, Lcom/narvii/widget/CameraMaskImageView;->paint:Landroid/graphics/Paint;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception p1

    .line 111
    .line 112
    const-string v0, "mask"

    .line 113
    .line 114
    .line 115
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :cond_0
    :goto_0
    return-void
.end method
