.class public Lcom/narvii/amino/speeddial/SpeedDialLayout;
.super Landroid/widget/LinearLayout;
.source "SpeedDialLayout.java"

# interfaces
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;,
        Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;
    }
.end annotation


# static fields
.field private static final TYPE_NORMAL:Ljava/lang/String; = "live_type_normal"

.field private static final TYPE_SR:Ljava/lang/String; = "live_type_sr"

.field private static final TYPE_VV:Ljava/lang/String; = "live_type_vv"


# instance fields
.field private isParentBound:Z

.field private listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

.field private liveChatThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private normalLiveCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/mode/LiveCategory;",
            ">;"
        }
    .end annotation
.end field

.field private nvContext:Lcom/narvii/app/NVContext;

.field private scrappedNormalItemsViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/LiveCategoryItemView;",
            ">;"
        }
    .end annotation
.end field

.field private scrappedSRItemsViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/LiveSRItemView;",
            ">;"
        }
    .end annotation
.end field

.field private scrappedVVItemsViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/LiveVVChatItemView;",
            ">;"
        }
    .end annotation
.end field

.field private speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

.field transitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private userProfileListInThreadList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;>;"
        }
    .end annotation
.end field

.field public webpTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;",
            ">;"
        }
    .end annotation
.end field

.field public webpThumbUrl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 62
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 63
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 66
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 67
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 186
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->transitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 564
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    .line 565
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 81
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->configNormalItemViews()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    return-object p0
.end method

.method private bindWithParent()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isParentBound:Z

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 110
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-virtual {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isParentBound:Z

    return-void

    .line 115
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private configNormalItemViews()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    new-instance v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    invoke-direct {v2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;-><init>()V

    .line 220
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    const-string v4, "config"

    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 221
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ndtopic:x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    iput-object v1, v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 224
    new-instance v3, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090a74

    const-string v5, "live_type_normal"

    .line 225
    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    const v4, 0x7f090a7d

    .line 226
    invoke-virtual {v3, v4, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 227
    invoke-virtual {v3, v2}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 228
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private containNormalTopic(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/mode/LiveCategory;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 447
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 451
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 538
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 541
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayList;

    if-nez p1, :cond_1

    return-object v0

    .line 550
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 555
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 560
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getLiveItemType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "live_type_sr"

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "live_type_vv"

    :goto_1
    return-object p1
.end method

.method private getMappedChatThread(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/ChatThread;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/narvii/model/ChatThread;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 426
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getMappedLiveIndex(Lcom/narvii/model/ChatThread;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const-string v1, "live_type_sr"

    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 482
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 483
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v1, "live_type_vv"

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v2, 0x0

    .line 489
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 490
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090a74

    .line 491
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f090a73

    .line 492
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method private getMapppedNormalIndex(Lcom/narvii/amino/speeddial/mode/LiveCategory;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 462
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 463
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090a74

    .line 464
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "live_type_normal"

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f090a7d

    .line 465
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private isSRType(Ljava/lang/Object;)Z
    .locals 1

    .line 505
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "live_type_sr"

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isVVType(Ljava/lang/Object;)Z
    .locals 1

    .line 501
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "live_type_vv"

    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateLiveItemViews()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f090a73

    const v5, 0x7f090a74

    if-ge v1, v2, :cond_5

    .line 234
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 236
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 237
    invoke-direct {p0, v5}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isSRType(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v5}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isVVType(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 238
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMappedChatThread(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 239
    :cond_1
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getLiveItemType(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v4, :cond_2

    .line 240
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 241
    :cond_2
    instance-of v3, v2, Lcom/narvii/amino/speeddial/LiveSRItemView;

    if-eqz v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    check-cast v2, Lcom/narvii/amino/speeddial/LiveSRItemView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_3
    instance-of v3, v2, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    if-eqz v3, :cond_4

    .line 244
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    check-cast v2, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 251
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_3

    .line 254
    :cond_6
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 255
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 258
    :goto_5
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 259
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 260
    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMappedLiveIndex(Lcom/narvii/model/ChatThread;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_f

    .line 262
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getLiveItemType(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    goto/16 :goto_d

    :cond_8
    const-string v8, "live_type_sr"

    if-ne v6, v8, :cond_b

    .line 269
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 270
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 271
    iget-object v9, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 273
    :cond_9
    new-instance v6, Lcom/narvii/amino/speeddial/LiveSRItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/narvii/amino/speeddial/LiveSRItemView;-><init>(Landroid/content/Context;)V

    .line 275
    :goto_6
    invoke-virtual {v6, v5, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 277
    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Lcom/narvii/amino/speeddial/LiveSRItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 278
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$3;

    invoke-direct {v8, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$3;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_a

    goto :goto_7

    :cond_a
    move v7, v1

    :goto_7
    invoke-virtual {p0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto/16 :goto_d

    :cond_b
    const-string v8, "live_type_vv"

    if-ne v6, v8, :cond_15

    .line 289
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 290
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 291
    iget-object v9, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 293
    :cond_c
    new-instance v6, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;-><init>(Landroid/content/Context;)V

    .line 295
    :goto_8
    invoke-virtual {v6, v5, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 296
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 297
    iget-object v8, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    if-nez v8, :cond_d

    move-object v8, v3

    goto :goto_9

    :cond_d
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    :goto_9
    invoke-virtual {v6, v2, v8}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/util/List;)V

    .line 298
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$4;

    invoke-direct {v8, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$4;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_e

    goto :goto_a

    :cond_e
    move v7, v1

    :goto_a
    invoke-virtual {p0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_d

    .line 309
    :cond_f
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 311
    new-instance v9, Lcom/narvii/amino/speeddial/SpeedDialLayout$5;

    invoke-direct {v9, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$5;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    if-eq v6, v1, :cond_12

    .line 321
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 322
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v1, v6, :cond_11

    goto :goto_b

    :cond_11
    move v7, v1

    :goto_b
    invoke-virtual {p0, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 324
    :cond_12
    instance-of v6, v8, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    if-eqz v6, :cond_14

    .line 325
    check-cast v8, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    if-nez v6, :cond_13

    move-object v6, v3

    goto :goto_c

    :cond_13
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_c
    invoke-virtual {v8, v2, v6}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/util/List;)V

    goto :goto_d

    .line 326
    :cond_14
    instance-of v6, v8, Lcom/narvii/amino/speeddial/LiveSRItemView;

    if-eqz v6, :cond_15

    .line 327
    check-cast v8, Lcom/narvii/amino/speeddial/LiveSRItemView;

    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v2, v6}, Lcom/narvii/amino/speeddial/LiveSRItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    :cond_15
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_16
    return-void
.end method

.method private updateNormalItemViews()V
    .locals 10

    .line 355
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 359
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const-string v3, "live_type_normal"

    const v4, 0x7f090a7d

    const v5, 0x7f090a74

    if-ge v1, v2, :cond_2

    .line 360
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 361
    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 362
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 363
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-direct {p0, v4, v3}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->containNormalTopic(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 364
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    check-cast v2, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 369
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 372
    :goto_2
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 373
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    .line 375
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 376
    invoke-direct {p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMapppedNormalIndex(Lcom/narvii/amino/speeddial/mode/LiveCategory;)I

    move-result v7

    .line 377
    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, -0x1

    if-ne v7, v9, :cond_6

    .line 380
    iget-object v7, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 381
    iget-object v7, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 382
    iget-object v8, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 384
    :cond_4
    new-instance v7, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;)V

    .line 386
    :goto_3
    invoke-virtual {v7, v6}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 387
    invoke-virtual {v7, v5, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 388
    iget-object v8, v6, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-virtual {v7, v4, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 389
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;

    invoke-direct {v8, p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lt v2, v6, :cond_5

    const/4 v2, -0x1

    :cond_5
    invoke-virtual {p0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_5

    :cond_6
    if-ne v7, v2, :cond_7

    .line 400
    instance-of v7, v8, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    if-eqz v7, :cond_7

    .line 401
    move-object v2, v8

    check-cast v2, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    invoke-virtual {v2, v6}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    goto :goto_4

    .line 403
    :cond_7
    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 404
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lt v2, v7, :cond_8

    const/4 v2, -0x1

    :cond_8
    invoke-virtual {p0, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_4
    if-eqz v8, :cond_9

    .line 407
    new-instance v2, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;

    invoke-direct {v2, p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateLiveItemViews()V

    .line 203
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateNormalItemViews()V

    .line 204
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;

    invoke-direct {v0, p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 576
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 580
    :cond_2
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;

    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Ljava/lang/String;)V

    .line 581
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 86
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 88
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->bindWithParent()V

    return-void
.end method

.method public onHeaderCollapsed()V
    .locals 1

    const v0, 0x3c23d70a    # 0.01f

    .line 515
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onHeaderExpanded()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 525
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float p3, p3, p1

    const p1, 0x3c23d70a    # 0.01f

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p4, p3, p2

    if-ltz p4, :cond_0

    const p4, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    sub-float p4, p2, p3

    .line 531
    :goto_0
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 532
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of p4, p4, Landroid/widget/HorizontalScrollView;

    if-eqz p4, :cond_2

    .line 533
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/widget/HorizontalScrollView;

    cmpl-float v0, p3, p2

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    sub-float p1, p2, p3

    :goto_1
    invoke-virtual {p4, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public onHeaderStartCollapsing()V
    .locals 0

    return-void
.end method

.method public onHeaderStartExpanding()V
    .locals 0

    return-void
.end method

.method public reConfigNormalItemViews()V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 342
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 343
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v3}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 350
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateNormalItemViews()V

    return-void
.end method

.method public setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 129
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v3

    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/narvii/model/ChatThread;->status:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_1

    .line 132
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    .line 133
    iget-object v3, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v2, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 147
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 148
    iget-object v4, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v3, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 155
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    move-result-object v2

    .line 156
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 157
    new-instance v4, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    invoke-direct {v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;-><init>()V

    .line 158
    iget-object v5, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    const-string v6, "config"

    invoke-interface {v5, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/config/ConfigService;

    .line 159
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v5

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ndtopic:x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    iput-object v3, v4, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    :cond_6
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 172
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 177
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 179
    :cond_7
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateViews()V

    .line 180
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->transitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_8
    return-void
.end method
