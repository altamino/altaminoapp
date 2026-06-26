.class public Lcom/narvii/chat/video/layout/VideoPresenterLayout;
.super Landroid/widget/LinearLayout;
.source "VideoPresenterLayout.java"

# interfaces
.implements Lcom/narvii/chat/video/layout/RtcDataUpdateHandler;


# static fields
.field private static final BOTTOM_CHILD_COUNT:I = 0x4

.field public static final DISPLAY_MODE_GROUP:I = 0x0

.field public static final DISPLAY_MODE_PAIR:I = 0x1

.field private static final GROUP_ROW_COUNT:I = 0x2

.field private static final PAIR_CHILD_COUNT:I = 0x2

.field private static final PAIR_MODE_HEIGHT_RATIO:F = 0.5f

.field private static final PAIR_MODE_WIDTH_RATIO:F = 1.0f

.field public static final PUBLIC_MODE_HEIGHT_SCREEN_RATIO:F = 0.22f

.field public static final PUBLIC_MODE_HEIGHT_WIDTH_RATIO:F = 1.17f

.field private static final TOP_CHILD_COUNT:I = 0x3

.field private static final VIDEO_PRESENTER_LIMIT:I = 0x7


# instance fields
.field private chatThread:Lcom/narvii/model/ChatThread;

.field private communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

.field private displayMode:I

.field private groupContainer:Landroid/widget/LinearLayout;

.field private groupVideoPresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VideoPresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private isLauncher:Z

.field private itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

.field private localChannelUid:I

.field private localMutedUidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ndcId:I

.field private nvContext:Lcom/narvii/app/NVContext;

.field private organizerUid:I

.field private pairContainer:Landroid/widget/LinearLayout;

.field private pairVideoPresenterViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/chat/video/layout/VideoPresenterItemView;",
            ">;"
        }
    .end annotation
.end field

.field private rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private userList:Landroid/util/SparseArray;
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

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    .line 59
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->organizerUid:I

    .line 64
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 79
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->initGroupViews()V

    .line 80
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->initPairViews()V

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 82
    new-instance p1, Lcom/narvii/modulization/CommunityConfigHelper;

    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/modulization/CommunityConfigHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;

    invoke-direct {v0, p0, p1}, Lcom/narvii/chat/video/layout/-$$Lambda$VideoPresenterLayout$k7JRy2K65-sADV3QwprH6MmlftI;-><init>(Lcom/narvii/chat/video/layout/VideoPresenterLayout;Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    iput-object v0, p1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->subViewClickListener:Lcom/narvii/chat/video/layout/VideoPresenterItemView$SubViewClickListener;

    return-void
.end method

.method public static getContentHeight(Landroid/content/Context;Lcom/narvii/model/ChatThread;)I
    .locals 5

    .line 343
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 344
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 345
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    .line 346
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float v2, v2, v3

    int-to-float v1, v1

    const v4, 0x3f95c28f    # 1.17f

    mul-float v1, v1, v4

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 348
    invoke-static {p0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701b8

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-eqz p1, :cond_0

    .line 350
    iget p1, p1, Lcom/narvii/model/ChatThread;->type:I

    if-eqz p1, :cond_0

    add-int/2addr v1, p0

    goto :goto_0

    :cond_0
    add-int v1, v0, p0

    :goto_0
    return v1
.end method

.method private initGroupViews()V
    .locals 12

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    div-int/2addr v0, v2

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e6147ae    # 0.22f

    mul-float v4, v4, v5

    int-to-float v0, v0

    const v5, 0x3f95c28f    # 1.17f

    mul-float v0, v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 96
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    mul-int/lit8 v0, v0, 0x2

    const/4 v5, -0x1

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 99
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-ne v4, v1, :cond_0

    const/4 v7, 0x4

    goto :goto_1

    :cond_0
    const/4 v7, 0x3

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v8, v7, :cond_2

    .line 103
    new-instance v10, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 105
    invoke-virtual {v6, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v9, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v4, v1, :cond_1

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_1

    const/16 v9, 0x8

    .line 108
    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    :cond_1
    invoke-direct {p0, v10}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 112
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 113
    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initPairViews()V
    .locals 8

    .line 119
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 126
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v2, v2, v4

    .line 125
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    .line 128
    new-instance v5, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    .line 130
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    :cond_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 133
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-direct {p0, v5}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->configListener(Lcom/narvii/chat/video/layout/VideoPresenterItemView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 12

    if-eqz p1, :cond_a

    .line 331
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

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

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    if-eqz p2, :cond_4

    .line 332
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

    .line 333
    invoke-virtual {v0}, Lcom/narvii/model/User;->isSubscribeMemberShip()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->communityConfigHelper:Lcom/narvii/modulization/CommunityConfigHelper;

    if-eqz v4, :cond_5

    .line 334
    invoke-virtual {v4}, Lcom/narvii/modulization/CommunityConfigHelper;->isPremiumFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 335
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v4, :cond_7

    iget v5, v4, Lcom/narvii/model/ChatThread;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 336
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

    const/4 v10, 0x1

    goto :goto_7

    :cond_7
    const/4 v10, 0x0

    .line 337
    :goto_7
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/narvii/model/ChatThread;->type:I

    if-nez v0, :cond_8

    const/4 v11, 0x1

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    if-eqz p2, :cond_9

    .line 338
    iget v0, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iget v1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    :goto_9
    iget-boolean v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->isLauncher:Z

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v4 .. v11}, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->updatePresenter(Lcom/narvii/chat/rtc/ChannelUserWrapper;ZZZZZZ)V

    :cond_a
    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 310
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 312
    iget v3, v2, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    if-ne v3, v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 316
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 320
    iget v3, v2, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 323
    :cond_2
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 324
    invoke-direct {p0, v2, v3}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateViews(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_11

    .line 269
    iget-object v6, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 270
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v0, :cond_0

    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_1

    :cond_0
    move-object v7, v1

    .line 271
    :goto_1
    move-object v8, v6

    check-cast v8, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    invoke-direct {p0, v8, v7}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    if-ne v0, v5, :cond_2

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v2, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 278
    :goto_3
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 279
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 280
    iget-object v7, v7, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v7, :cond_4

    iget v7, v7, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v7, v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x7

    if-ge v0, v7, :cond_f

    .line 285
    iget-object v7, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v0, :cond_6

    iget-object v8, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    goto :goto_5

    :cond_6
    move-object v8, v1

    .line 287
    :goto_5
    invoke-direct {p0, v7, v8}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

    if-nez v6, :cond_7

    .line 291
    invoke-virtual {v7, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    :cond_7
    if-ne v6, v5, :cond_9

    if-nez v0, :cond_8

    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    const/16 v8, 0x8

    .line 293
    :goto_6
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    :cond_9
    if-ne v6, v2, :cond_c

    if-eqz v0, :cond_b

    if-ne v0, v5, :cond_a

    goto :goto_7

    :cond_a
    const/16 v8, 0x8

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v8, 0x0

    .line 295
    :goto_8
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    :cond_c
    const/4 v8, 0x6

    if-gt v6, v8, :cond_e

    if-ne v0, v8, :cond_d

    const/16 v8, 0x8

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    .line 297
    :goto_9
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_a

    .line 299
    :cond_e
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 303
    :cond_f
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v5, :cond_11

    .line 304
    iget-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->rowViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    if-lt v6, v0, :cond_10

    const/4 v3, 0x0

    :cond_10
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void
.end method


# virtual methods
.method public getContentHeight()I
    .locals 5

    .line 354
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 355
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 356
    iget v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    if-nez v2, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x3

    .line 358
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e6147ae    # 0.22f

    mul-float v2, v2, v3

    int-to-float v0, v0

    const v4, 0x3f95c28f    # 1.17f

    mul-float v0, v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 360
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    add-int/2addr v1, v0

    return v1

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/util/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic lambda$configListener$0$VideoPresenterLayout(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Landroid/view/View;)V
    .locals 6

    .line 144
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 148
    iget-object v1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    iget v2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, v1, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f090191

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    const v3, 0x7f090190

    if-ne p2, v3, :cond_3

    const/4 v2, 0x2

    .line 156
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/narvii/chat/video/PresenterItemClickListener;->onPresenterItemClicked(Landroid/view/View;Lcom/narvii/chat/rtc/ChannelUserWrapper;ZI)V

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

    .line 262
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localMutedUidList:Ljava/util/Set;

    .line 263
    invoke-direct {p0}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateViews()V

    return-void
.end method

.method public notifyUserDataChanged(Lcom/narvii/chat/signalling/SignallingChannel;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 242
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairVideoPresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 244
    iget v2, v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupVideoPresenterViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;

    .line 251
    iget v2, v1, Lcom/narvii/chat/video/layout/VideoPresenterItemView;->channelUid:I

    iget v3, p2, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    if-ne v2, v3, :cond_3

    :goto_0
    move-object p1, v1

    .line 257
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateChildView(Lcom/narvii/chat/video/layout/VideoPresenterItemView;Lcom/narvii/chat/rtc/ChannelUserWrapper;)V

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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/signalling/SignallingChannel;",
            "Landroid/util/SparseArray<",
            "Lcom/narvii/chat/rtc/ChannelUserWrapper;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_11

    if-eqz p1, :cond_11

    .line 174
    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelType:I

    invoke-static {v0}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 177
    :cond_0
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/narvii/chat/signalling/SignallingChannel;->channelUid:I

    if-eqz v0, :cond_1

    .line 178
    iput v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->localChannelUid:I

    .line 180
    :cond_1
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->ndcId:I

    if-nez v0, :cond_2

    iget p1, p1, Lcom/narvii/chat/signalling/SignallingChannel;->ndcId:I

    if-eqz p1, :cond_2

    .line 181
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->ndcId:I

    .line 183
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 190
    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_a

    .line 191
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 192
    iget-object v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v6, :cond_9

    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v6, v5, :cond_4

    goto :goto_4

    .line 195
    :cond_4
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    if-eqz v5, :cond_6

    iget v6, v5, Lcom/narvii/model/ChatThread;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    goto :goto_2

    .line 196
    :cond_5
    invoke-virtual {v5}, Lcom/narvii/model/ChatThread;->uid()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v5, 0x0

    :goto_3
    iget-object v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    invoke-virtual {v6}, Lcom/narvii/chat/signalling/ChannelUser;->uid()Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-static {v5, v6}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 197
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    iput v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->organizerUid:I

    .line 199
    :cond_7
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_8

    .line 200
    iget v5, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 203
    :cond_8
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 204
    iget-object v5, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {v4}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    .line 208
    :goto_5
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 209
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    .line 210
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b

    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    if-eqz v6, :cond_b

    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    .line 211
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    iget-object v6, v6, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUser:Lcom/narvii/chat/signalling/ChannelUser;

    iget v6, v6, Lcom/narvii/chat/signalling/ChannelUser;->joinRole:I

    if-eq v6, v5, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    .line 212
    :goto_6
    iget v7, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_c

    if-eqz v6, :cond_d

    .line 213
    :cond_c
    iget v6, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget v4, v4, Lcom/narvii/chat/rtc/ChannelUserWrapper;->channelUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    .line 218
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 219
    iget-object v4, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 222
    :cond_f
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_10

    .line 223
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/chat/rtc/ChannelUserWrapper;

    invoke-virtual {v0}, Lcom/narvii/chat/rtc/ChannelUserWrapper;->clone()Lcom/narvii/chat/rtc/ChannelUserWrapper;

    move-result-object v0

    .line 224
    iget-object v3, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->userList:Landroid/util/SparseArray;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 228
    :cond_10
    invoke-direct {p0, v1}, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->updateViews(Ljava/util/List;)V

    :cond_11
    :goto_9
    return-void
.end method

.method public setChatThread(Lcom/narvii/model/ChatThread;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->chatThread:Lcom/narvii/model/ChatThread;

    return-void
.end method

.method public setDisplayMode(I)V
    .locals 4

    .line 161
    iget v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    if-eq p1, v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->groupContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->pairContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_2
    iput p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->displayMode:I

    return-void
.end method

.method public setLauncher(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->isLauncher:Z

    return-void
.end method

.method public setPresenterItemClickListener(Lcom/narvii/chat/video/PresenterItemClickListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/narvii/chat/video/layout/VideoPresenterLayout;->itemClickListener:Lcom/narvii/chat/video/PresenterItemClickListener;

    return-void
.end method
