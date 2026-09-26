.class public Lcom/narvii/livelayer/LiveLayerFragment;
.super Lcom/narvii/app/NVFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/NVFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/narvii/livelayer/LiveLayerFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/livelayer/LiveLayerFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f13000d

    return v0
.end method

.method public hasPostEntry()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    if-nez p1, :cond_4

    .line 23
    .line 24
    const-string p1, "targetTopic"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v0, "users-chatting-public"

    .line 31
    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x1

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;

    .line 40
    .line 41
    .line 42
    invoke-direct {p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailChattingFragment;-><init>()V

    .line 43
    :goto_0
    move v0, v2

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    const-string v0, "users-live-chatting-public"

    .line 47
    .line 48
    .line 49
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    new-instance p1, Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailLiveChattingFragment;-><init>()V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_1
    new-instance p1, Lcom/narvii/livelayer/LiveLayerMainFragment;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Lcom/narvii/livelayer/LiveLayerMainFragment;-><init>()V

    .line 64
    move v0, v1

    .line 65
    .line 66
    :goto_1
    const-string v3, "Source"

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    new-instance v4, Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    const-string v6, "Speed Dial"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v6

    .line 86
    .line 87
    if-eqz v6, :cond_2

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_2
    const-string v5, "Live Layer"

    .line 91
    .line 92
    .line 93
    :goto_2
    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 100
    move-result-object v4

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->q()Landroidx/fragment/app/FragmentTransaction;

    .line 104
    move-result-object v4

    .line 105
    .line 106
    .line 107
    const v5, 0x7f0a05ff

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v5, p1}, Landroidx/fragment/app/FragmentTransaction;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 111
    move-result-object p1

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->j()I

    .line 115
    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    const-string p1, "statistics"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 125
    .line 126
    const-string v0, "Online Now Tapped"

    .line 127
    .line 128
    .line 129
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 130
    move-result-object p1

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v3}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v3, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 138
    move-result-object p1

    .line 139
    .line 140
    const-string v0, "Online Now Tapped Total"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 144
    .line 145
    const-string p1, "logging"

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 150
    .line 151
    check-cast p1, Lcom/narvii/util/logging/LoggingService;

    .line 152
    const/4 v0, 0x2

    .line 153
    .line 154
    new-array v0, v0, [Ljava/lang/Object;

    .line 155
    .line 156
    const-string v3, "eventSource"

    .line 157
    .line 158
    aput-object v3, v0, v2

    .line 159
    .line 160
    const-string v2, "GlobalLiveLayerWidget"

    .line 161
    .line 162
    aput-object v2, v0, v1

    .line 163
    .line 164
    const-string v1, "LiveLayerOpened"

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v1, v0}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const p3, 0x7f0d02e4

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->onResume()V

    .line 4
    .line 5
    const-string v0, "community_online"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setScreenName(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/app/NVFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string p2, "config"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    check-cast p2, Lcom/narvii/config/ConfigService;

    .line 12
    .line 13
    const-string v0, "themePack"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    check-cast v0, Lcom/narvii/theme/ThemePackService;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0a0e6c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    check-cast v1, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/narvii/livelayer/BackgroundHelper;->getDynamicBackground()Landroid/graphics/drawable/Drawable;

    .line 36
    move-result-object v2

    .line 37
    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    sget-object v2, Lcom/narvii/theme/ThemePackService$ThemeObject;->BACKGROUND:Lcom/narvii/theme/ThemePackService$ThemeObject;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 52
    move-result-object v4

    .line 53
    .line 54
    .line 55
    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    .line 56
    move-result v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/narvii/theme/ThemePackService;->getDrawable(ILcom/narvii/theme/ThemePackService$ThemeObject;II)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v2

    .line 61
    .line 62
    :cond_0
    if-eqz v2, :cond_1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_1
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p2}, Lcom/narvii/theme/ThemePackService;->getThemeColor(I)I

    .line 72
    move-result p2

    .line 73
    .line 74
    .line 75
    invoke-direct {v3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    move-result-object p2

    .line 83
    .line 84
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 99
    .line 100
    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Lcom/narvii/livelayer/BackgroundHelper;->saveWithDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    .line 105
    .line 106
    const p2, 0x7f0a05ff

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object p2

    .line 111
    .line 112
    check-cast p2, Lcom/narvii/widget/SwipeableLayout;

    .line 113
    .line 114
    .line 115
    const v0, 0x7f0a0e6d

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    move-result-object v0

    .line 120
    .line 121
    check-cast v0, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;

    .line 122
    const/4 v1, 0x2

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v1}, Lcom/narvii/widget/SwipeableLayout;->setAllowDirection(I)V

    .line 126
    .line 127
    const-string v2, "fullScreenMode"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lcom/narvii/app/NVFragment;->getBooleanParam(Ljava/lang/String;)Z

    .line 131
    move-result v2

    .line 132
    const/4 v3, 0x0

    .line 133
    .line 134
    if-eqz v2, :cond_2

    .line 135
    move v4, v3

    .line 136
    goto :goto_1

    .line 137
    .line 138
    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 140
    move-result-object v4

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object v4

    .line 145
    .line 146
    .line 147
    const v5, 0x7f0704f6

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    move-result v4

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p2, v4, v4, v3, v3}, Lcom/narvii/widget/SwipeableLayout;->setRadius(IIII)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v4, v4, v3, v3}, Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;->setRadius(IIII)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 161
    move-result-object v4

    .line 162
    .line 163
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    .line 165
    if-eqz v2, :cond_3

    .line 166
    move v5, v3

    .line 167
    goto :goto_2

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 171
    move-result v5

    .line 172
    div-int/2addr v5, v1

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 176
    move-result v6

    .line 177
    add-int/2addr v5, v6

    .line 178
    .line 179
    :goto_2
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    move-result-object v4

    .line 184
    .line 185
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 186
    .line 187
    if-eqz v2, :cond_4

    .line 188
    goto :goto_3

    .line 189
    .line 190
    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getActionBarOverlaySize()I

    .line 192
    move-result v2

    .line 193
    div-int/2addr v2, v1

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getStatusBarOverlaySize()I

    .line 197
    move-result v1

    .line 198
    .line 199
    add-int v3, v2, v1

    .line 200
    .line 201
    :goto_3
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 205
    move-result-object v1

    .line 206
    .line 207
    instance-of v1, v1, Lcom/narvii/livelayer/LiveLayerActivity;

    .line 208
    .line 209
    if-eqz v1, :cond_5

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    check-cast v1, Lcom/narvii/livelayer/LiveLayerActivity;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/narvii/livelayer/LiveLayerActivity;->getBackgroundMask()Landroid/view/View;

    .line 219
    move-result-object v1

    .line 220
    goto :goto_4

    .line 221
    :cond_5
    const/4 v1, 0x0

    .line 222
    .line 223
    :goto_4
    new-instance v2, Lcom/narvii/livelayer/LiveLayerFragment$1;

    .line 224
    .line 225
    .line 226
    invoke-direct {v2, p0, v1, p2, v0}, Lcom/narvii/livelayer/LiveLayerFragment$1;-><init>(Lcom/narvii/livelayer/LiveLayerFragment;Landroid/view/View;Lcom/narvii/widget/SwipeableLayout;Lcom/narvii/livelayer/BackgroundBlurWithTopRadiusLayout;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, v2}, Lcom/narvii/widget/SwipeableLayout;->setSwipeListener(Lcom/narvii/widget/SwipeableLayout$SwipeListener;)V

    .line 230
    .line 231
    .line 232
    const p2, 0x7f0a0316

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    move-result-object p1

    .line 237
    .line 238
    new-instance p2, Lcom/narvii/livelayer/a;

    .line 239
    .line 240
    .line 241
    invoke-direct {p2, p0}, Lcom/narvii/livelayer/a;-><init>(Lcom/narvii/livelayer/LiveLayerFragment;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    return-void
.end method
