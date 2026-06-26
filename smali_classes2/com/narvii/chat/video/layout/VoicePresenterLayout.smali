.class public Lcom/narvii/chat/video/layout/VoicePresenterLayout;
.super Landroid/widget/FrameLayout;
.source "VoicePresenterLayout.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcDataUpdateHandler;


# static fields
.field private static final DEFAULT_CELL_HEIGHT:I = 0x61

.field private static final DEFAULT_CELL_WIDTH:I = 0x77

.field public static final DISPLAY_MODE_GRID:I = 0x0

.field public static final DISPLAY_MODE_PAIR:I = 0x1

.field private static final GRID_COLUMN_COUNT:I = 0x3

.field private static final GRID_MODE_HEIGHT_RATIO:F = 0.85f

.field private static final GRID_MODE_WIDTH_RATIO:F = 0.316f

.field private static final GRID_ROW_COUNT:I = 0x2

.field private static final PAIR_CHILD_COUNT:I = 0x2

.field private static final PAIR_MODE_HEIGHT_RATIO:F = 0.33f

.field private static final PAIR_MODE_WIDTH_RATIO:F = 1.0f


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private displayMode:I

.field private gridModeContainer:Landroid/widget/LinearLayout;

.field private groupVoicePresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VoicePresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

.field private localChannelUid:I

.field localMutedUidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ndcId:I

.field nvContext:Lcom/narvii/app/NVContext;

.field private organizerUid:I

.field private pairModeContainer:Landroid/widget/LinearLayout;

.field private pairVoicePresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VoicePresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private screenWidth:I

.field userList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 58
    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    .line 59
    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    .line 81
    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    .line 82
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    .line 83
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->initGridModeLayout(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->initPairModeLayout(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 86
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/layout/-$$Lambda$VoicePresenterLayout$nJq8uFrSfOSh662-G5raDrcL3JI;-><init>(Lcom/narvii/chat/video/layout/VoicePresenterLayout;Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I
    .locals 4

    .line 387
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x3ea1cac1    # 0.316f

    mul-float v1, v1, v0

    const v2, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 390
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float p0, p0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    if-eqz p1, :cond_0

    .line 391
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p1, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int v1, p0, v2

    :goto_0
    return v1
.end method

.method private getGridModeCellHeight()I
    .locals 2

    .line 123
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    if-nez v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method private getGridModeCellWidth()I
    .locals 3

    .line 118
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 119
    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    if-nez v1, :cond_0

    const/16 v0, 0x77

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const v1, 0x3ea1cac1    # 0.316f

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method private getPairModeCellHeight(Landroid/content/Context;)I
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3ea8f5c3    # 0.33f

    mul-float p1, p1, v0

    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private initGridModeLayout(Landroid/content/Context;)V
    .locals 8

    .line 91
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    .line 92
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x31

    .line 94
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 96
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    .line 99
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    .line 103
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 104
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 106
    new-instance v4, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellWidth()I

    move-result v5

    .line 108
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellHeight()I

    move-result v6

    .line 109
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 110
    invoke-virtual {v1, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0, v4}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private initPairModeLayout(Landroid/content/Context;)V
    .locals 5

    .line 131
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    .line 132
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    const/4 p1, 0x2

    if-ge v0, p1, :cond_0

    .line 134
    new-instance v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;-><init>(Landroid/content/Context;Z)V

    .line 135
    iget v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    div-int/2addr v2, p1

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const v3, 0x3ea8f5c3    # 0.33f

    mul-float p1, p1, v3

    iget v3, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->screenWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    .line 137
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 138
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VoicePresenterItemView;)V

    .line 139
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 146
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 10

    if-eqz p1, :cond_9

    .line 376
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localMutedUidList:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v4, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v1

    :goto_1
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz p2, :cond_4

    .line 377
    iget-object v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, v0, Lcom/narvii/chat/signalling/ChannelUser;->userProfile:Lcom/narvii/model/User;

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_5

    .line 378
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v4, :cond_5

    .line 379
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    .line 380
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v4, :cond_7

    iget v5, v4, Lcom/narvii/model/ChatThread;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 381
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lcom/narvii/model/User;->uid()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    if-eqz p2, :cond_8

    .line 382
    iget v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    if-ne v0, v1, :cond_8

    const/4 v6, 0x1

    goto :goto_8

    :cond_8
    const/4 v6, 0x0

    :goto_8
    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZ)V

    :cond_9
    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 355
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 356
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 357
    iget v3, v2, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 361
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 365
    iget v3, v2, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 368
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 369
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 327
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 329
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 331
    invoke-direct {p0, v0, v4}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 336
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_5

    :cond_4
    if-nez v0, :cond_8

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 341
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 344
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    const/4 p1, 0x6

    if-ge v2, p1, :cond_8

    .line 347
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 348
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_7

    iget-object v3, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_4

    :cond_7
    move-object v3, v1

    .line 349
    :goto_4
    check-cast p1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    invoke-direct {p0, p1, v3}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    :goto_5
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 2

    .line 395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 396
    iget v1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    if-nez v1, :cond_0

    .line 397
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getGridModeCellHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->getPairModeCellHeight(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method

.method public synthetic lambda$configListener$0$VoicePresenterLayout(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Landroid/view/View;)V
    .locals 3

    .line 155
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    iget v0, p1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 156
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    const-string v1, "rtc"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/RtcService;

    .line 157
    invoke-virtual {v0}, Lcom/narvii/chat/rtc/RtcService;->getMainSigChannel()Lcom/narvii/chat/signalling/SignallingChannel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 158
    iget v0, v0, Lcom/narvii/chat/signalling/SignallingChannel;->joinRole:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/narvii/chat/video/PresenterItemClickListener;->onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V

    :cond_1
    return-void
.end method

.method public notifyLocalMuteUserListChanged(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 314
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateViews()V

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 293
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 294
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 295
    iget v2, v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->groupVoicePresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;

    .line 302
    iget v2, v1, Lcom/narvii/chat/video/layout/VoicePresenterItemView;->channelUid:I

    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v2, v3, :cond_3

    :goto_0
    move-object p1, v1

    .line 308
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VoicePresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    return-void
.end method

.method public notifyUserDataListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyUserWrapperListChanged(Lcom/narvii/chat/signalling/SignallingChannel;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1f

    if-eqz p1, :cond_1f

    .line 179
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 182
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-eqz v0, :cond_1

    .line 183
    iput v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->localChannelUid:I

    .line 185
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->ndcId:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-eqz v0, :cond_2

    .line 186
    iput v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->ndcId:I

    .line 189
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 193
    :goto_0
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 194
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 197
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_9

    .line 198
    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 199
    iget-object v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v8, :cond_8

    iget v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v8, v7, :cond_4

    goto :goto_3

    .line 202
    :cond_4
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v7}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iput v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->organizerUid:I

    .line 205
    :cond_6
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_7

    .line 206
    iget v6, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 209
    :cond_7
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 210
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    iget v7, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v5}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    const/4 v4, 0x0

    .line 215
    :goto_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 216
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 217
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v8, v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v8, :cond_a

    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 218
    invoke-virtual {p2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v8, v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v8, v8, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v8, v7, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 219
    :goto_5
    iget v9, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-ltz v9, :cond_b

    if-eqz v8, :cond_c

    .line 220
    :cond_b
    iget v8, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    .line 225
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 226
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    .line 229
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_f

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {v4}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v4

    .line 231
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 236
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x6

    if-lt p2, v0, :cond_19

    .line 238
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_8
    if-lez v1, :cond_15

    .line 240
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    if-nez v4, :cond_10

    goto :goto_a

    .line 244
    :cond_10
    iget-object v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    .line 245
    iget v7, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v8, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-eq v7, v8, :cond_14

    .line 246
    invoke-virtual {v5}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v7, :cond_11

    move-object v7, v6

    goto :goto_9

    :cond_11
    invoke-virtual {v7}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-static {v5, v7}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_a

    .line 250
    :cond_12
    iget-object v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v4, :cond_13

    iget v4, v4, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-nez v4, :cond_14

    .line 251
    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_a
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 254
    :cond_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 256
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 257
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_18

    .line 258
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 259
    iget-object v5, v5, Lcom/narvii/chat/rtc/ChannelUserWrapper;->userStatus:Lcom/narvii/video/ui/UserStatusData;

    if-eqz v5, :cond_16

    iget v5, v5, Lcom/narvii/video/ui/UserStatusData;->mVolume:I

    if-eqz v5, :cond_16

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    :cond_16
    if-nez v1, :cond_17

    goto :goto_c

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    :goto_c
    const/4 v0, 0x0

    .line 267
    :goto_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 268
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, v1, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 274
    :cond_19
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 276
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v2, v2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v2}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_1a
    move-object v2, v6

    .line 277
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-eq v4, v5, :cond_1d

    iget-object v4, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-nez v4, :cond_1b

    move-object v4, v6

    goto :goto_10

    :cond_1b
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v4

    :goto_10
    invoke-static {v4, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_11

    .line 280
    :cond_1c
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 278
    :cond_1d
    :goto_11
    invoke-interface {p2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_e

    .line 284
    :cond_1e
    invoke-direct {p0, p2}, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->updateViews(Ljava/util/List;)V

    :cond_1f
    :goto_12
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 4

    .line 166
    iget v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    if-eq p1, v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->gridModeContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->pairModeContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    :cond_2
    iput p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->displayMode:I

    return-void
.end method

.method public setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VoicePresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    return-void
.end method
