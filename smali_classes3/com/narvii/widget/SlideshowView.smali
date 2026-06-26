.class public Lcom/narvii/widget/SlideshowView;
.super Landroid/widget/FrameLayout;
.source "SlideshowView.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field public alphaDuration:I

.field animationStartTime:J

.field bdx:I

.field bdy:I

.field dx:I

.field dy:I

.field img1:Lcom/narvii/widget/FullsizeImageView;

.field img2:Lcom/narvii/widget/FullsizeImageView;

.field index:I

.field listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

.field mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;"
        }
    .end annotation
.end field

.field nextReqed:Z

.field public noSlide:Z

.field final rnd:Ljava/util/Random;

.field public scale:F

.field public slideDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x258

    .line 22
    iput v0, p0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    const/16 v1, 0x1388

    .line 23
    iput v1, p0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput v1, p0, Lcom/narvii/widget/SlideshowView;->scale:F

    const/4 v2, 0x0

    .line 25
    iput-boolean v2, p0, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    const-wide/16 v3, -0x1

    .line 32
    iput-wide v3, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 34
    iput v2, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 44
    sget-object v3, Lcom/narvii/lib/R$styleable;->SlideshowView:[I

    sget v4, Lcom/narvii/lib/R$style;->SlideshowView:I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_alphaDuration:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_slideDuration:I

    const/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_scale:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/widget/SlideshowView;->scale:F

    .line 52
    sget p2, Lcom/narvii/lib/R$styleable;->SlideshowView_hidingHeight2:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 57
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 59
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 61
    new-instance v0, Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 62
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 63
    iput p2, v0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 64
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 66
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    new-instance v0, Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 68
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    iput-boolean v1, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 69
    iput p2, v0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 70
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 71
    iget-object p2, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p2, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 72
    iget-object p2, p0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 118
    iget-object v5, v0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v5, v12, :cond_2

    if-ne v5, v13, :cond_1

    .line 122
    iget-wide v5, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    cmp-long v12, v5, v10

    if-nez v12, :cond_1

    iget-object v5, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    if-ne v2, v5, :cond_1

    invoke-virtual {v5}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 123
    iput-wide v3, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 124
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 125
    iget v6, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 126
    iget-object v6, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 129
    :cond_1
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    .line 133
    :cond_2
    iget-wide v14, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    const-wide/16 v16, -0x1

    cmp-long v18, v14, v10

    if-gez v18, :cond_4

    :cond_3
    :goto_1
    move-wide/from16 v14, v16

    goto :goto_2

    :cond_4
    cmp-long v18, v14, v10

    if-nez v18, :cond_6

    .line 136
    iget v14, v0, Lcom/narvii/widget/SlideshowView;->index:I

    if-nez v14, :cond_5

    iget-object v14, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 137
    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v14}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v14

    if-eq v14, v8, :cond_5

    goto :goto_1

    .line 140
    :cond_5
    iput-wide v3, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    move-wide v14, v10

    goto :goto_2

    :cond_6
    sub-long v14, v3, v14

    .line 148
    :goto_2
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->index:I

    rem-int/2addr v8, v12

    if-nez v8, :cond_7

    .line 149
    iget-object v8, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 150
    iget-object v7, v0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    goto :goto_3

    .line 152
    :cond_7
    iget-object v8, v0, Lcom/narvii/widget/SlideshowView;->img2:Lcom/narvii/widget/FullsizeImageView;

    .line 153
    iget-object v7, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    .line 155
    :goto_3
    iget-object v9, v0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    if-ne v2, v9, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    cmp-long v9, v14, v10

    if-ltz v9, :cond_10

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v2, :cond_a

    .line 160
    iget v8, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    int-to-long v10, v8

    cmp-long v8, v14, v10

    if-gez v8, :cond_9

    iget v8, v0, Lcom/narvii/widget/SlideshowView;->index:I

    if-lez v8, :cond_9

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 162
    iget v10, v0, Lcom/narvii/widget/SlideshowView;->bdx:I

    int-to-float v10, v10

    mul-float v10, v10, v9

    iget v11, v0, Lcom/narvii/widget/SlideshowView;->bdy:I

    int-to-float v11, v11

    mul-float v11, v11, v9

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    iget v9, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    div-int/2addr v10, v12

    int-to-float v10, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    div-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v1, v9, v9, v10, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 164
    invoke-super {v0, v1, v7, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 165
    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 167
    iput-boolean v6, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    .line 169
    :cond_9
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    int-to-long v3, v1

    cmp-long v1, v14, v3

    if-ltz v1, :cond_10

    iget-boolean v1, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    if-nez v1, :cond_10

    .line 170
    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    iget v3, v0, Lcom/narvii/widget/SlideshowView;->index:I

    add-int/2addr v3, v13

    rem-int/2addr v3, v5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Media;

    invoke-virtual {v7, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 171
    iput-boolean v13, v0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    goto/16 :goto_8

    :cond_a
    cmp-long v5, v14, v10

    if-nez v5, :cond_e

    .line 175
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 176
    iget v3, v0, Lcom/narvii/widget/SlideshowView;->alphaDuration:I

    int-to-long v9, v3

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 177
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-boolean v1, v0, Lcom/narvii/widget/SlideshowView;->noSlide:Z

    if-eqz v1, :cond_b

    .line 180
    iput v6, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 181
    iput v6, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    goto/16 :goto_7

    .line 183
    :cond_b
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    sub-float/2addr v1, v4

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget-object v4, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v3, v3, v4

    iget-object v4, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 185
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_c

    const/4 v4, -0x1

    goto :goto_5

    :cond_c
    const/4 v4, 0x1

    :goto_5
    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v3, v3, v1

    iget-object v1, v0, Lcom/narvii/widget/SlideshowView;->rnd:Ljava/util/Random;

    .line 187
    invoke-virtual {v1}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    const/4 v5, 0x1

    :goto_6
    int-to-float v1, v5

    mul-float v3, v3, v1

    float-to-int v1, v3

    iput v1, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    goto :goto_7

    :cond_e
    long-to-float v5, v14

    .line 190
    iget v10, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v5, v10

    if-lez v11, :cond_f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 192
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 193
    iget v11, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    int-to-float v11, v11

    sub-float/2addr v5, v9

    mul-float v11, v11, v5

    iget v9, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    int-to-float v9, v9

    mul-float v9, v9, v5

    invoke-virtual {v1, v11, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    iget v5, v0, Lcom/narvii/widget/SlideshowView;->scale:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    div-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    div-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v1, v5, v5, v9, v11}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 195
    invoke-super {v0, v1, v8, v3, v4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 196
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 199
    :goto_7
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    int-to-long v3, v1

    cmp-long v1, v14, v3

    if-gtz v1, :cond_10

    .line 200
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v6, 0x1

    .line 206
    :cond_10
    :goto_8
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->slideDuration:I

    int-to-long v3, v1

    cmp-long v1, v14, v3

    if-lez v1, :cond_13

    if-nez v2, :cond_13

    .line 208
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 209
    invoke-virtual {v7}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_12

    .line 210
    :cond_11
    invoke-virtual {v7}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result v1

    if-ne v1, v12, :cond_13

    :cond_12
    const-wide/16 v1, 0x0

    .line 211
    iput-wide v1, v0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 212
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->dx:I

    iput v1, v0, Lcom/narvii/widget/SlideshowView;->bdx:I

    .line 213
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->dy:I

    iput v1, v0, Lcom/narvii/widget/SlideshowView;->bdy:I

    .line 214
    iget v1, v0, Lcom/narvii/widget/SlideshowView;->index:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_9

    :cond_13
    move v13, v6

    :goto_9
    return v13
.end method

.method public getCurrentIndex()I
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget v0, p0, Lcom/narvii/widget/SlideshowView;->index:I

    iget-object v1, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMedia()Lcom/narvii/model/Media;
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    iget v1, p0, Lcom/narvii/widget/SlideshowView;->index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Media;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0, p1, p2, p3}, Lcom/narvii/widget/NVImageView$OnImageChangedListener;->onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V

    :cond_1
    return-void
.end method

.method public setMediaList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    if-ne v0, p1, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsContent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->mediaList:Ljava/util/List;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/narvii/widget/SlideshowView;->index:I

    .line 100
    iput-boolean v0, p0, Lcom/narvii/widget/SlideshowView;->nextReqed:Z

    const-wide/16 v1, 0x0

    .line 101
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    const-wide/16 v1, 0x1

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 103
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Media;

    .line 104
    iget-object v0, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 105
    iget-object p1, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    invoke-virtual {p1}, Lcom/narvii/widget/NVImageView;->getStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 107
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    goto :goto_0

    .line 110
    :cond_2
    iget-object p1, p0, Lcom/narvii/widget/SlideshowView;->img1:Lcom/narvii/widget/FullsizeImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 111
    iput-wide v1, p0, Lcom/narvii/widget/SlideshowView;->animationStartTime:J

    .line 113
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/narvii/widget/SlideshowView;->listener:Lcom/narvii/widget/NVImageView$OnImageChangedListener;

    return-void
.end method
