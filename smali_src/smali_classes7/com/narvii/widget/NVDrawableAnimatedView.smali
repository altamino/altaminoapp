.class public Lcom/narvii/widget/NVDrawableAnimatedView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/NVDrawableAnimatedView$Layer;,
        Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;,
        Lcom/narvii/widget/NVDrawableAnimatedView$LayerScaleType;,
        Lcom/narvii/widget/NVDrawableAnimatedView$AnimationType;
    }
.end annotation


# static fields
.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_END:I = 0x10

.field public static final ALIGN_START:I = 0x8

.field public static final ALIGN_TOP:I = 0x2

.field public static final CENTER:I = 0x20

.field public static final CENTER_CROP:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0x80

.field public static final CENTER_INSIDE:I = 0x2

.field public static final CENTER_VERTICAL:I = 0x40

.field public static final FILL_PARENT:I = 0x1

.field public static final FITXY:I = 0x1

.field public static final NO_ANIMATION:I = 0x0

.field public static final NO_SCALE:I = 0x4

.field public static final ROTATE_ANTICLOCKWISE:I = 0x6

.field public static final ROTATE_CLOCKWISE:I = 0x5

.field public static final SCALE:I = 0x7

.field public static final TRANSLATE_DOWN:I = 0x4

.field public static final TRANSLATE_END:I = 0x2

.field public static final TRANSLATE_START:I = 0x1

.field public static final TRANSLATE_UP:I = 0x3


# instance fields
.field private layerInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private vHeight:I

.field private vWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 12
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->init()V

    return-void
.end method

.method private configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 3
    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    .line 6
    cmpl-float v0, v0, v1

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 11
    .line 12
    if-eqz v0, :cond_7

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eq v0, v1, :cond_5

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/4 v4, 0x3

    .line 22
    .line 23
    if-eq v0, v4, :cond_4

    .line 24
    const/4 v4, 0x4

    .line 25
    .line 26
    if-ne v0, v4, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v4, 0x5

    .line 29
    .line 30
    if-eq v0, v4, :cond_3

    .line 31
    const/4 v4, 0x6

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v1, 0x7

    .line 36
    .line 37
    if-ne v0, v1, :cond_6

    .line 38
    .line 39
    new-array v0, v3, [F

    .line 40
    .line 41
    .line 42
    fill-array-data v0, :array_0

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 49
    .line 50
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    .line 52
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 53
    goto :goto_3

    .line 54
    .line 55
    :cond_3
    :goto_0
    new-array v0, v3, [F

    .line 56
    .line 57
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 58
    .line 59
    aput v3, v0, v2

    .line 60
    .line 61
    const/high16 v2, 0x43b40000    # 360.0f

    .line 62
    add-float/2addr v3, v2

    .line 63
    .line 64
    aput v3, v0, v1

    .line 65
    .line 66
    .line 67
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 68
    move-result-object v0

    .line 69
    .line 70
    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 71
    .line 72
    iput v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 73
    goto :goto_3

    .line 74
    .line 75
    :cond_4
    :goto_1
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 76
    .line 77
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 78
    sub-int/2addr v0, v1

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 82
    move-result v0

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    .line 87
    filled-new-array {v2, v0}, [I

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    iput-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 95
    int-to-float v0, v0

    .line 96
    .line 97
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 98
    goto :goto_3

    .line 99
    .line 100
    :cond_5
    :goto_2
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 101
    .line 102
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 103
    sub-int/2addr v0, v1

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    .line 112
    filled-new-array {v2, v0}, [I

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    iput-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 120
    int-to-float v0, v0

    .line 121
    .line 122
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 123
    .line 124
    :cond_6
    :goto_3
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->duration:I

    .line 129
    int-to-long v1, v1

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 133
    .line 134
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 135
    .line 136
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatMode:I

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 140
    .line 141
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 142
    .line 143
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->repeatCount:I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 147
    .line 148
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 149
    .line 150
    iget-wide v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->startDelay:J

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 154
    .line 155
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 156
    .line 157
    iget-object v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->interpolator:Landroid/animation/TimeInterpolator;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    .line 162
    :cond_7
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 163
    .line 164
    if-eqz v0, :cond_8

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 168
    .line 169
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 173
    .line 174
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 175
    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 179
    .line 180
    new-instance v1, Lcom/narvii/widget/NVDrawableAnimatedView$1;

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView$1;-><init>(Lcom/narvii/widget/NVDrawableAnimatedView;Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 187
    .line 188
    iget-object p1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 192
    :cond_8
    return-void

    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private configLayerInfo(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V
    .locals 10
    .param p1    # Lcom/narvii/widget/NVDrawableAnimatedView$Layer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    const/4 v4, 0x1

    .line 7
    .line 8
    if-nez v0, :cond_6

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    iget v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->resId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 28
    move-result v5

    .line 29
    .line 30
    iput v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    move-result v5

    .line 35
    .line 36
    iput v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 37
    .line 38
    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 39
    .line 40
    if-eq v6, v4, :cond_1

    .line 41
    .line 42
    if-ne v6, v3, :cond_0

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_0
    :goto_0
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :cond_1
    :goto_1
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 49
    .line 50
    iget v8, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 51
    .line 52
    if-ge v7, v8, :cond_2

    .line 53
    goto :goto_0

    .line 54
    .line 55
    :cond_2
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 56
    .line 57
    :goto_2
    if-eq v6, v2, :cond_4

    .line 58
    .line 59
    if-ne v6, v1, :cond_3

    .line 60
    goto :goto_4

    .line 61
    .line 62
    :cond_3
    :goto_3
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 63
    goto :goto_5

    .line 64
    .line 65
    :cond_4
    :goto_4
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 66
    .line 67
    if-ge v5, v6, :cond_5

    .line 68
    goto :goto_3

    .line 69
    .line 70
    :cond_5
    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 71
    .line 72
    :goto_5
    new-instance v6, Landroid/graphics/BitmapShader;

    .line 73
    .line 74
    .line 75
    invoke-direct {v6, v0, v7, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 76
    .line 77
    iput-object v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 78
    .line 79
    :cond_6
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 80
    const/4 v5, 0x5

    .line 81
    const/4 v6, 0x0

    .line 82
    .line 83
    const/high16 v7, 0x3f800000    # 1.0f

    .line 84
    .line 85
    if-eq v0, v5, :cond_c

    .line 86
    const/4 v5, 0x6

    .line 87
    .line 88
    if-ne v0, v5, :cond_7

    .line 89
    goto :goto_8

    .line 90
    .line 91
    :cond_7
    if-eq v0, v4, :cond_b

    .line 92
    .line 93
    if-ne v0, v3, :cond_8

    .line 94
    goto :goto_7

    .line 95
    .line 96
    :cond_8
    if-eq v0, v2, :cond_a

    .line 97
    .line 98
    if-ne v0, v1, :cond_9

    .line 99
    goto :goto_6

    .line 100
    :cond_9
    const/4 v1, 0x7

    .line 101
    .line 102
    if-ne v0, v1, :cond_d

    .line 103
    .line 104
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 105
    .line 106
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleX:F

    .line 107
    .line 108
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 109
    .line 110
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->baseScaleY:F

    .line 111
    .line 112
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 113
    .line 114
    mul-float v3, v0, v2

    .line 115
    .line 116
    iput v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleX:F

    .line 117
    .line 118
    mul-float v5, v1, v2

    .line 119
    .line 120
    iput v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 121
    .line 122
    iget v5, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationInterval:F

    .line 123
    .line 124
    add-float v6, v2, v5

    .line 125
    mul-float/2addr v0, v6

    .line 126
    .line 127
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleX:F

    .line 128
    add-float/2addr v2, v5

    .line 129
    mul-float/2addr v1, v2

    .line 130
    .line 131
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    .line 135
    move-result v0

    .line 136
    .line 137
    .line 138
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    .line 139
    move-result v0

    .line 140
    .line 141
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromScaleY:F

    .line 142
    .line 143
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->toScaleY:F

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    .line 151
    move-result v7

    .line 152
    move v9, v7

    .line 153
    move v7, v0

    .line 154
    move v0, v9

    .line 155
    goto :goto_a

    .line 156
    .line 157
    :cond_a
    :goto_6
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 158
    .line 159
    cmpl-float v1, v0, v6

    .line 160
    .line 161
    if-eqz v1, :cond_d

    .line 162
    .line 163
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 164
    add-float/2addr v1, v0

    .line 165
    .line 166
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 167
    goto :goto_9

    .line 168
    .line 169
    :cond_b
    :goto_7
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 170
    .line 171
    cmpl-float v1, v0, v6

    .line 172
    .line 173
    if-eqz v1, :cond_d

    .line 174
    .line 175
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 176
    add-float/2addr v1, v0

    .line 177
    .line 178
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 179
    goto :goto_9

    .line 180
    .line 181
    :cond_c
    :goto_8
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->fromValue:F

    .line 182
    .line 183
    cmpl-float v1, v0, v6

    .line 184
    .line 185
    if-eqz v1, :cond_d

    .line 186
    .line 187
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 188
    add-float/2addr v1, v0

    .line 189
    .line 190
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->rotateDegree:F

    .line 191
    :cond_d
    :goto_9
    move v0, v7

    .line 192
    .line 193
    .line 194
    :goto_a
    invoke-direct {p0, p1, v7, v0}, Lcom/narvii/widget/NVDrawableAnimatedView;->layoutLayer(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;FF)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerAnimator(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 198
    .line 199
    iput-boolean v4, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 200
    return-void
.end method

.method private destroy()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->a(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 41
    :cond_2
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    return-void
.end method

.method private layoutLayer(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;FF)V
    .locals 11

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    .line 12
    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v4, 0x4

    .line 17
    const/4 v5, 0x2

    .line 18
    .line 19
    const/16 v6, 0x20

    .line 20
    .line 21
    if-eq v1, v6, :cond_10

    .line 22
    .line 23
    if-ne v1, v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    and-int/lit16 v6, v1, 0x80

    .line 28
    .line 29
    const/16 v7, 0x80

    .line 30
    .line 31
    if-ne v6, v7, :cond_2

    .line 32
    .line 33
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 34
    .line 35
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 36
    .line 37
    sub-int v8, v6, v7

    .line 38
    .line 39
    if-lez v8, :cond_1

    .line 40
    sub-int/2addr v6, v7

    .line 41
    div-int/2addr v6, v5

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v6, v3

    .line 44
    .line 45
    :goto_0
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 46
    .line 47
    iput v7, v0, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 50
    int-to-float v6, v6

    .line 51
    add-float/2addr v7, v6

    .line 52
    .line 53
    iput v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 54
    goto :goto_2

    .line 55
    .line 56
    :cond_2
    and-int/lit8 v6, v1, 0x40

    .line 57
    .line 58
    const/16 v7, 0x40

    .line 59
    .line 60
    if-ne v6, v7, :cond_4

    .line 61
    .line 62
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 63
    .line 64
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 65
    .line 66
    sub-int v8, v6, v7

    .line 67
    .line 68
    if-lez v8, :cond_3

    .line 69
    sub-int/2addr v6, v7

    .line 70
    div-int/2addr v6, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v6, v3

    .line 73
    .line 74
    :goto_1
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 75
    .line 76
    iput v7, v0, Landroid/graphics/Rect;->left:I

    .line 77
    .line 78
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 79
    int-to-float v6, v6

    .line 80
    add-float/2addr v7, v6

    .line 81
    .line 82
    iput v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 83
    .line 84
    :cond_4
    :goto_2
    and-int/lit8 v6, v1, 0x2

    .line 85
    const/4 v7, 0x0

    .line 86
    const/4 v8, 0x3

    .line 87
    .line 88
    if-ne v6, v5, :cond_6

    .line 89
    .line 90
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 91
    .line 92
    if-eq v1, v8, :cond_5

    .line 93
    .line 94
    if-eq v1, v4, :cond_5

    .line 95
    .line 96
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 97
    .line 98
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    iget v4, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 101
    int-to-float v4, v4

    .line 102
    mul-float/2addr v4, p3

    .line 103
    int-to-float p3, v1

    .line 104
    add-float/2addr v4, p3

    .line 105
    .line 106
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 107
    int-to-float p3, p3

    .line 108
    .line 109
    .line 110
    invoke-static {v4, p3}, Ljava/lang/Math;->min(FF)F

    .line 111
    move-result p3

    .line 112
    float-to-int p3, p3

    .line 113
    .line 114
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 115
    .line 116
    :cond_5
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 117
    .line 118
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 119
    int-to-float v0, v0

    .line 120
    add-float/2addr p3, v0

    .line 121
    .line 122
    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 123
    goto :goto_5

    .line 124
    :cond_6
    and-int/2addr v1, v4

    .line 125
    .line 126
    if-ne v1, v4, :cond_a

    .line 127
    .line 128
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 129
    int-to-float v6, v1

    .line 130
    .line 131
    iget v9, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 132
    int-to-float v10, v9

    .line 133
    mul-float/2addr v10, p3

    .line 134
    sub-float/2addr v6, v10

    .line 135
    .line 136
    cmpl-float v6, v6, v7

    .line 137
    .line 138
    if-lez v6, :cond_7

    .line 139
    int-to-float v6, v1

    .line 140
    int-to-float v10, v9

    .line 141
    mul-float/2addr v10, p3

    .line 142
    sub-float/2addr v6, v10

    .line 143
    float-to-int p3, v6

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    move p3, v3

    .line 146
    .line 147
    :goto_3
    iget v6, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 148
    .line 149
    if-eq v6, v8, :cond_8

    .line 150
    .line 151
    if-eq v6, v4, :cond_8

    .line 152
    .line 153
    iget v4, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    .line 154
    sub-int/2addr p3, v4

    .line 155
    .line 156
    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    sub-int p3, v1, v4

    .line 159
    .line 160
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 161
    .line 162
    :cond_8
    sub-int p3, v1, v9

    .line 163
    .line 164
    if-lez p3, :cond_9

    .line 165
    sub-int/2addr v1, v9

    .line 166
    goto :goto_4

    .line 167
    :cond_9
    move v1, v3

    .line 168
    .line 169
    :goto_4
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 170
    .line 171
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    .line 172
    sub-int/2addr v1, v0

    .line 173
    int-to-float v0, v1

    .line 174
    add-float/2addr p3, v0

    .line 175
    .line 176
    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 177
    .line 178
    :cond_a
    :goto_5
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerGravity:I

    .line 179
    .line 180
    and-int/lit8 v0, p3, 0x8

    .line 181
    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    if-ne v0, v1, :cond_c

    .line 185
    .line 186
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 187
    .line 188
    if-eq p3, v2, :cond_b

    .line 189
    .line 190
    if-eq p3, v5, :cond_b

    .line 191
    .line 192
    iget-object p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 193
    .line 194
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 195
    .line 196
    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 197
    .line 198
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 199
    int-to-float v1, v1

    .line 200
    mul-float/2addr v1, p2

    .line 201
    int-to-float p2, v0

    .line 202
    add-float/2addr v1, p2

    .line 203
    .line 204
    iget p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 205
    int-to-float p2, p2

    .line 206
    .line 207
    .line 208
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    .line 209
    move-result p2

    .line 210
    float-to-int p2, p2

    .line 211
    .line 212
    iput p2, p3, Landroid/graphics/Rect;->right:I

    .line 213
    .line 214
    :cond_b
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 215
    .line 216
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 217
    int-to-float p3, p3

    .line 218
    add-float/2addr p2, p3

    .line 219
    .line 220
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 221
    .line 222
    goto/16 :goto_c

    .line 223
    .line 224
    :cond_c
    const/16 v0, 0x10

    .line 225
    and-int/2addr p3, v0

    .line 226
    .line 227
    if-ne p3, v0, :cond_1c

    .line 228
    .line 229
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 230
    int-to-float v0, p3

    .line 231
    .line 232
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 233
    int-to-float v4, v1

    .line 234
    mul-float/2addr v4, p2

    .line 235
    sub-float/2addr v0, v4

    .line 236
    .line 237
    cmpl-float v0, v0, v7

    .line 238
    .line 239
    if-lez v0, :cond_d

    .line 240
    int-to-float v0, p3

    .line 241
    int-to-float v4, v1

    .line 242
    mul-float/2addr v4, p2

    .line 243
    sub-float/2addr v0, v4

    .line 244
    float-to-int p2, v0

    .line 245
    goto :goto_6

    .line 246
    :cond_d
    move p2, v3

    .line 247
    .line 248
    :goto_6
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 249
    .line 250
    if-eq v0, v2, :cond_e

    .line 251
    .line 252
    if-eq v0, v5, :cond_e

    .line 253
    .line 254
    iget-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 255
    .line 256
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    .line 257
    sub-int/2addr p2, v2

    .line 258
    .line 259
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 260
    .line 261
    sub-int p2, p3, v2

    .line 262
    .line 263
    iput p2, v0, Landroid/graphics/Rect;->right:I

    .line 264
    .line 265
    :cond_e
    sub-int p2, p3, v1

    .line 266
    .line 267
    if-lez p2, :cond_f

    .line 268
    .line 269
    sub-int v3, p3, v1

    .line 270
    .line 271
    :cond_f
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 272
    .line 273
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    .line 274
    sub-int/2addr v3, p3

    .line 275
    int-to-float p3, v3

    .line 276
    add-float/2addr p2, p3

    .line 277
    .line 278
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 279
    .line 280
    goto/16 :goto_c

    .line 281
    .line 282
    :cond_10
    :goto_7
    const/high16 p2, 0x3f800000    # 1.0f

    .line 283
    .line 284
    if-ne v1, v6, :cond_18

    .line 285
    .line 286
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 287
    .line 288
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 289
    .line 290
    sub-int v1, p3, v0

    .line 291
    div-int/2addr v1, v5

    .line 292
    .line 293
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 294
    .line 295
    iget v7, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 296
    .line 297
    sub-int v8, v6, v7

    .line 298
    div-int/2addr v8, v5

    .line 299
    .line 300
    iget v9, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 301
    const/4 v10, 0x5

    .line 302
    .line 303
    if-eq v9, v10, :cond_11

    .line 304
    const/4 v10, 0x6

    .line 305
    .line 306
    if-ne v9, v10, :cond_14

    .line 307
    .line 308
    :cond_11
    sub-int v9, p3, v0

    .line 309
    .line 310
    if-lez v9, :cond_12

    .line 311
    sub-int/2addr p3, v0

    .line 312
    div-int/2addr p3, v5

    .line 313
    goto :goto_8

    .line 314
    :cond_12
    move p3, v3

    .line 315
    .line 316
    :goto_8
    sub-int v0, v6, v7

    .line 317
    .line 318
    if-lez v0, :cond_13

    .line 319
    sub-int/2addr v6, v7

    .line 320
    .line 321
    div-int/lit8 v3, v6, 0x2

    .line 322
    .line 323
    :cond_13
    new-instance v0, Landroid/graphics/Rect;

    .line 324
    .line 325
    iget v6, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 326
    sub-int/2addr v6, p3

    .line 327
    .line 328
    iget v7, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 329
    sub-int/2addr v7, v3

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, p3, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 333
    .line 334
    iput-object v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 335
    .line 336
    :cond_14
    iget p3, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 337
    int-to-float p3, p3

    .line 338
    .line 339
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 340
    int-to-float v0, v0

    .line 341
    mul-float/2addr v0, p2

    .line 342
    div-float/2addr p3, v0

    .line 343
    .line 344
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 345
    int-to-float v0, v0

    .line 346
    .line 347
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 348
    int-to-float v3, v3

    .line 349
    mul-float/2addr v3, p2

    .line 350
    div-float/2addr v0, v3

    .line 351
    .line 352
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    .line 353
    .line 354
    if-ne v3, v4, :cond_15

    .line 355
    int-to-float p2, v1

    .line 356
    .line 357
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 358
    int-to-float p2, v8

    .line 359
    .line 360
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 361
    goto :goto_b

    .line 362
    .line 363
    :cond_15
    if-ne v3, v2, :cond_16

    .line 364
    .line 365
    .line 366
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 367
    move-result p3

    .line 368
    .line 369
    iput p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 370
    .line 371
    .line 372
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 373
    move-result p2

    .line 374
    .line 375
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 376
    int-to-float p2, v1

    .line 377
    .line 378
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 379
    int-to-float p2, v8

    .line 380
    .line 381
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 382
    goto :goto_b

    .line 383
    .line 384
    .line 385
    :cond_16
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    .line 386
    move-result p3

    .line 387
    .line 388
    .line 389
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 390
    move-result p2

    .line 391
    .line 392
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    .line 393
    .line 394
    if-ne v0, v5, :cond_17

    .line 395
    .line 396
    .line 397
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 398
    move-result p2

    .line 399
    goto :goto_9

    .line 400
    .line 401
    .line 402
    :cond_17
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 403
    move-result p2

    .line 404
    .line 405
    :goto_9
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 406
    .line 407
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 408
    int-to-float p2, v1

    .line 409
    .line 410
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 411
    int-to-float p2, v8

    .line 412
    .line 413
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 414
    goto :goto_b

    .line 415
    .line 416
    :cond_18
    iget p3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerScaleType:I

    .line 417
    .line 418
    if-eq p3, v4, :cond_1b

    .line 419
    .line 420
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 421
    int-to-float v0, v0

    .line 422
    .line 423
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableWidth:I

    .line 424
    int-to-float v1, v1

    .line 425
    mul-float/2addr v1, p2

    .line 426
    div-float/2addr v0, v1

    .line 427
    .line 428
    iget v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 429
    int-to-float v1, v1

    .line 430
    .line 431
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->drawableHeight:I

    .line 432
    int-to-float v3, v3

    .line 433
    mul-float/2addr v3, p2

    .line 434
    div-float/2addr v1, v3

    .line 435
    .line 436
    if-ne p3, v2, :cond_19

    .line 437
    .line 438
    iput v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 439
    .line 440
    iput v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 441
    goto :goto_b

    .line 442
    .line 443
    :cond_19
    if-ne p3, v5, :cond_1a

    .line 444
    .line 445
    .line 446
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    .line 447
    move-result p2

    .line 448
    goto :goto_a

    .line 449
    .line 450
    .line 451
    :cond_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    .line 452
    move-result p2

    .line 453
    .line 454
    :goto_a
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleX:F

    .line 455
    .line 456
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->scaleY:F

    .line 457
    .line 458
    :cond_1b
    :goto_b
    iget-object p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 459
    .line 460
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 461
    .line 462
    iget v0, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginStart:I

    .line 463
    .line 464
    iget v1, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginEnd:I

    .line 465
    .line 466
    sub-int v2, v0, v1

    .line 467
    add-int/2addr p3, v2

    .line 468
    .line 469
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 470
    .line 471
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 472
    .line 473
    sub-int v2, v0, v1

    .line 474
    add-int/2addr p3, v2

    .line 475
    .line 476
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 477
    .line 478
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 479
    .line 480
    iget v2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginTop:I

    .line 481
    .line 482
    iget v3, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->marginBottom:I

    .line 483
    .line 484
    sub-int v4, v2, v3

    .line 485
    add-int/2addr p3, v4

    .line 486
    .line 487
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 488
    .line 489
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 490
    .line 491
    sub-int v4, v2, v3

    .line 492
    add-int/2addr p3, v4

    .line 493
    .line 494
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 495
    .line 496
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 497
    sub-int/2addr v0, v1

    .line 498
    int-to-float p3, v0

    .line 499
    add-float/2addr p2, p3

    .line 500
    .line 501
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateX:F

    .line 502
    .line 503
    iget p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 504
    sub-int/2addr v2, v3

    .line 505
    int-to-float p3, v2

    .line 506
    add-float/2addr p2, p3

    .line 507
    .line 508
    iput p2, p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->translateY:F

    .line 509
    :cond_1c
    :goto_c
    return-void
.end method

.method private reconfiguration(Z)V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 3
    .line 4
    if-lez v0, :cond_4

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 7
    .line 8
    if-gtz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-boolean v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    if-nez p1, :cond_3

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-direct {p0, v1}, Lcom/narvii/widget/NVDrawableAnimatedView;->configLayerInfo(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 49
    goto :goto_0

    .line 50
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addLayer(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)I
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, -0x1

    .line 4
    return p1

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 23
    move-result p1

    .line 24
    .line 25
    add-int/lit8 p1, p1, -0x1

    .line 26
    return p1
.end method

.method public addLayerList(Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_1
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 p1, 0x0

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    .line 49
    return v0

    .line 50
    :cond_3
    :goto_1
    const/4 p1, -0x1

    .line 51
    return p1
.end method

.method public getLayerCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/NVDrawableAnimatedView;->destroy()V

    .line 7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_5

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-boolean v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    iget-object v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->b(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Landroid/graphics/Matrix;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 48
    .line 49
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 50
    .line 51
    iget-object v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerShader:Landroid/graphics/BitmapShader;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 57
    .line 58
    iget v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->layerAlpha:F

    .line 59
    .line 60
    const/high16 v4, 0x437f0000    # 255.0f

    .line 61
    mul-float/2addr v3, v4

    .line 62
    float-to-int v3, v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    .line 67
    iget v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->animationType:I

    .line 68
    const/4 v3, 0x5

    .line 69
    .line 70
    if-eq v2, v3, :cond_3

    .line 71
    const/4 v3, 0x6

    .line 72
    .line 73
    if-ne v2, v3, :cond_2

    .line 74
    goto :goto_1

    .line 75
    .line 76
    :cond_2
    iget-object v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    .line 88
    move-result v2

    .line 89
    int-to-float v2, v2

    .line 90
    .line 91
    iget-object v3, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    .line 95
    move-result v3

    .line 96
    int-to-float v3, v3

    .line 97
    .line 98
    iget-object v4, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 102
    move-result v4

    .line 103
    .line 104
    iget-object v1, v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->targetRect:Landroid/graphics/Rect;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 108
    move-result v1

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 112
    move-result v1

    .line 113
    .line 114
    div-int/lit8 v1, v1, 0x2

    .line 115
    int-to-float v1, v1

    .line 116
    .line 117
    iget-object v4, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->paint:Landroid/graphics/Paint;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    goto :goto_0

    .line 122
    .line 123
    .line 124
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 4
    .line 5
    if-ne p1, p3, :cond_0

    .line 6
    .line 7
    if-ne p2, p4, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vWidth:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->vHeight:I

    .line 13
    const/4 p1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    .line 17
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->configured:Z

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    if-nez p2, :cond_2

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->d(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->c(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)Z

    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return-void
.end method

.method public removeLayer(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v0

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->a(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public replaceLayerList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 12
    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-static {v1}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->a(Lcom/narvii/widget/NVDrawableAnimatedView$Layer;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 61
    .line 62
    .line 63
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object p1

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    check-cast v0, Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_5
    iget-object v1, p0, Lcom/narvii/widget/NVDrawableAnimatedView;->layerInfoList:Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/narvii/widget/NVDrawableAnimatedView$Layer;->generate(Lcom/narvii/widget/NVDrawableAnimatedView$LayerConfig;)Lcom/narvii/widget/NVDrawableAnimatedView$Layer;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    goto :goto_1

    .line 90
    :cond_6
    const/4 p1, 0x1

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/narvii/widget/NVDrawableAnimatedView;->reconfiguration(Z)V

    .line 94
    :cond_7
    :goto_2
    return-void
.end method
