.class public Lcom/narvii/nvplayerview/NVVideoDebugView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NVVideoDebugView"

.field public static final VIDEO_DEBUG_PREFS:Ljava/lang/String; = "VideoDebug"

.field public static final VIDEO_STRATEGY_INFO:Ljava/lang/String; = "VideoStrategyInfo"

.field private static checkStrategyInfo:Z

.field public static showStrategyInfo:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mErrorText:Landroid/widget/TextView;

.field private mFromSettingToFirstFrameText:Landroid/widget/TextView;

.field private mHitCacheText:Landroid/widget/TextView;

.field private mPlayerStatus:Landroid/widget/TextView;

.field private mPreloadText:Landroid/widget/TextView;

.field private mResolutionText:Landroid/widget/TextView;

.field private mStrategyInfoText:Landroid/widget/TextView;

.field private mSupportLowResText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mContext:Landroid/content/Context;

    const p1, 0x44444444

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->checkStrategyInfo:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->checkStrategyInfo:Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v2, "prefs"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Landroid/content/SharedPreferences;

    .line 25
    .line 26
    const-string v2, "VideoStrategyInfo"

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result v0

    .line 31
    .line 32
    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string v2, "exo hit cache: false"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v2, "first-frame: 0ms"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string/jumbo v2, "status: idle"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    .line 72
    .line 73
    const-string/jumbo v2, "video support 360p: false"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 80
    move-result-object v0

    .line 81
    .line 82
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    .line 83
    .line 84
    const-string v2, "dim: 0x0"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    .line 94
    .line 95
    const-string v2, "0kbps"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 105
    .line 106
    new-instance v2, Lcom/narvii/model/DebugInfo;

    .line 107
    .line 108
    .line 109
    invoke-direct {v2}, Lcom/narvii/model/DebugInfo;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/narvii/model/DebugInfo;->toStringList()Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    .line 120
    move-result-object v0

    .line 121
    .line 122
    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    .line 123
    .line 124
    const-string v2, ""

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    .line 130
    .line 131
    const/16 v2, 0x8

    .line 132
    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    goto :goto_0

    .line 175
    .line 176
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    .line 196
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    .line 201
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    .line 206
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    .line 211
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :goto_0
    return-void
.end method

.method private prepareTextView()Landroid/widget/TextView;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Landroid/widget/TextView;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    const/high16 v1, 0x41400000    # 12.0f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 17
    const/4 v1, -0x1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    const/4 v2, -0x2

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "false"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setHitCacheText(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setResolutionText(II)V

    .line 10
    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setFromSettingToFirstFrameText(J)V

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPlayerStatus(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setSupportLowResText(Z)V

    .line 22
    const/4 v0, 0x0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setErrorText(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setFromSettingToFirstFrameText(J)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "first-frame: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p1, "ms"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public setHitCacheText(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "exo hit cache: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method

.method public setPlayerStatus(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string/jumbo v0, "status: idle"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string/jumbo v0, "status: buffering"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x3

    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 28
    .line 29
    const-string/jumbo v0, "status: ready"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x4

    .line 35
    .line 36
    if-ne p1, v0, :cond_3

    .line 37
    .line 38
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 39
    .line 40
    const-string/jumbo v0, "status: end"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_3
    :goto_0
    return-void
.end method

.method public setPreloadText(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public setResolutionText(II)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "dim: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo p1, "x"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    return-void
.end method

.method public setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "\n"

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    return-void

    .line 12
    .line 13
    :cond_0
    if-eqz p1, :cond_3

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 21
    .line 22
    new-instance v3, Lcom/narvii/nvplayerview/NVVideoDebugView$1;

    .line 23
    .line 24
    .line 25
    invoke-direct {v3, p0}, Lcom/narvii/nvplayerview/NVVideoDebugView$1;-><init>(Lcom/narvii/nvplayerview/NVVideoDebugView;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    check-cast p1, Ljava/util/Map;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v4, ":"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception p1

    .line 84
    goto :goto_2

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    .line 93
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    goto :goto_3

    .line 102
    .line 103
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 104
    .line 105
    new-instance v0, Lcom/narvii/model/DebugInfo;

    .line 106
    .line 107
    .line 108
    invoke-direct {v0}, Lcom/narvii/model/DebugInfo;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/narvii/model/DebugInfo;->toStringList()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_3
    return-void
.end method

.method public setSupportLowResText(Z)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string/jumbo v2, "video support 360p: "

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    return-void
.end method
