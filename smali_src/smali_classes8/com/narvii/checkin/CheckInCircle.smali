.class public Lcom/narvii/checkin/CheckInCircle;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final COLOR:I = -0xdb0200

.field private static final COLOR0:I = 0xffffff

.field private static final COLOR_HALO1:I = -0x1

.field private static final COLOR_HALO2:I = -0x1

.field private static final COLOR_HINT_BG:I = -0x60000000


# instance fields
.field private checkmark:Lcom/narvii/util/FontAwesomeDrawable;

.field public fireCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private gradient:Landroid/graphics/SweepGradient;

.field private halo:Landroid/graphics/drawable/Drawable;

.field private padding:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pressProgress:F

.field private rectf:Landroid/graphics/RectF;

.field public startCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private textHint:Landroid/view/View;

.field private time:J

.field private time1:J

.field private time2:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p2, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    new-instance p2, Landroid/graphics/RectF;

    .line 17
    .line 18
    .line 19
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    .line 20
    .line 21
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 22
    .line 23
    new-instance p2, Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 27
    .line 28
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 29
    .line 30
    new-instance p2, Landroid/graphics/Path;

    .line 31
    .line 32
    .line 33
    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 34
    .line 35
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    move-result-object p2

    .line 40
    .line 41
    .line 42
    const v0, 0x7f0d00f7

    .line 43
    const/4 v1, 0x0

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    move-result-object p2

    .line 48
    .line 49
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 50
    .line 51
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 52
    const/4 v1, -0x2

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    .line 65
    const v0, 0x7f0801e3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object p2

    .line 70
    .line 71
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 77
    .line 78
    new-instance p2, Lcom/narvii/util/FontAwesomeDrawable;

    .line 79
    .line 80
    .line 81
    const v0, 0x7f12052e

    .line 82
    .line 83
    .line 84
    invoke-direct {p2, p1, v0}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;I)V

    .line 85
    .line 86
    iput-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    .line 87
    .line 88
    .line 89
    const p1, -0xdb0200

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, p1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 93
    return-void
.end method

.method private drawHalo(Landroid/graphics/Canvas;F)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    const/high16 v1, 0x437f0000    # 255.0f

    .line 5
    mul-float/2addr p2, v1

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    mul-float/2addr p2, v1

    .line 9
    float-to-int p2, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 13
    .line 14
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 17
    .line 18
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 19
    neg-int v1, v1

    .line 20
    .line 21
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 22
    neg-int v0, v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    move-result v2

    .line 27
    .line 28
    iget-object v3, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 29
    .line 30
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 31
    add-int/2addr v2, v3

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v3

    .line 36
    .line 37
    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->padding:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 40
    add-int/2addr v3, v4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->halo:Landroid/graphics/drawable/Drawable;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method private drawHint(Landroid/graphics/Canvas;FF)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v1, p2, v0

    .line 4
    .line 5
    if-lez v1, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 8
    .line 9
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    .line 14
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/high16 v2, -0x60000000

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    .line 26
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, p2

    .line 29
    float-to-int v3, v3

    .line 30
    .line 31
    .line 32
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    .line 33
    move-result v4

    .line 34
    .line 35
    .line 36
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 37
    move-result v5

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    .line 41
    move-result v2

    .line 42
    .line 43
    .line 44
    invoke-static {v3, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    .line 50
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    cmpg-float v2, p3, v1

    .line 60
    .line 61
    const/high16 v3, 0x437f0000    # 255.0f

    .line 62
    .line 63
    if-gez v2, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    move-result v2

    .line 68
    .line 69
    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 70
    .line 71
    mul-float v5, p2, v3

    .line 72
    sub-float/2addr v1, p3

    .line 73
    mul-float/2addr v5, v1

    .line 74
    float-to-int v1, v5

    .line 75
    .line 76
    const/16 v5, 0x1f

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v4, v1, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 80
    .line 81
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    .line 88
    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 92
    move-result v4

    .line 93
    int-to-float v4, v4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    .line 98
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    .line 106
    :cond_0
    cmpl-float v0, p3, v0

    .line 107
    .line 108
    if-lez v0, :cond_1

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 112
    move-result v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 116
    move-result v1

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    .line 119
    mul-float/2addr p2, v3

    .line 120
    mul-float/2addr p2, p3

    .line 121
    float-to-int p2, p2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setAlpha(I)V

    .line 125
    .line 126
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    .line 127
    .line 128
    div-int/lit8 p3, v0, 0x3

    .line 129
    .line 130
    div-int/lit8 v2, v1, 0x3

    .line 131
    .line 132
    mul-int/lit8 v0, v0, 0x2

    .line 133
    .line 134
    div-int/lit8 v0, v0, 0x3

    .line 135
    .line 136
    mul-int/lit8 v1, v1, 0x2

    .line 137
    .line 138
    div-int/lit8 v1, v1, 0x3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    .line 143
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->checkmark:Lcom/narvii/util/FontAwesomeDrawable;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, p1}, Lcom/narvii/util/FontAwesomeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 150
    :cond_2
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 10
    const/4 v1, 0x0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v1, 0x437f0000    # 255.0f

    .line 18
    mul-float/2addr p3, v1

    .line 19
    float-to-int p3, p3

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 27
    move-result v2

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 31
    move-result p2

    .line 32
    .line 33
    .line 34
    invoke-static {p3, v1, v2, p2}, Landroid/graphics/Color;->argb(IIII)I

    .line 35
    move-result p2

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    .line 40
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 41
    .line 42
    iget-object p3, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 46
    return-void
.end method

.method private drawSweep(Landroid/graphics/Canvas;FF)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    div-int/lit8 v2, v0, 0x2

    .line 11
    .line 12
    div-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 16
    move-result v4

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v5

    .line 21
    .line 22
    div-int/lit8 v5, v5, 0x2

    .line 23
    sub-int/2addr v5, v4

    .line 24
    .line 25
    iget-object v6, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 29
    const/4 v6, 0x0

    .line 30
    .line 31
    cmpg-float v7, p2, v6

    .line 32
    .line 33
    if-gtz v7, :cond_0

    .line 34
    return-void

    .line 35
    .line 36
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 37
    .line 38
    cmpg-float v7, p2, v7

    .line 39
    .line 40
    const/high16 v8, 0x43b40000    # 360.0f

    .line 41
    .line 42
    if-gez v7, :cond_1

    .line 43
    .line 44
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 45
    .line 46
    sget-object v9, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v9}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 50
    .line 51
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 52
    add-int/2addr v5, v2

    .line 53
    int-to-float v9, v5

    .line 54
    int-to-float v10, v3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 58
    .line 59
    iget-object v7, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 60
    add-int/2addr v5, v4

    .line 61
    int-to-float v5, v5

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 65
    .line 66
    iget-object v5, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 67
    .line 68
    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 69
    .line 70
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 71
    int-to-float v0, v0

    .line 72
    .line 73
    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 74
    int-to-float v0, v1

    .line 75
    .line 76
    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 77
    .line 78
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 79
    .line 80
    const/high16 v1, -0x3c4c0000    # -360.0f

    .line 81
    mul-float/2addr v1, p2

    .line 82
    const/4 v7, 0x0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v5, v6, v1, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 88
    int-to-float v4, v4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 94
    .line 95
    iget-object v4, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 96
    .line 97
    mul-float v5, p2, v8

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4, v1, v5, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 101
    .line 102
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    :cond_1
    iget-object v5, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 109
    .line 110
    iput v6, v5, Landroid/graphics/RectF;->left:F

    .line 111
    .line 112
    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 113
    int-to-float v0, v0

    .line 114
    .line 115
    iput v0, v5, Landroid/graphics/RectF;->right:F

    .line 116
    int-to-float v0, v1

    .line 117
    .line 118
    iput v0, v5, Landroid/graphics/RectF;->bottom:F

    .line 119
    .line 120
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 121
    .line 122
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 126
    .line 127
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 128
    int-to-float v1, v4

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 132
    .line 133
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 134
    .line 135
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->rectf:Landroid/graphics/RectF;

    .line 136
    .line 137
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 141
    .line 142
    :goto_0
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 143
    .line 144
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    .line 149
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/narvii/checkin/CheckInCircle;->gradient:Landroid/graphics/SweepGradient;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 155
    .line 156
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 157
    .line 158
    .line 159
    const v1, -0xdb0200

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    add-float/2addr p2, p3

    .line 167
    mul-float/2addr p2, v8

    .line 168
    .line 169
    const/high16 p3, -0x3d4c0000    # -90.0f

    .line 170
    add-float/2addr p2, p3

    .line 171
    int-to-float p3, v2

    .line 172
    int-to-float v0, v3

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    .line 177
    iget-object p2, p0, Lcom/narvii/checkin/CheckInCircle;->path:Landroid/graphics/Path;

    .line 178
    .line 179
    iget-object p3, p0, Lcom/narvii/checkin/CheckInCircle;->paint:Landroid/graphics/Paint;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 186
    return-void
.end method

.method private mcolor(IIF)I
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    sub-float/2addr v1, p3

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    mul-float/2addr v2, p3

    .line 16
    add-float/2addr v0, v2

    .line 17
    float-to-int v0, v0

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 21
    move-result v2

    .line 22
    int-to-float v2, v2

    .line 23
    mul-float/2addr v2, v1

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 27
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    mul-float/2addr v3, p3

    .line 30
    add-float/2addr v2, v3

    .line 31
    float-to-int v2, v2

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 35
    move-result v3

    .line 36
    int-to-float v3, v3

    .line 37
    mul-float/2addr v3, v1

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 41
    move-result v4

    .line 42
    int-to-float v4, v4

    .line 43
    mul-float/2addr v4, p3

    .line 44
    add-float/2addr v3, v4

    .line 45
    float-to-int v3, v3

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 49
    move-result p1

    .line 50
    int-to-float p1, p1

    .line 51
    mul-float/2addr p1, v1

    .line 52
    .line 53
    .line 54
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    .line 55
    move-result p2

    .line 56
    int-to-float p2, p2

    .line 57
    mul-float/2addr p2, p3

    .line 58
    add-float/2addr p1, p2

    .line 59
    float-to-int p1, p1

    .line 60
    .line 61
    .line 62
    invoke-static {p1, v0, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 63
    move-result p1

    .line 64
    return p1
.end method


# virtual methods
.method public fail()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0x14

    .line 3
    .line 4
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 14
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    .line 7
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 11
    move-result-wide v2

    .line 12
    .line 13
    iget v4, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 14
    const/4 v5, 0x1

    .line 15
    .line 16
    const/high16 v6, 0x3e000000    # 0.125f

    .line 17
    .line 18
    const/16 v7, 0xa

    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v10, -0x2

    .line 21
    const/4 v11, 0x0

    .line 22
    .line 23
    const/high16 v12, 0x3f800000    # 1.0f

    .line 24
    .line 25
    if-eq v4, v5, :cond_e

    .line 26
    .line 27
    if-ne v4, v8, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    const/4 v8, -0x1

    .line 32
    .line 33
    if-eq v4, v8, :cond_b

    .line 34
    .line 35
    if-ne v4, v10, :cond_1

    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    const/high16 v6, 0x44160000    # 600.0f

    .line 40
    .line 41
    if-ne v4, v7, :cond_6

    .line 42
    .line 43
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time1:J

    .line 44
    .line 45
    sub-long v4, v2, v4

    .line 46
    .line 47
    const-wide/16 v9, 0x1f4

    .line 48
    .line 49
    cmp-long v7, v4, v9

    .line 50
    .line 51
    if-lez v7, :cond_2

    .line 52
    move v13, v12

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    long-to-float v13, v4

    .line 55
    mul-float/2addr v13, v12

    .line 56
    .line 57
    const/high16 v14, 0x43fa0000    # 500.0f

    .line 58
    div-float/2addr v13, v14

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-direct {v0, v1, v13, v11}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 62
    .line 63
    iget-wide v13, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 64
    sub-long/2addr v2, v13

    .line 65
    long-to-float v2, v2

    .line 66
    mul-float/2addr v2, v12

    .line 67
    div-float/2addr v2, v6

    .line 68
    .line 69
    cmpg-float v3, v2, v12

    .line 70
    .line 71
    if-gez v3, :cond_3

    .line 72
    float-to-double v2, v2

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    const-wide v13, 0x3ff999999999999aL    # 1.6

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->pow(DD)D

    .line 81
    move-result-wide v2

    .line 82
    double-to-float v2, v2

    .line 83
    .line 84
    .line 85
    :cond_3
    invoke-direct {v0, v1, v12, v2}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 86
    .line 87
    const-wide/16 v2, 0xfa

    .line 88
    .line 89
    cmp-long v2, v4, v2

    .line 90
    .line 91
    const/high16 v3, 0x437a0000    # 250.0f

    .line 92
    .line 93
    if-gtz v2, :cond_4

    .line 94
    long-to-float v2, v4

    .line 95
    mul-float/2addr v2, v12

    .line 96
    div-float/2addr v2, v3

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_4
    if-gez v7, :cond_5

    .line 103
    sub-long/2addr v9, v4

    .line 104
    long-to-float v2, v9

    .line 105
    mul-float/2addr v2, v12

    .line 106
    div-float/2addr v2, v3

    .line 107
    .line 108
    .line 109
    invoke-direct {v0, v1, v8, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_6
    const/16 v7, 0x14

    .line 117
    .line 118
    if-ne v4, v7, :cond_13

    .line 119
    .line 120
    iget-wide v13, v0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    .line 121
    .line 122
    sub-long v13, v2, v13

    .line 123
    .line 124
    const-wide/16 v15, 0x12c

    .line 125
    .line 126
    cmp-long v4, v13, v15

    .line 127
    .line 128
    const/high16 v7, 0x43c80000    # 400.0f

    .line 129
    .line 130
    const-wide/16 v15, 0x320

    .line 131
    .line 132
    if-gez v4, :cond_7

    .line 133
    long-to-float v4, v13

    .line 134
    mul-float/2addr v4, v12

    .line 135
    .line 136
    const/high16 v10, 0x43960000    # 300.0f

    .line 137
    div-float/2addr v4, v10

    .line 138
    .line 139
    .line 140
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    .line 141
    move-result v4

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1, v12, v4}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_7
    cmp-long v4, v13, v15

    .line 148
    .line 149
    if-gez v4, :cond_8

    .line 150
    .line 151
    sub-long v8, v15, v13

    .line 152
    long-to-float v4, v8

    .line 153
    mul-float/2addr v4, v12

    .line 154
    div-float/2addr v4, v7

    .line 155
    .line 156
    .line 157
    invoke-static {v12, v4}, Ljava/lang/Math;->min(FF)F

    .line 158
    move-result v4

    .line 159
    .line 160
    .line 161
    invoke-direct {v0, v1, v4, v12}, Lcom/narvii/checkin/CheckInCircle;->drawHint(Landroid/graphics/Canvas;FF)V

    .line 162
    .line 163
    :cond_8
    :goto_2
    const-wide/16 v8, 0x190

    .line 164
    .line 165
    cmp-long v4, v13, v8

    .line 166
    .line 167
    if-gez v4, :cond_9

    .line 168
    .line 169
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 170
    sub-long/2addr v2, v4

    .line 171
    .line 172
    const-wide/16 v4, 0x258

    .line 173
    rem-long/2addr v2, v4

    .line 174
    long-to-float v2, v2

    .line 175
    mul-float/2addr v2, v12

    .line 176
    div-float/2addr v2, v6

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, v1, v12, v2}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 180
    long-to-float v2, v13

    .line 181
    mul-float/2addr v2, v12

    .line 182
    div-float/2addr v2, v7

    .line 183
    .line 184
    const/high16 v3, 0x40000000    # 2.0f

    .line 185
    .line 186
    mul-float v9, v2, v3

    .line 187
    sub-float/2addr v9, v12

    .line 188
    .line 189
    .line 190
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 191
    move-result v3

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, v1, v3}, Lcom/narvii/checkin/CheckInCircle;->drawHalo(Landroid/graphics/Canvas;F)V

    .line 195
    const/4 v3, -0x1

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, v1, v3, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 199
    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 202
    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :cond_9
    cmp-long v2, v13, v15

    .line 206
    .line 207
    if-gez v2, :cond_a

    .line 208
    sub-long/2addr v13, v8

    .line 209
    long-to-float v2, v13

    .line 210
    mul-float/2addr v2, v12

    .line 211
    div-float/2addr v2, v7

    .line 212
    .line 213
    sub-float v2, v12, v2

    .line 214
    .line 215
    const/high16 v3, 0x40000000    # 2.0f

    .line 216
    .line 217
    mul-float v9, v2, v3

    .line 218
    sub-float/2addr v9, v12

    .line 219
    .line 220
    .line 221
    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    .line 222
    move-result v3

    .line 223
    .line 224
    .line 225
    invoke-direct {v0, v1, v3}, Lcom/narvii/checkin/CheckInCircle;->drawHalo(Landroid/graphics/Canvas;F)V

    .line 226
    const/4 v3, -0x1

    .line 227
    .line 228
    .line 229
    invoke-direct {v0, v1, v3, v2}, Lcom/narvii/checkin/CheckInCircle;->drawOval(Landroid/graphics/Canvas;IF)V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 233
    .line 234
    goto/16 :goto_6

    .line 235
    .line 236
    :cond_a
    iput v5, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_b
    :goto_3
    iget-wide v7, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 241
    .line 242
    sub-long v7, v2, v7

    .line 243
    long-to-float v7, v7

    .line 244
    mul-float/2addr v7, v12

    .line 245
    .line 246
    if-ne v4, v10, :cond_c

    .line 247
    .line 248
    const/16 v4, 0x5dc

    .line 249
    goto :goto_4

    .line 250
    .line 251
    :cond_c
    const/16 v4, 0x1f4

    .line 252
    :goto_4
    int-to-float v4, v4

    .line 253
    div-float/2addr v7, v4

    .line 254
    .line 255
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 256
    .line 257
    .line 258
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    .line 259
    move-result v2

    .line 260
    .line 261
    .line 262
    invoke-static {v11, v2}, Ljava/lang/Math;->max(FF)F

    .line 263
    move-result v2

    .line 264
    .line 265
    iget v3, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 266
    sub-float/2addr v3, v2

    .line 267
    .line 268
    iput v3, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 269
    .line 270
    .line 271
    invoke-direct {v0, v1, v3, v11}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 272
    .line 273
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 274
    .line 275
    cmpg-float v1, v1, v11

    .line 276
    .line 277
    if-gtz v1, :cond_d

    .line 278
    .line 279
    iput v11, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 280
    .line 281
    iput v5, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 282
    .line 283
    iget-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    .line 284
    .line 285
    if-eqz v1, :cond_13

    .line 286
    .line 287
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 288
    .line 289
    .line 290
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 291
    goto :goto_6

    .line 292
    .line 293
    .line 294
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 295
    goto :goto_6

    .line 296
    .line 297
    :cond_e
    :goto_5
    iget-wide v4, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 298
    .line 299
    sub-long v4, v2, v4

    .line 300
    long-to-float v4, v4

    .line 301
    mul-float/2addr v4, v12

    .line 302
    .line 303
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 304
    div-float/2addr v4, v5

    .line 305
    .line 306
    iget v5, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 307
    .line 308
    .line 309
    const v9, 0x3e4ccccd    # 0.2f

    .line 310
    .line 311
    cmpg-float v5, v5, v9

    .line 312
    .line 313
    if-gez v5, :cond_f

    .line 314
    .line 315
    const/high16 v5, 0x40000000    # 2.0f

    .line 316
    mul-float/2addr v4, v5

    .line 317
    .line 318
    :cond_f
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 319
    .line 320
    .line 321
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    .line 322
    move-result v4

    .line 323
    .line 324
    .line 325
    invoke-static {v11, v4}, Ljava/lang/Math;->max(FF)F

    .line 326
    move-result v4

    .line 327
    .line 328
    iget v5, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 329
    .line 330
    const/high16 v6, 0x3f000000    # 0.5f

    .line 331
    .line 332
    cmpl-float v6, v5, v6

    .line 333
    .line 334
    if-lez v6, :cond_10

    .line 335
    .line 336
    const/high16 v6, 0x3fa00000    # 1.25f

    .line 337
    sub-float/2addr v6, v5

    .line 338
    .line 339
    .line 340
    const v13, 0x3faaaaab

    .line 341
    mul-float/2addr v6, v13

    .line 342
    mul-float/2addr v4, v6

    .line 343
    :cond_10
    add-float/2addr v5, v4

    .line 344
    .line 345
    iput v5, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v1, v5, v11}, Lcom/narvii/checkin/CheckInCircle;->drawSweep(Landroid/graphics/Canvas;FF)V

    .line 349
    .line 350
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 351
    .line 352
    if-ne v1, v8, :cond_11

    .line 353
    .line 354
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 355
    .line 356
    cmpl-float v1, v1, v9

    .line 357
    .line 358
    if-ltz v1, :cond_11

    .line 359
    .line 360
    iput v10, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 364
    goto :goto_6

    .line 365
    .line 366
    :cond_11
    iget v1, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 367
    .line 368
    cmpl-float v1, v1, v12

    .line 369
    .line 370
    if-ltz v1, :cond_12

    .line 371
    .line 372
    iput v11, v0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 373
    .line 374
    iput v7, v0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 375
    .line 376
    iput-wide v2, v0, Lcom/narvii/checkin/CheckInCircle;->time1:J

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 380
    .line 381
    iget-object v1, v0, Lcom/narvii/checkin/CheckInCircle;->fireCallback:Lcom/narvii/util/Callback;

    .line 382
    .line 383
    if-eqz v1, :cond_13

    .line 384
    .line 385
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 386
    .line 387
    .line 388
    invoke-interface {v1, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 389
    goto :goto_6

    .line 390
    .line 391
    .line 392
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 393
    :cond_13
    :goto_6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/SweepGradient;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result p2

    .line 10
    .line 11
    div-int/lit8 p2, p2, 0x2

    .line 12
    int-to-float p2, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 16
    move-result p3

    .line 17
    .line 18
    div-int/lit8 p3, p3, 0x2

    .line 19
    int-to-float p3, p3

    .line 20
    .line 21
    .line 22
    const p4, 0xffffff

    .line 23
    .line 24
    .line 25
    const p5, -0xdb0200

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 29
    .line 30
    iput-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->gradient:Landroid/graphics/SweepGradient;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    move-result p3

    .line 41
    sub-int/2addr p2, p3

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 45
    move-result p3

    .line 46
    sub-int/2addr p2, p3

    .line 47
    .line 48
    const/high16 p3, 0x40000000    # 2.0f

    .line 49
    .line 50
    .line 51
    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 52
    move-result p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 56
    move-result p4

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 60
    move-result p5

    .line 61
    sub-int/2addr p4, p5

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 65
    move-result p5

    .line 66
    sub-int/2addr p4, p5

    .line 67
    .line 68
    .line 69
    invoke-static {p4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result p3

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 74
    .line 75
    iget-object p1, p0, Lcom/narvii/checkin/CheckInCircle;->textHint:Landroid/view/View;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 79
    move-result p2

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 83
    move-result p3

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 87
    move-result p4

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 91
    move-result p5

    .line 92
    sub-int/2addr p4, p5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 96
    move-result p5

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 100
    move-result v0

    .line 101
    sub-int/2addr p5, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 105
    return-void
.end method

.method public press()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    :goto_0
    iput v1, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    iput v2, p0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/checkin/CheckInCircle;->startCallback:Lcom/narvii/util/Callback;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 38
    const/4 v2, 0x2

    .line 39
    .line 40
    if-ne v0, v2, :cond_2

    .line 41
    .line 42
    iput v1, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 52
    :cond_2
    return-void
.end method

.method public unpress()Z
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/checkin/CheckInCircle;->pressProgress:F

    .line 8
    .line 9
    .line 10
    const v2, 0x3e4ccccd    # 0.2f

    .line 11
    .line 12
    cmpg-float v0, v0, v2

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    const/4 v0, 0x2

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/narvii/checkin/CheckInCircle;->state:I

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time:J

    .line 28
    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    iput-wide v2, p0, Lcom/narvii/checkin/CheckInCircle;->time2:J

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 35
    return v1

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    return v0
.end method
