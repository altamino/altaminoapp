.class public Lcom/narvii/user/profile/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;IIZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p4

    if-gt v0, p2, :cond_2

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_2
    const/high16 p4, 0x3f800000    # 1.0f

    if-lt v0, p3, :cond_3

    .line 4
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    sub-int v0, p3, v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr v0, p2

    sub-float/2addr p4, v0

    .line 5
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/user/profile/HeaderLayout;->allowTouch:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return p1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0f36

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->avatar:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0a0989

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    .line 30
    .line 31
    .line 32
    const v0, 0x7f0a062a

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->gradient:Landroid/view/View;

    .line 39
    .line 40
    .line 41
    const v0, 0x7f0a09f9

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->nickname:Landroid/view/View;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0963

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->membershipTitle:Landroid/view/View;

    .line 57
    .line 58
    .line 59
    const v0, 0x7f0a0f3e

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->follow:Landroid/view/View;

    .line 66
    .line 67
    .line 68
    const v0, 0x7f0a0057

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 73
    .line 74
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    .line 75
    .line 76
    .line 77
    const v0, 0x7f0a0c76

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    const v0, 0x7f0a02a4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->chatLayout:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    const v0, 0x7f0a0649

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 100
    .line 101
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    const v0, 0x7f0a010b

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->aminoStaffBadge:Landroid/view/View;

    .line 111
    .line 112
    .line 113
    const v0, 0x7f0a01da

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 117
    move-result-object v1

    .line 118
    .line 119
    check-cast v1, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 120
    .line 121
    iput-object v1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    move-result-object v0

    .line 126
    .line 127
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 130
    .line 131
    .line 132
    const v0, 0x7f0a04b7

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    const v0, 0x7f0a0f61

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    check-cast v0, Lcom/narvii/user/title/UserTitleFlowView;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 150
    const/4 v1, 0x1

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lcom/narvii/user/title/UserTitleFlowView;->setDarkTheme(Z)V

    .line 154
    .line 155
    .line 156
    const v0, 0x7f0a0d25

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    check-cast v0, Lcom/narvii/widget/SlideshowView;

    .line 163
    .line 164
    iget-object v1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 165
    .line 166
    if-eqz v1, :cond_0

    .line 167
    .line 168
    if-eqz v0, :cond_0

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, p0}, Lcom/narvii/widget/SlideshowView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 172
    .line 173
    .line 174
    :cond_0
    const v0, 0x7f0a023a

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    move-result-object v0

    .line 179
    .line 180
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    .line 181
    .line 182
    .line 183
    const v0, 0x7f0a1019

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    .line 190
    .line 191
    .line 192
    const v0, 0x7f0a0dd6

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v0

    .line 197
    .line 198
    iput-object v0, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    .line 199
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x4

    .line 6
    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 6
    .line 7
    const-string v1, "moderator"

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 18
    move-result v1

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 22
    move-result v2

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v4

    .line 37
    .line 38
    check-cast v4, Lcom/narvii/app/NVActivity;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 42
    move-result v4

    .line 43
    .line 44
    div-int/lit8 v5, v4, 0x14

    .line 45
    .line 46
    add-int v6, v3, v4

    .line 47
    .line 48
    add-int v7, v6, v4

    .line 49
    .line 50
    iget v8, v0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    .line 51
    const/4 v9, 0x0

    .line 52
    .line 53
    cmpl-float v10, v8, v9

    .line 54
    .line 55
    if-nez v10, :cond_0

    .line 56
    .line 57
    const/high16 v8, 0x3f000000    # 0.5f

    .line 58
    .line 59
    :cond_0
    iget-boolean v10, v0, Lcom/narvii/user/profile/HeaderLayout;->isNewsFeed:Z

    .line 60
    .line 61
    if-eqz v10, :cond_1

    .line 62
    .line 63
    .line 64
    const v8, 0x3e99999a    # 0.3f

    .line 65
    :cond_1
    int-to-float v10, v2

    .line 66
    .line 67
    mul-float v12, v10, v8

    .line 68
    .line 69
    sub-float v12, v10, v12

    .line 70
    .line 71
    iget v13, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    .line 72
    int-to-float v13, v13

    .line 73
    mul-float/2addr v13, v8

    .line 74
    sub-float/2addr v10, v13

    .line 75
    .line 76
    .line 77
    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    .line 78
    move-result v10

    .line 79
    float-to-int v10, v10

    .line 80
    int-to-float v10, v10

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    move-result-object v12

    .line 85
    .line 86
    const/high16 v13, 0x41f00000    # 30.0f

    .line 87
    .line 88
    .line 89
    invoke-static {v12, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 90
    move-result v12

    .line 91
    sub-float/2addr v10, v12

    .line 92
    float-to-int v10, v10

    .line 93
    .line 94
    iget v12, v0, Lcom/narvii/user/profile/HeaderLayout;->offset:I

    .line 95
    add-int/2addr v10, v12

    .line 96
    int-to-float v10, v10

    .line 97
    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v12

    .line 101
    .line 102
    const/high16 v13, 0x41200000    # 10.0f

    .line 103
    .line 104
    .line 105
    invoke-static {v12, v13}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 106
    move-result v12

    .line 107
    sub-float/2addr v10, v12

    .line 108
    float-to-int v10, v10

    .line 109
    .line 110
    mul-int/lit8 v12, v5, 0x4

    .line 111
    .line 112
    sub-int v12, v4, v12

    .line 113
    .line 114
    sub-int v13, v10, v3

    .line 115
    sub-int/2addr v13, v5

    .line 116
    .line 117
    iget v14, v0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    .line 118
    .line 119
    .line 120
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 121
    move-result v13

    .line 122
    .line 123
    .line 124
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 125
    move-result v12

    .line 126
    .line 127
    div-int/lit8 v1, v1, 0x2

    .line 128
    .line 129
    div-int/lit8 v13, v12, 0x2

    .line 130
    .line 131
    sub-int v13, v1, v13

    .line 132
    add-int/2addr v5, v3

    .line 133
    .line 134
    sub-int v14, v10, v12

    .line 135
    .line 136
    .line 137
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    .line 138
    move-result v5

    .line 139
    .line 140
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->avatar:Landroid/view/View;

    .line 141
    .line 142
    add-int v15, v13, v12

    .line 143
    .line 144
    add-int v11, v5, v12

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v13, v5, v15, v11}, Landroid/view/View;->layout(IIII)V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 151
    move-result v14

    .line 152
    .line 153
    if-eqz v14, :cond_2

    .line 154
    .line 155
    mul-int/lit8 v14, v12, 0x8

    .line 156
    .line 157
    div-int/lit8 v14, v14, 0x64

    .line 158
    sub-int/2addr v13, v14

    .line 159
    goto :goto_0

    .line 160
    .line 161
    :cond_2
    mul-int/lit8 v14, v12, 0x3a

    .line 162
    .line 163
    div-int/lit8 v14, v14, 0x64

    .line 164
    add-int/2addr v13, v14

    .line 165
    .line 166
    :goto_0
    mul-int/lit8 v14, v12, -0xc

    .line 167
    .line 168
    div-int/lit8 v14, v14, 0x64

    .line 169
    add-int/2addr v5, v14

    .line 170
    .line 171
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    .line 175
    move-result v15

    .line 176
    add-int/2addr v15, v13

    .line 177
    .line 178
    iget-object v9, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 182
    move-result v9

    .line 183
    add-int/2addr v9, v5

    .line 184
    .line 185
    .line 186
    invoke-virtual {v14, v13, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    .line 187
    .line 188
    iget v5, v0, Lcom/narvii/user/profile/HeaderLayout;->avatarSize:I

    .line 189
    .line 190
    const/high16 v9, 0x3f800000    # 1.0f

    .line 191
    .line 192
    if-lt v12, v5, :cond_3

    .line 193
    move v5, v9

    .line 194
    goto :goto_1

    .line 195
    .line 196
    :cond_3
    sub-int v13, v5, v12

    .line 197
    int-to-float v13, v13

    .line 198
    mul-float/2addr v13, v9

    .line 199
    int-to-float v5, v5

    .line 200
    .line 201
    .line 202
    const v14, 0x3eb33333    # 0.35f

    .line 203
    mul-float/2addr v5, v14

    .line 204
    div-float/2addr v13, v5

    .line 205
    .line 206
    sub-float v5, v9, v13

    .line 207
    .line 208
    :goto_1
    iget-object v13, v0, Lcom/narvii/user/profile/HeaderLayout;->mood:Landroid/view/View;

    .line 209
    .line 210
    .line 211
    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    .line 212
    move-result v5

    .line 213
    const/4 v14, 0x0

    .line 214
    .line 215
    .line 216
    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    .line 217
    move-result v5

    .line 218
    .line 219
    .line 220
    invoke-virtual {v13, v5}, Landroid/view/View;->setAlpha(F)V

    .line 221
    int-to-float v5, v12

    .line 222
    .line 223
    .line 224
    const v12, 0x3f333333    # 0.7f

    .line 225
    mul-float/2addr v5, v12

    .line 226
    float-to-int v12, v5

    .line 227
    .line 228
    const/high16 v13, 0x41b80000    # 23.0f

    .line 229
    mul-float/2addr v5, v13

    .line 230
    .line 231
    const/high16 v13, 0x429e0000    # 79.0f

    .line 232
    div-float/2addr v5, v13

    .line 233
    float-to-int v5, v5

    .line 234
    .line 235
    div-int/lit8 v13, v12, 0x2

    .line 236
    .line 237
    sub-int v13, v1, v13

    .line 238
    sub-int/2addr v11, v5

    .line 239
    int-to-float v11, v11

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 243
    move-result-object v14

    .line 244
    .line 245
    const/high16 v15, 0x40000000    # 2.0f

    .line 246
    .line 247
    .line 248
    invoke-static {v14, v15}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 249
    move-result v14

    .line 250
    add-float/2addr v11, v14

    .line 251
    float-to-int v11, v11

    .line 252
    .line 253
    iget-object v14, v0, Lcom/narvii/user/profile/HeaderLayout;->aminoStaffBadge:Landroid/view/View;

    .line 254
    add-int/2addr v12, v13

    .line 255
    add-int/2addr v5, v11

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v13, v11, v12, v5}, Landroid/view/View;->layout(IIII)V

    .line 259
    .line 260
    iget v5, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    .line 261
    .line 262
    .line 263
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 264
    move-result v5

    .line 265
    int-to-float v5, v5

    .line 266
    mul-float/2addr v5, v8

    .line 267
    float-to-int v5, v5

    .line 268
    .line 269
    iget-object v8, v0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    .line 270
    .line 271
    if-eqz v8, :cond_4

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 275
    move-result v8

    .line 276
    sub-int/2addr v5, v8

    .line 277
    :cond_4
    int-to-float v5, v5

    .line 278
    .line 279
    .line 280
    const v8, 0x3d4ccccd    # 0.05f

    .line 281
    mul-float/2addr v5, v8

    .line 282
    float-to-int v5, v5

    .line 283
    add-int/2addr v10, v5

    .line 284
    .line 285
    iput v10, v0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    .line 286
    .line 287
    iget-object v5, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    .line 291
    move-result v5

    .line 292
    .line 293
    iget-object v8, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 297
    move-result v8

    .line 298
    .line 299
    div-int/lit8 v10, v5, 0x2

    .line 300
    sub-int/2addr v1, v10

    .line 301
    .line 302
    iget-object v10, v0, Lcom/narvii/user/profile/HeaderLayout;->mainView:Landroid/view/View;

    .line 303
    .line 304
    iget v11, v0, Lcom/narvii/user/profile/HeaderLayout;->yMain:I

    .line 305
    add-int/2addr v5, v1

    .line 306
    add-int/2addr v8, v11

    .line 307
    .line 308
    .line 309
    invoke-virtual {v10, v1, v11, v5, v8}, Landroid/view/View;->layout(IIII)V

    .line 310
    .line 311
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->nickname:Landroid/view/View;

    .line 312
    const/4 v5, 0x1

    .line 313
    .line 314
    .line 315
    invoke-direct {v0, v1, v6, v7, v5}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 316
    .line 317
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->membershipTitle:Landroid/view/View;

    .line 318
    .line 319
    .line 320
    invoke-direct {v0, v1, v6, v7, v5}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 321
    .line 322
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    .line 323
    .line 324
    .line 325
    invoke-direct {v0, v1, v6, v7, v5}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 326
    .line 327
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->scorebar:Landroid/view/View;

    .line 328
    .line 329
    if-eqz v1, :cond_5

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v1, v6, v7}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 333
    .line 334
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    .line 335
    .line 336
    if-eqz v1, :cond_5

    .line 337
    .line 338
    .line 339
    invoke-direct {v0, v1, v6, v7}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 340
    .line 341
    :cond_5
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    .line 342
    .line 343
    if-eqz v1, :cond_6

    .line 344
    .line 345
    .line 346
    invoke-direct {v0, v1, v6, v7}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 347
    .line 348
    :cond_6
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    .line 349
    .line 350
    .line 351
    invoke-direct {v0, v1, v6, v7, v5}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 352
    .line 353
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 354
    .line 355
    .line 356
    invoke-direct {v0, v1, v6, v7, v5}, Lcom/narvii/user/profile/HeaderLayout;->setAlpha(Landroid/view/View;IIZ)V

    .line 357
    .line 358
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 359
    .line 360
    if-eqz v1, :cond_c

    .line 361
    .line 362
    iget-boolean v5, v0, Lcom/narvii/user/profile/HeaderLayout;->blurReady:Z

    .line 363
    const/4 v6, 0x4

    .line 364
    .line 365
    if-eqz v5, :cond_b

    .line 366
    .line 367
    iget v5, v0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    .line 368
    .line 369
    if-ge v2, v5, :cond_7

    .line 370
    sub-int/2addr v2, v3

    .line 371
    sub-int/2addr v2, v4

    .line 372
    int-to-float v2, v2

    .line 373
    mul-float/2addr v2, v9

    .line 374
    sub-int/2addr v5, v3

    .line 375
    sub-int/2addr v5, v4

    .line 376
    int-to-float v3, v5

    .line 377
    div-float/2addr v2, v3

    .line 378
    :goto_2
    const/4 v3, 0x0

    .line 379
    goto :goto_3

    .line 380
    :cond_7
    move v2, v9

    .line 381
    goto :goto_2

    .line 382
    .line 383
    :goto_3
    cmpg-float v4, v2, v3

    .line 384
    .line 385
    if-gez v4, :cond_8

    .line 386
    move v2, v3

    .line 387
    .line 388
    :cond_8
    const/high16 v3, 0x3f000000    # 0.5f

    .line 389
    .line 390
    cmpl-float v4, v2, v3

    .line 391
    .line 392
    if-lez v4, :cond_9

    .line 393
    move v2, v9

    .line 394
    goto :goto_4

    .line 395
    :cond_9
    div-float/2addr v2, v3

    .line 396
    .line 397
    :goto_4
    cmpl-float v3, v2, v9

    .line 398
    .line 399
    if-ltz v3, :cond_a

    .line 400
    goto :goto_5

    .line 401
    :cond_a
    const/4 v6, 0x0

    .line 402
    .line 403
    .line 404
    :goto_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .line 406
    iget-object v1, v0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 407
    sub-float/2addr v9, v2

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 411
    goto :goto_6

    .line 412
    .line 413
    .line 414
    :cond_b
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :cond_c
    :goto_6
    return-void
.end method

.method public screenshotForSharing(Z)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0d25

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lcom/narvii/widget/SlideshowView;

    .line 10
    .line 11
    .line 12
    const v1, 0x7f0a0221

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/widget/BubbleBackground;

    .line 19
    .line 20
    .line 21
    const v2, 0x7f0a0e41

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/widget/SlideshowView;->getCurrentMedia()Lcom/narvii/model/Media;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    instance-of v0, v0, Lcom/narvii/app/NVContext;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Lcom/narvii/app/NVContext;

    .line 51
    .line 52
    const-string v4, "config"

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    check-cast v4, Lcom/narvii/config/ConfigService;

    .line 59
    .line 60
    .line 61
    const-string/jumbo v5, "themePack"

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v5}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 66
    .line 67
    check-cast v5, Lcom/narvii/theme/ThemePackService;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 71
    move-result v4

    .line 72
    .line 73
    sget-object v6, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v4, v6, v3, v3}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    if-eqz v2, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    :cond_0
    if-eqz v1, :cond_1

    .line 91
    .line 92
    const-string v4, "account"

    .line 93
    .line 94
    .line 95
    invoke-interface {v0, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/narvii/widget/BubbleBackground;->getUserId()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    move v0, v3

    .line 115
    .line 116
    .line 117
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 118
    move-result v4

    .line 119
    .line 120
    if-gtz v4, :cond_2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 131
    .line 132
    :cond_2
    iget-object v5, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    .line 133
    const/4 v6, 0x4

    .line 134
    .line 135
    const/16 v7, 0x8

    .line 136
    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 141
    move-result v5

    .line 142
    .line 143
    iget-object v8, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 147
    goto :goto_2

    .line 148
    :cond_3
    move v5, v7

    .line 149
    .line 150
    :goto_2
    iget-object v8, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 151
    .line 152
    if-eqz v8, :cond_4

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Lcom/narvii/util/layouts/NVFlowLayout;->isShowMore()Z

    .line 156
    move-result v8

    .line 157
    .line 158
    iget-object v9, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v3}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    move v8, v3

    .line 164
    .line 165
    :goto_3
    iget-object v9, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    .line 166
    .line 167
    if-eqz v9, :cond_5

    .line 168
    .line 169
    .line 170
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    .line 171
    move-result v9

    .line 172
    .line 173
    iget-object v10, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    move v9, v7

    .line 179
    .line 180
    :goto_4
    iget-object v10, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    .line 181
    .line 182
    if-eqz v10, :cond_6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 186
    move-result v10

    .line 187
    .line 188
    iget-object v11, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    move v10, v3

    .line 194
    .line 195
    :goto_5
    iget-object v11, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    .line 196
    .line 197
    if-eqz v11, :cond_8

    .line 198
    .line 199
    .line 200
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 201
    move-result v11

    .line 202
    .line 203
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    .line 204
    .line 205
    if-eqz p1, :cond_7

    .line 206
    move p1, v3

    .line 207
    goto :goto_6

    .line 208
    :cond_7
    move p1, v7

    .line 209
    .line 210
    .line 211
    :goto_6
    invoke-virtual {v12, p1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    goto :goto_7

    .line 213
    :cond_8
    move v11, v3

    .line 214
    .line 215
    :goto_7
    iget-object p1, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    .line 216
    .line 217
    if-eqz p1, :cond_9

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 221
    move-result p1

    .line 222
    .line 223
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 227
    goto :goto_8

    .line 228
    :cond_9
    move p1, v3

    .line 229
    .line 230
    :goto_8
    iget-object v12, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 231
    .line 232
    if-eqz v12, :cond_a

    .line 233
    .line 234
    .line 235
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 236
    move-result v12

    .line 237
    .line 238
    iget-object v13, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    goto :goto_9

    .line 243
    :cond_a
    move v12, v3

    .line 244
    .line 245
    .line 246
    :goto_9
    const v6, 0x3ecccccd    # 0.4f

    .line 247
    .line 248
    iput v6, p0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    .line 249
    .line 250
    const/high16 v6, 0x40000000    # 2.0f

    .line 251
    .line 252
    .line 253
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 254
    move-result v13

    .line 255
    .line 256
    .line 257
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 258
    move-result v6

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v13, v6}, Landroid/view/View;->measure(II)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0, v3, v3, v4, v4}, Landroid/view/View;->layout(IIII)V

    .line 265
    .line 266
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 267
    .line 268
    .line 269
    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 270
    move-result-object v3

    .line 271
    .line 272
    new-instance v4, Landroid/graphics/Canvas;

    .line 273
    .line 274
    .line 275
    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 279
    const/4 v4, 0x0

    .line 280
    .line 281
    iput v4, p0, Lcom/narvii/user/profile/HeaderLayout;->avOverride:F

    .line 282
    .line 283
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->editButton:Landroid/view/View;

    .line 284
    .line 285
    if-eqz v4, :cond_b

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 289
    .line 290
    :cond_b
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->userTitleFlowView:Lcom/narvii/user/title/UserTitleFlowView;

    .line 291
    .line 292
    if-eqz v4, :cond_c

    .line 293
    .line 294
    .line 295
    invoke-virtual {v4, v8}, Lcom/narvii/util/layouts/NVFlowLayout;->setShowMore(Z)V

    .line 296
    .line 297
    :cond_c
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->buttonLayout:Landroid/view/View;

    .line 298
    .line 299
    if-eqz v4, :cond_d

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    .line 304
    :cond_d
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->achievements:Landroid/view/View;

    .line 305
    .line 306
    if-eqz v4, :cond_e

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 310
    .line 311
    :cond_e
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->streakBrokenTag:Landroid/view/View;

    .line 312
    .line 313
    if-eqz v4, :cond_f

    .line 314
    .line 315
    .line 316
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    :cond_f
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 319
    .line 320
    if-eqz v4, :cond_10

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    :cond_10
    iget-object v4, p0, Lcom/narvii/user/profile/HeaderLayout;->balanceView:Landroid/view/View;

    .line 326
    .line 327
    if-eqz v4, :cond_11

    .line 328
    .line 329
    .line 330
    invoke-virtual {v4, p1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    :cond_11
    if-eqz v2, :cond_12

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    :cond_12
    if-eqz v0, :cond_13

    .line 338
    .line 339
    if-eqz v1, :cond_13

    .line 340
    const/4 p1, 0x0

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1, p1}, Lcom/narvii/widget/BubbleBackground;->set(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :cond_13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 347
    return-object v3
.end method

.method public setH0(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/user/profile/HeaderLayout;->h0:I

    return-void
.end method

.method public setNewsFeed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/user/profile/HeaderLayout;->isNewsFeed:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/user/profile/HeaderLayout;->offset:I

    return-void
.end method
