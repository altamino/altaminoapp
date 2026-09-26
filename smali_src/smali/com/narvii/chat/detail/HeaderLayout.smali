.class public Lcom/narvii/chat/detail/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;
    }
.end annotation


# instance fields
.field private absentView:Landroid/widget/TextView;

.field private blurReady:Z

.field private blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field private chatThread:Lcom/narvii/model/ChatThread;

.field height1:I

.field private imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

.field private nvContext:Lcom/narvii/app/NVContext;

.field private tvTitle:Landroid/widget/TextView;

.field userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

.field userClickListener:Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/detail/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

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
.method protected onFinishInflate()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a01da

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a06eb

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Lcom/narvii/widget/FullsizeImageView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0e9e

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
    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 37
    .line 38
    .line 39
    const v0, 0x7f0a0284

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
    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    const v0, 0x7f0a0f36

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 59
    const/4 v1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    const/high16 v1, 0x40800000    # 4.0f

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 77
    move-result v0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    .line 84
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    .line 89
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 90
    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    .line 94
    .line 95
    if-eqz v0, :cond_0

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    .line 2
    iget-boolean p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

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
    iput-boolean p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 14
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p3

    .line 16
    .line 17
    check-cast p3, Lcom/narvii/app/NVActivity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 21
    move-result p3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    check-cast p4, Lcom/narvii/app/NVActivity;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 31
    move-result p4

    .line 32
    .line 33
    add-int p5, p3, p4

    .line 34
    .line 35
    div-int/lit8 v0, p5, 0x2

    .line 36
    .line 37
    add-int v1, p5, v0

    .line 38
    .line 39
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 43
    move-result v2

    .line 44
    .line 45
    sub-int v3, p1, v2

    .line 46
    .line 47
    div-int/lit8 v3, v3, 0x2

    .line 48
    int-to-float v4, v2

    .line 49
    .line 50
    .line 51
    const v5, 0x3f0f5c29    # 0.56f

    .line 52
    mul-float/2addr v4, v5

    .line 53
    .line 54
    const/high16 v5, 0x3e800000    # 0.25f

    .line 55
    mul-float/2addr v4, v5

    .line 56
    float-to-int v4, v4

    .line 57
    .line 58
    sub-int v5, p2, v2

    .line 59
    sub-int/2addr v5, v4

    .line 60
    .line 61
    iget-object v6, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 62
    .line 63
    add-int v7, v3, v2

    .line 64
    .line 65
    add-int v8, v5, v2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 69
    .line 70
    iget-object v6, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    .line 71
    .line 72
    div-int/lit8 v2, v2, 0x2

    .line 73
    .line 74
    sub-int v9, p2, v2

    .line 75
    sub-int/2addr v9, v4

    .line 76
    .line 77
    .line 78
    invoke-static {v9, p5}, Ljava/lang/Math;->max(II)I

    .line 79
    move-result v4

    .line 80
    const/4 v9, 0x0

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v9, v9, p1, v4}, Landroid/view/View;->layout(IIII)V

    .line 84
    .line 85
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 89
    move-result v4

    .line 90
    .line 91
    if-nez v4, :cond_0

    .line 92
    .line 93
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 97
    .line 98
    :cond_0
    iget-object v3, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 102
    move-result v3

    .line 103
    .line 104
    iget-object v4, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 108
    move-result v4

    .line 109
    .line 110
    sub-int v5, p2, p4

    .line 111
    sub-int/2addr v5, p3

    .line 112
    sub-int/2addr v5, v3

    .line 113
    .line 114
    div-int/lit8 v5, v5, 0x2

    .line 115
    add-int/2addr p5, v5

    .line 116
    sub-int/2addr p5, v2

    .line 117
    .line 118
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 119
    .line 120
    sub-int v5, p1, v4

    .line 121
    .line 122
    div-int/lit8 v5, v5, 0x2

    .line 123
    add-int/2addr p1, v4

    .line 124
    .line 125
    div-int/lit8 p1, p1, 0x2

    .line 126
    add-int/2addr v3, p5

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v5, p5, p1, v3}, Landroid/view/View;->layout(IIII)V

    .line 130
    .line 131
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 132
    .line 133
    .line 134
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 135
    .line 136
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1, v0, v1}, Lcom/narvii/chat/detail/HeaderLayout;->setAlpha(Landroid/view/View;II)V

    .line 140
    .line 141
    iget p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->height1:I

    .line 142
    .line 143
    iget-boolean p5, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurReady:Z

    .line 144
    const/4 v0, 0x4

    .line 145
    .line 146
    if-eqz p5, :cond_4

    .line 147
    .line 148
    div-int/lit8 p1, p1, 0x2

    .line 149
    .line 150
    const/high16 p5, 0x3f800000    # 1.0f

    .line 151
    .line 152
    if-ge p2, p1, :cond_1

    .line 153
    sub-int/2addr p2, p3

    .line 154
    sub-int/2addr p2, p4

    .line 155
    int-to-float p2, p2

    .line 156
    mul-float/2addr p2, p5

    .line 157
    sub-int/2addr p1, p3

    .line 158
    sub-int/2addr p1, p4

    .line 159
    int-to-float p1, p1

    .line 160
    div-float/2addr p2, p1

    .line 161
    goto :goto_0

    .line 162
    :cond_1
    move p2, p5

    .line 163
    :goto_0
    const/4 p1, 0x0

    .line 164
    .line 165
    cmpg-float p3, p2, p1

    .line 166
    .line 167
    if-gez p3, :cond_2

    .line 168
    move p2, p1

    .line 169
    .line 170
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 171
    .line 172
    cmpl-float p3, p2, p5

    .line 173
    .line 174
    if-ltz p3, :cond_3

    .line 175
    move v9, v0

    .line 176
    .line 177
    .line 178
    :cond_3
    invoke-virtual {p1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 181
    sub-float/2addr p5, p2

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    .line 185
    goto :goto_1

    .line 186
    .line 187
    :cond_4
    iget-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :goto_1
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->height1:I

    return-void
.end method

.method public setThread(Lcom/narvii/model/ChatThread;)V
    .locals 5

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->chatThread:Lcom/narvii/model/ChatThread;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/narvii/model/ChatThread;->icon:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->isJumpstart()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v0, "res://ic_amino"

    .line 18
    .line 19
    :cond_1
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 22
    .line 23
    if-eqz v1, :cond_3

    .line 24
    .line 25
    const-string v0, "config"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 34
    .line 35
    const-string v2, "community"

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 45
    move-result v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    .line 68
    const v3, 0x7f0600a1

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    .line 82
    move-result v1

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    invoke-virtual {v2, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :cond_3
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->imgThreadBg:Lcom/narvii/widget/FullsizeImageView;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 95
    .line 96
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->tvTitle:Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->title:Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getAuthor()Lcom/narvii/model/User;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    if-nez v0, :cond_6

    .line 108
    .line 109
    iget-object v1, p1, Lcom/narvii/model/ChatThread;->membersSummary:Ljava/util/List;

    .line 110
    .line 111
    if-eqz v1, :cond_6

    .line 112
    .line 113
    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v2

    .line 120
    .line 121
    if-eqz v2, :cond_6

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v2

    .line 126
    .line 127
    check-cast v2, Lcom/narvii/model/User;

    .line 128
    .line 129
    iget-object v3, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    .line 135
    .line 136
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    move-result v3

    .line 138
    .line 139
    if-eqz v3, :cond_5

    .line 140
    move-object v0, v2

    .line 141
    .line 142
    :cond_6
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 146
    .line 147
    iget-object v1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userAvatarLayout:Lcom/narvii/widget/UserAvatarLayout;

    .line 148
    .line 149
    new-instance v2, Lcom/narvii/chat/detail/HeaderLayout$1;

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/detail/HeaderLayout$1;-><init>(Lcom/narvii/chat/detail/HeaderLayout;Lcom/narvii/model/User;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    iget-object v0, p0, Lcom/narvii/chat/detail/HeaderLayout;->absentView:Landroid/widget/TextView;

    .line 158
    .line 159
    iget p1, p1, Lcom/narvii/model/ChatThread;->condition:I

    .line 160
    const/4 v1, 0x2

    .line 161
    .line 162
    if-ne p1, v1, :cond_7

    .line 163
    const/4 p1, 0x0

    .line 164
    goto :goto_2

    .line 165
    :cond_7
    const/4 p1, 0x4

    .line 166
    .line 167
    .line 168
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public setUserClickListener(Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/chat/detail/HeaderLayout;->userClickListener:Lcom/narvii/chat/detail/HeaderLayout$UserClickListener;

    return-void
.end method
