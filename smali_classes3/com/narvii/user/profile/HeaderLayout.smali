.class public Lcom/narvii/user/profile/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "HeaderLayout.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# instance fields
.field achievements:Landroid/view/View;

.field allowTouch:Z

.field aminoStaffBadge:Landroid/view/View;

.field avOverride:F

.field avatar:Landroid/view/View;

.field avatarSize:I

.field balanceView:Landroid/view/View;

.field blurReady:Z

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field buttonLayout:Landroid/view/View;

.field chatLayout:Landroid/view/View;

.field editButton:Landroid/view/View;

.field follow:Landroid/view/View;

.field public gradient:Landroid/view/View;

.field private h0:I

.field private isNewsFeed:Z

.field mainView:Landroid/view/View;

.field membershipTitle:Landroid/view/View;

.field mood:Landroid/view/View;

.field nickname:Landroid/view/View;

.field private offset:I

.field scorebar:Landroid/view/View;

.field streakBrokenTag:Landroid/view/View;

.field userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

.field private yMain:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;IIZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 202
    iget p4, p0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 203
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p4

    if-gt v0, p2, :cond_2

    const/4 p2, 0x0

    .line 205
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/high16 p4, 0x3f800000    # 1.0f

    if-lt v0, p3, :cond_3

    .line 207
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr v0, p2

    sub-float/2addr p4, v0

    .line 210
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090c10

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->avatar:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->avatar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    const v0, 0x7f090720

    .line 70
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    const v0, 0x7f0904dd

    .line 71
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    const v0, 0x7f090764

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->nickname:Landroid/view/View;

    const v0, 0x7f090701

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->membershipTitle:Landroid/view/View;

    const v0, 0x7f090c18

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->follow:Landroid/view/View;

    const v0, 0x7f09002a

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    const v0, 0x7f0909ae

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    const v0, 0x7f0901ed

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->chatLayout:Landroid/view/View;

    const v0, 0x7f0904f5

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    const v0, 0x7f0900a3

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->aminoStaffBadge:Landroid/view/View;

    const v0, 0x7f09013c

    .line 80
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    const v0, 0x7f0903c0

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    const v0, 0x7f090c3f

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/user/title/UserTitleFlowView;

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 84
    iget-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->setDarkTheme(Z)V

    const v0, 0x7f090a50

    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SlideshowView;

    .line 86
    iget-object v1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p0}, Lcom/narvii/widget/SlideshowView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    :cond_0
    const v0, 0x7f090189

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    const v0, 0x7f090cf4

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    const v0, 0x7f090af5

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 217
    iget-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    .line 219
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "moderator"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/narvii/app/NVActivity;

    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    move-result v4

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/narvii/app/NVActivity;

    invoke-virtual {v5}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    move-result v5

    .line 115
    div-int/lit8 v6, v5, 0x14

    add-int v7, v4, v5

    add-int v8, v7, v5

    .line 119
    iget v9, v0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    const/4 v11, 0x0

    cmpl-float v12, v9, v11

    if-nez v12, :cond_0

    const/high16 v9, 0x3f000000    # 0.5f

    .line 120
    :cond_0
    iget-boolean v1, v0, Lcom/narvii/user/profile/HeaderLayout;->isNewsFeed:Z

    if-eqz v1, :cond_1

    const v9, 0x3e99999a    # 0.3f

    :cond_1
    int-to-float v1, v3

    mul-float v12, v1, v9

    sub-float v12, v1, v12

    .line 123
    iget v13, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    int-to-float v13, v13

    mul-float v13, v13, v9

    sub-float/2addr v1, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x41f00000    # 30.0f

    invoke-static {v12, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v12

    sub-float/2addr v1, v12

    float-to-int v1, v1

    iget v12, v0, Lcom/narvii/user/profile/HeaderLayout;->offset:I

    add-int/2addr v1, v12

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/high16 v13, 0x41200000    # 10.0f

    invoke-static {v12, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v12

    sub-float/2addr v1, v12

    float-to-int v1, v1

    mul-int/lit8 v12, v6, 0x4

    sub-int v12, v5, v12

    sub-int v13, v1, v4

    sub-int/2addr v13, v6

    .line 124
    iget v14, v0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 125
    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v13, v12, 0x2

    sub-int v13, v2, v13

    add-int/2addr v6, v4

    sub-int v14, v1, v12

    .line 126
    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 128
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->avatar:Landroid/view/View;

    add-int v15, v13, v12

    add-int v10, v6, v12

    invoke-virtual {v14, v13, v6, v15, v10}, Landroid/view/View;->layout(IIII)V

    .line 131
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v14

    if-eqz v14, :cond_2

    mul-int/lit8 v14, v12, 0x8

    .line 132
    div-int/lit8 v14, v14, 0x64

    sub-int/2addr v13, v14

    goto :goto_0

    :cond_2
    mul-int/lit8 v14, v12, 0x3a

    .line 134
    div-int/lit8 v14, v14, 0x64

    add-int/2addr v13, v14

    :goto_0
    mul-int/lit8 v14, v12, -0xc

    .line 136
    div-int/lit8 v14, v14, 0x64

    add-int/2addr v6, v14

    .line 137
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v13

    iget-object v11, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v14, v13, v6, v15, v11}, Landroid/view/View;->layout(IIII)V

    .line 138
    iget v6, v0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    const/high16 v11, 0x3f800000    # 1.0f

    if-lt v12, v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    sub-int v13, v6, v12

    int-to-float v13, v13

    mul-float v13, v13, v11

    int-to-float v6, v6

    const v14, 0x3eb33333    # 0.35f

    mul-float v6, v6, v14

    div-float/2addr v13, v6

    sub-float v6, v11, v13

    .line 139
    :goto_1
    iget-object v13, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v14, 0x0

    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v13, v6}, Landroid/view/View;->setAlpha(F)V

    int-to-float v6, v12

    const v12, 0x3f333333    # 0.7f

    mul-float v6, v6, v12

    float-to-int v12, v6

    const/high16 v13, 0x41b80000    # 23.0f

    mul-float v6, v6, v13

    const/high16 v13, 0x429e0000    # 79.0f

    div-float/2addr v6, v13

    float-to-int v6, v6

    .line 143
    div-int/lit8 v13, v12, 0x2

    sub-int v13, v2, v13

    sub-int/2addr v10, v6

    int-to-float v10, v10

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v14

    add-float/2addr v10, v14

    float-to-int v10, v10

    .line 145
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->aminoStaffBadge:Landroid/view/View;

    add-int/2addr v12, v13

    add-int/2addr v6, v10

    invoke-virtual {v14, v13, v10, v12, v6}, Landroid/view/View;->layout(IIII)V

    .line 147
    iget v6, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v9

    float-to-int v6, v6

    .line 148
    iget-object v9, v0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 149
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v6, v9

    :cond_4
    int-to-float v6, v6

    const v9, 0x3d4ccccd    # 0.05f

    mul-float v6, v6, v9

    float-to-int v6, v6

    add-int/2addr v1, v6

    .line 152
    iput v1, v0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    .line 153
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 154
    iget-object v6, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 155
    div-int/lit8 v9, v1, 0x2

    sub-int/2addr v2, v9

    .line 156
    iget-object v9, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    iget v10, v0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    add-int/2addr v1, v2

    add-int/2addr v6, v10

    invoke-virtual {v9, v2, v10, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 158
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->nickname:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 159
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->membershipTitle:Landroid/view/View;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 160
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 162
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 163
    invoke-direct {v0, v1, v7, v8}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 164
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 165
    invoke-direct {v0, v1, v7, v8}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 169
    :cond_5
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 170
    invoke-direct {v0, v1, v7, v8}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 173
    :cond_6
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 174
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 176
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v1, :cond_c

    .line 177
    iget-boolean v2, v0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    const/4 v6, 0x4

    if-eqz v2, :cond_b

    .line 179
    iget v1, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    if-ge v3, v1, :cond_7

    sub-int/2addr v3, v4

    sub-int/2addr v3, v5

    int-to-float v2, v3

    mul-float v2, v2, v11

    sub-int/2addr v1, v4

    sub-int/2addr v1, v5

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_2

    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    const/4 v14, 0x0

    cmpg-float v1, v2, v14

    if-gez v1, :cond_8

    goto :goto_3

    :cond_8
    move v14, v2

    :goto_3
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, v14, v1

    if-lez v2, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_9
    div-float v1, v14, v1

    .line 186
    :goto_4
    iget-object v2, v0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    cmpl-float v3, v1, v11

    if-ltz v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v2, v0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    sub-float/2addr v11, v1

    invoke-virtual {v2, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_6

    .line 189
    :cond_b
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    return-void
.end method

.method public screenshotForSharing(Z)Landroid/graphics/Bitmap;
    .locals 14

    const v0, 0x7f090a50

    .line 225
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SlideshowView;

    const v1, 0x7f090177

    .line 226
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/narvii/widget/BubbleBackground;

    const v2, 0x7f090b4f

    .line 227
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/narvii/widget/NVImageView;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/narvii/widget/SlideshowView;->getCurrentMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/narvii/app/NVContext;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/narvii/app/NVContext;

    const-string v4, "config"

    .line 233
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/config/ConfigService;

    const-string v5, "themePack"

    .line 234
    invoke-interface {v0, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/theme/ThemePackService;

    .line 235
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v4

    sget-object v6, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    invoke-virtual {v5, v4, v6, v3, v3}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v2, v4}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "account"

    .line 242
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 243
    invoke-virtual {v1}, Lcom/narvii/widget/BubbleBackground;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 251
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    if-gtz v4, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 260
    :cond_2
    iget-object v5, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    const/4 v6, 0x4

    const/16 v7, 0x8

    if-eqz v5, :cond_3

    .line 261
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 262
    iget-object v8, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    .line 266
    :goto_2
    iget-object v8, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    if-eqz v8, :cond_4

    .line 267
    invoke-virtual {v8}, Lcom/narvii/util/layouts/NVFlowLayout;->isShowMore()Z

    move-result v8

    .line 268
    iget-object v9, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    invoke-virtual {v9, v3}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 273
    :goto_3
    iget-object v9, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 274
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    .line 275
    iget-object v10, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/16 v9, 0x8

    .line 279
    :goto_4
    iget-object v10, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    if-eqz v10, :cond_6

    .line 280
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    .line 281
    iget-object v11, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_6
    const/4 v10, 0x0

    .line 285
    :goto_5
    iget-object v11, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    if-eqz v11, :cond_8

    .line 286
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    .line 287
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_6

    :cond_7
    const/16 p1, 0x8

    :goto_6
    invoke-virtual {v12, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_8
    const/4 v11, 0x0

    .line 291
    :goto_7
    iget-object p1, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    .line 293
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_9
    const/4 p1, 0x0

    .line 297
    :goto_8
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v12, :cond_a

    .line 298
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    .line 299
    iget-object v13, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    :goto_9
    const v6, 0x3ecccccd    # 0.4f

    .line 301
    iput v6, p0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    const/high16 v6, 0x40000000    # 2.0f

    .line 304
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v13, v6}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 305
    invoke-virtual {p0, v3, v3, v4, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 307
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 308
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    .line 311
    iput v4, p0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    .line 313
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 314
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :cond_b
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    if-eqz v4, :cond_c

    .line 318
    invoke-virtual {v4, v8}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 321
    :cond_c
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 322
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_d
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    if-eqz v4, :cond_e

    .line 325
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_e
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    if-eqz v4, :cond_f

    .line 328
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_f
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    if-eqz v4, :cond_10

    .line 331
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_10
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    if-eqz v4, :cond_11

    .line 335
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v2, :cond_12

    .line 339
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    const/4 p1, 0x0

    .line 342
    invoke-virtual {v1, p1}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 345
    :cond_13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-object v3
.end method

.method public setH0(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    return-void
.end method

.method public setNewsFeed(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->isNewsFeed:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/narvii/user/profile/HeaderLayout;->offset:I

    return-void
.end method
