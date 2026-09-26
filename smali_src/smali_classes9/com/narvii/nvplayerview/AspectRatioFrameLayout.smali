.class public Lcom/narvii/nvplayerview/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    return-void
.end method


# virtual methods
.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    return v0
.end method

.method public getScaleType()I
    .locals 1

    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 17

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 9
    .line 10
    if-gtz v1, :cond_1

    .line 11
    .line 12
    :cond_0
    iget v1, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    cmpl-float v1, v1, v2

    .line 16
    .line 17
    if-lez v1, :cond_a

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 21
    move-result v1

    .line 22
    .line 23
    .line 24
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 25
    move-result v2

    .line 26
    .line 27
    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 28
    .line 29
    if-lez v3, :cond_2

    .line 30
    .line 31
    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 32
    .line 33
    if-gtz v3, :cond_3

    .line 34
    .line 35
    :cond_2
    iget v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    .line 36
    .line 37
    const/high16 v4, 0x42c80000    # 100.0f

    .line 38
    mul-float/2addr v3, v4

    .line 39
    float-to-int v3, v3

    .line 40
    .line 41
    iput v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 42
    .line 43
    const/16 v3, 0x64

    .line 44
    .line 45
    iput v3, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 49
    move-result v3

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 53
    move-result v4

    .line 54
    add-int/2addr v3, v4

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 58
    move-result v4

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 62
    move-result v5

    .line 63
    add-int/2addr v4, v5

    .line 64
    sub-int/2addr v1, v3

    .line 65
    sub-int/2addr v2, v4

    .line 66
    int-to-double v5, v1

    .line 67
    int-to-double v7, v2

    .line 68
    .line 69
    div-double v9, v5, v7

    .line 70
    .line 71
    iget v11, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 72
    int-to-double v11, v11

    .line 73
    .line 74
    iget v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 75
    int-to-double v13, v13

    .line 76
    div-double/2addr v11, v13

    .line 77
    .line 78
    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    .line 79
    .line 80
    cmpl-double v13, v11, v13

    .line 81
    .line 82
    if-gtz v13, :cond_4

    .line 83
    .line 84
    const-wide/high16 v13, 0x3fd0000000000000L    # 0.25

    .line 85
    .line 86
    cmpg-double v13, v11, v13

    .line 87
    .line 88
    if-gez v13, :cond_5

    .line 89
    :cond_4
    const/4 v13, 0x0

    .line 90
    .line 91
    iput v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    .line 92
    .line 93
    :cond_5
    div-double v9, v11, v9

    .line 94
    .line 95
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 96
    sub-double/2addr v9, v13

    .line 97
    .line 98
    .line 99
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 100
    move-result-wide v13

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const-wide v15, 0x3f847ae140000000L    # 0.009999999776482582

    .line 106
    .line 107
    cmpl-double v13, v13, v15

    .line 108
    .line 109
    if-lez v13, :cond_a

    .line 110
    .line 111
    iget v13, v0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    .line 112
    .line 113
    const-wide/16 v14, 0x0

    .line 114
    .line 115
    if-nez v13, :cond_7

    .line 116
    .line 117
    cmpl-double v9, v9, v14

    .line 118
    .line 119
    if-lez v9, :cond_6

    .line 120
    div-double/2addr v5, v11

    .line 121
    double-to-int v2, v5

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    :goto_0
    mul-double/2addr v7, v11

    .line 124
    double-to-int v1, v7

    .line 125
    goto :goto_1

    .line 126
    .line 127
    :cond_7
    move/from16 v16, v1

    .line 128
    const/4 v1, 0x1

    .line 129
    .line 130
    if-ne v13, v1, :cond_9

    .line 131
    .line 132
    cmpl-double v1, v9, v14

    .line 133
    .line 134
    if-lez v1, :cond_8

    .line 135
    goto :goto_0

    .line 136
    :cond_8
    div-double/2addr v5, v11

    .line 137
    double-to-int v2, v5

    .line 138
    .line 139
    :cond_9
    move/from16 v1, v16

    .line 140
    :goto_1
    add-int/2addr v1, v3

    .line 141
    add-int/2addr v2, v4

    .line 142
    .line 143
    const/high16 v3, 0x40000000    # 2.0f

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 147
    move-result v1

    .line 148
    .line 149
    .line 150
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 151
    move-result v2

    .line 152
    goto :goto_2

    .line 153
    .line 154
    :cond_a
    move/from16 v1, p1

    .line 155
    .line 156
    move/from16 v2, p2

    .line 157
    .line 158
    .line 159
    :goto_2
    invoke-super {v0, v1, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 160
    return-void
.end method

.method public setPredictedRatio(F)V
    .locals 0

    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    return-void
.end method

.method public setScaleType(I)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->scaleType:I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 7
    .line 8
    if-eq v0, p2, :cond_2

    .line 9
    .line 10
    :cond_0
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoWidth:I

    .line 11
    .line 12
    iput p2, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->videoHeight:I

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    int-to-float p1, p1

    .line 20
    mul-float/2addr p1, v0

    .line 21
    int-to-float p2, p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    .line 24
    iput p1, p0, Lcom/narvii/nvplayerview/AspectRatioFrameLayout;->ratio:F

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 28
    :cond_2
    return-void
.end method
