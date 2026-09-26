.class public Lcom/narvii/sharedfolder/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field authorLayout:Landroid/view/View;

.field public avatar:Lcom/narvii/widget/UserAvatarLayout;

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field public cover:Lcom/narvii/widget/NVImageView;

.field public description:Landroid/widget/TextView;

.field public gradient:Landroid/view/View;

.field height1:I

.field lock:Landroid/view/View;

.field nicknameView:Lcom/narvii/widget/NicknameView;

.field public photosCount:Landroid/widget/TextView;

.field sharedAlbum:Lcom/narvii/model/SharedAlbum;

.field public title:Landroid/widget/TextView;

.field public title2:Landroid/widget/TextView;

.field public votesCount:Landroid/widget/TextView;


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

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setAlpha(Landroid/view/View;II)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-gt v0, p2, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 11
    const/4 p2, 0x4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-lt v0, p3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    sub-int v0, p3, v0

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float/2addr v0, v2

    .line 32
    sub-int/2addr p3, p2

    .line 33
    int-to-float p2, p3

    .line 34
    div-float/2addr v0, p2

    .line 35
    sub-float/2addr v2, v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result p1

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0169

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    .line 20
    .line 21
    if-nez p1, :cond_2

    .line 22
    return-void

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-nez p1, :cond_3

    .line 41
    return-void

    .line 42
    .line 43
    .line 44
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/narvii/sharedfolder/HeaderLayout;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a03cf

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->cover:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a0e9e

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0ea0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0ae4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroid/widget/TextView;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->photosCount:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0ffd

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->votesCount:Landroid/widget/TextView;

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a039d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    check-cast v0, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a01da

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 81
    .line 82
    .line 83
    const v0, 0x7f0a09f9

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    check-cast v0, Lcom/narvii/widget/NicknameView;

    .line 90
    .line 91
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 92
    .line 93
    .line 94
    const v0, 0x7f0a0f36

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object v0

    .line 99
    .line 100
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 101
    .line 102
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 103
    .line 104
    .line 105
    const v0, 0x7f0a082c

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    move-result-object v0

    .line 110
    .line 111
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->lock:Landroid/view/View;

    .line 112
    .line 113
    .line 114
    const v0, 0x7f0a03d0

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->gradient:Landroid/view/View;

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a0169

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    iput-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->authorLayout:Landroid/view/View;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 142
    move-result v0

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    check-cast v1, Lcom/narvii/app/NVActivity;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 152
    move-result v1

    .line 153
    .line 154
    iget-object v2, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 161
    .line 162
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 163
    .line 164
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 165
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    check-cast p2, Lcom/narvii/app/NVActivity;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 26
    move-result p2

    .line 27
    .line 28
    add-int p3, p1, p2

    .line 29
    .line 30
    div-int/lit8 p4, p3, 0x2

    .line 31
    .line 32
    add-int p5, p3, p4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x0

    .line 38
    move v2, v1

    .line 39
    .line 40
    :goto_0
    const-string v3, "fade"

    .line 41
    .line 42
    if-ge v2, v0, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v3

    .line 55
    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, v4, p4, p5}, Lcom/narvii/sharedfolder/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 60
    .line 61
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 66
    move-result p4

    .line 67
    const/4 v0, 0x0

    .line 68
    const/4 v2, 0x4

    .line 69
    .line 70
    const/high16 v4, 0x3f800000    # 1.0f

    .line 71
    .line 72
    if-le p4, p5, :cond_2

    .line 73
    .line 74
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_2
    if-gt p4, p3, :cond_3

    .line 86
    .line 87
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    .line 92
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 96
    goto :goto_1

    .line 97
    .line 98
    :cond_3
    sub-int v5, p5, p4

    .line 99
    int-to-float v5, v5

    .line 100
    mul-float/2addr v5, v4

    .line 101
    sub-int/2addr p5, p3

    .line 102
    int-to-float p3, p5

    .line 103
    div-float/2addr v5, p3

    .line 104
    .line 105
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    iget-object p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 114
    .line 115
    :goto_1
    iget p3, p0, Lcom/narvii/sharedfolder/HeaderLayout;->height1:I

    .line 116
    .line 117
    div-int/lit8 p3, p3, 0x2

    .line 118
    .line 119
    if-ge p4, p3, :cond_4

    .line 120
    sub-int/2addr p4, p1

    .line 121
    sub-int/2addr p4, p2

    .line 122
    int-to-float p4, p4

    .line 123
    mul-float/2addr p4, v4

    .line 124
    sub-int/2addr p3, p1

    .line 125
    sub-int/2addr p3, p2

    .line 126
    int-to-float p1, p3

    .line 127
    div-float/2addr p4, p1

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move p4, v4

    .line 130
    .line 131
    :goto_2
    cmpg-float p1, p4, v0

    .line 132
    .line 133
    if-gez p1, :cond_5

    .line 134
    move p4, v0

    .line 135
    .line 136
    :cond_5
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 137
    .line 138
    cmpl-float p2, p4, v4

    .line 139
    .line 140
    if-ltz p2, :cond_6

    .line 141
    move p2, v2

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    move p2, v1

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 149
    .line 150
    const/high16 p2, 0x66000000

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 154
    .line 155
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 156
    sub-float/2addr v4, p4

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 160
    .line 161
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->gradient:Landroid/view/View;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    .line 165
    .line 166
    cmpl-float p1, p4, v0

    .line 167
    .line 168
    if-nez p1, :cond_8

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 172
    move-result p1

    .line 173
    .line 174
    :goto_4
    if-ge v1, p1, :cond_8

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 178
    move-result-object p2

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 182
    move-result-object p3

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    move-result p3

    .line 187
    .line 188
    if-eqz p3, :cond_7

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 197
    goto :goto_4

    .line 198
    .line 199
    :cond_8
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 200
    .line 201
    if-eqz p1, :cond_9

    .line 202
    .line 203
    iget-object p1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result p1

    .line 208
    .line 209
    if-eqz p1, :cond_a

    .line 210
    .line 211
    :cond_9
    iget-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    .line 212
    .line 213
    const/16 p2, 0x8

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :cond_a
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->height1:I

    return-void
.end method

.method public setSharedAlbum(Lcom/narvii/model/SharedAlbum;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Lcom/narvii/sharedfolder/HeaderLayout;->sharedAlbum:Lcom/narvii/model/SharedAlbum;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title:Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->title2:Landroid/widget/TextView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lcom/narvii/model/SharedAlbum;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->lock:Landroid/view/View;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isLocked()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    const/16 v2, 0x8

    .line 42
    const/4 v3, 0x0

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    move v1, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v1, v2

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->cover:Lcom/narvii/widget/NVImageView;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->getCoverImage()Lcom/narvii/model/Media;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 60
    .line 61
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->description:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->description:Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v1

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move v2, v3

    .line 79
    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->photosCount:Landroid/widget/TextView;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 87
    move-result-object v1

    .line 88
    .line 89
    iget v2, p1, Lcom/narvii/model/SharedAlbum;->filesCount:I

    .line 90
    .line 91
    .line 92
    const v4, 0x7f120dfd

    .line 93
    .line 94
    .line 95
    const v5, 0x7f120d2c

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->votesCount:Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    iget v2, p1, Lcom/narvii/model/SharedAlbum;->votesCount:I

    .line 111
    .line 112
    .line 113
    const v4, 0x7f120dfa

    .line 114
    .line 115
    .line 116
    const v5, 0x7f120d28

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2, v4, v5}, Lcom/narvii/util/text/TextUtils;->getCountText(Landroid/content/Context;III)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 126
    .line 127
    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 133
    .line 134
    const/high16 v1, 0x3f800000    # 1.0f

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarStroke(FZ)V

    .line 138
    .line 139
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    move-result-object v1

    .line 144
    .line 145
    const/high16 v2, 0x40000000    # 2.0f

    .line 146
    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 149
    move-result v1

    .line 150
    .line 151
    const-string v2, "#38000000"

    .line 152
    .line 153
    .line 154
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 155
    move-result v2

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1, v2, v3}, Lcom/narvii/widget/UserAvatarLayout;->setAvatarShadow(IIZ)V

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->avatar:Lcom/narvii/widget/UserAvatarLayout;

    .line 161
    .line 162
    iget-object v1, p1, Lcom/narvii/model/SharedAlbum;->author:Lcom/narvii/model/User;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v1}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 166
    .line 167
    iget-object v0, p0, Lcom/narvii/sharedfolder/HeaderLayout;->authorLayout:Landroid/view/View;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/narvii/model/SharedAlbum;->isDefaultAlbum()Z

    .line 171
    move-result p1

    .line 172
    .line 173
    xor-int/lit8 p1, p1, 0x1

    .line 174
    .line 175
    .line 176
    invoke-static {v0, p1}, Lcom/narvii/util/ViewUtils;->show(Landroid/view/View;Z)V

    .line 177
    return-void
.end method
