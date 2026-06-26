.class public Lcom/narvii/nvplayerview/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# static fields
.field private static final CENTER_CROP_SCALE_TYPE:I = 0x1

.field private static final FIT_CENTER_SCALE_TYPE:I = 0x0

.field private static final MAX_ASPECT_RATIO_DEFORMATION_FRACTION:F = 0.01f

.field private static final VIDEO_ASPECT_RATIO_FLOOR_LIMIT:F = 0.25f

.field private static final VIDEO_ASPECT_RATIO_UPPER_LIMIT:F = 4.0f


# instance fields
.field private ratio:F

.field private scaleType:I

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 28
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    return-void
.end method


# virtual methods
.method public getRatio()F
    .locals 1

    .line 109
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    return v0
.end method

.method public getScaleType()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    .line 67
    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    if-gtz v1, :cond_1

    :cond_0
    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    .line 68
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 69
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 70
    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    if-lez v3, :cond_2

    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    if-gtz v3, :cond_3

    .line 72
    :cond_2
    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    const/16 v3, 0x64

    .line 73
    iput v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 75
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v1, v3

    sub-int/2addr v2, v4

    int-to-double v5, v1

    int-to-double v7, v2

    .line 79
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, v5, v7

    .line 80
    iget v11, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    int-to-double v11, v11

    iget v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    int-to-double v13, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    cmpl-double v15, v11, v13

    if-gtz v15, :cond_4

    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    cmpg-double v15, v11, v13

    if-gez v15, :cond_5

    :cond_4
    const/4 v13, 0x0

    .line 82
    iput v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    :cond_5
    div-double v9, v11, v9

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v13

    .line 85
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f847ae140000000L    # 0.009999999776482582

    cmpl-double v17, v13, v15

    if-lez v17, :cond_a

    .line 86
    iget v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    const-wide/16 v14, 0x0

    if-nez v13, :cond_7

    cmpl-double v13, v9, v14

    if-lez v13, :cond_6

    .line 88
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v11

    double-to-int v2, v5

    goto :goto_1

    .line 90
    :cond_6
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    :goto_0
    mul-double v7, v7, v11

    double-to-int v1, v7

    goto :goto_1

    :cond_7
    move/from16 v16, v1

    const/4 v1, 0x1

    if-ne v13, v1, :cond_9

    cmpl-double v1, v9, v14

    if-lez v1, :cond_8

    .line 94
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_0

    .line 96
    :cond_8
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v11

    double-to-int v2, v5

    :cond_9
    move/from16 v1, v16

    :goto_1
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    .line 101
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 102
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_2

    :cond_a
    move/from16 v1, p1

    move/from16 v2, p2

    .line 105
    :goto_2
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setPredictedRatio(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 44
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    if-eq p1, v0, :cond_0

    .line 45
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    .line 46
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 51
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    if-eq v0, p2, :cond_2

    .line 52
    :cond_0
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 53
    iput p2, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    iget p2, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    iget p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    .line 57
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    return-void
.end method
