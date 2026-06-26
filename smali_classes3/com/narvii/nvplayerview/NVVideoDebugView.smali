.class public Lcom/narvii/nvplayerview/NVVideoDebugView;
.super Landroid/widget/LinearLayout;
.source "NVVideoDebugView.java"


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

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mContext:Landroid/content/Context;

    const p1, 0x44444444

    .line 58
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 64
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->checkStrategyInfo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->checkStrategyInfo:Z

    .line 66
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "prefs"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v2, "VideoStrategyInfo"

    .line 67
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    const-string v2, "exo hit cache: false"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    const-string v2, "first-frame: 0ms"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    .line 77
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    const-string v2, "status: idle"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    const-string v2, "video support 360p: false"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    const-string v2, "dim: 0x0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    const-string v2, "0kbps"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    new-instance v2, Lcom/narvii/model/DebugInfo;

    invoke-direct {v2}, Lcom/narvii/model/DebugInfo;-><init>()V

    invoke-virtual {v2}, Lcom/narvii/model/DebugInfo;->toStringList()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-direct {p0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->prepareTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget-boolean v0, Lcom/narvii/nvplayerview/NVVideoDebugView;->showStrategyInfo:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private prepareTextView()Landroid/widget/TextView;
    .locals 3

    .line 189
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 190
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/4 v1, -0x1

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    const-string v0, "false"

    .line 116
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setHitCacheText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setResolutionText(II)V

    const-wide/16 v1, 0x0

    .line 118
    invoke-virtual {p0, v1, v2}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setFromSettingToFirstFrameText(J)V

    const/4 v1, 0x1

    .line 119
    invoke-virtual {p0, v1}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setPlayerStatus(I)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setSupportLowResText(Z)V

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    const-string v0, ""

    .line 122
    invoke-virtual {p0, v0}, Lcom/narvii/nvplayerview/NVVideoDebugView;->setErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorText(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFromSettingToFirstFrameText(J)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mFromSettingToFirstFrameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first-frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHitCacheText(Ljava/lang/String;)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mHitCacheText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exo hit cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPlayerStatus(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    const-string v0, "status: idle"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 141
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    const-string v0, "status: buffering"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 143
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    const-string v0, "status: ready"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 145
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPlayerStatus:Landroid/widget/TextView;

    const-string v0, "status: end"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreloadText(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mPreloadText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setResolutionText(II)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mResolutionText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStrategyInfoText(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 5

    const-string v0, "\n"

    .line 162
    iget-object v1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    :try_start_0
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v3, Lcom/narvii/nvplayerview/NVVideoDebugView$1;

    invoke-direct {v3, p0}, Lcom/narvii/nvplayerview/NVVideoDebugView$1;-><init>(Lcom/narvii/nvplayerview/NVVideoDebugView;)V

    invoke-virtual {v2, p1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 174
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mStrategyInfoText:Landroid/widget/TextView;

    new-instance v0, Lcom/narvii/model/DebugInfo;

    invoke-direct {v0}, Lcom/narvii/model/DebugInfo;-><init>()V

    invoke-virtual {v0}, Lcom/narvii/model/DebugInfo;->toStringList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setSupportLowResText(Z)V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/narvii/nvplayerview/NVVideoDebugView;->mSupportLowResText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video support 360p: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
