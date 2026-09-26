.class public Lcom/narvii/amino/speeddial/SpeedDialLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;,
        Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 9
    new-instance p2, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;

    invoke-direct {p2, p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout$1;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->transitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    .line 11
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 13
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 14
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->configNormalItemViews()V

    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    return-object p0
.end method

.method private bindWithParent()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isParentBound:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    instance-of v1, v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->addOnHeaderStatusChangedListener(Lcom/narvii/widget/headercollapse/OnHeaderStatusChangedListener;)V

    .line 21
    const/4 v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isParentBound:Z

    .line 24
    return-void

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    return-void
.end method

.method private configNormalItemViews()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;-><init>()V

    .line 28
    .line 29
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 30
    .line 31
    const-string v4, "config"

    .line 32
    .line 33
    .line 34
    invoke-interface {v3, v4}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    check-cast v3, Lcom/narvii/config/ConfigService;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 41
    move-result v3

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v5, "ndtopic:x"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v3, ":"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    iput-object v1, v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v3, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 74
    move-result-object v4

    .line 75
    .line 76
    .line 77
    invoke-direct {v3, v4}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    const v4, 0x7f0a0d62

    .line 81
    .line 82
    const-string v5, "live_type_normal"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const v4, 0x7f0a0d6d

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v2}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    goto :goto_0

    .line 99
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    const/4 p1, 0x1

    .line 36
    return p1

    .line 37
    :cond_2
    :goto_0
    return v0
.end method

.method private getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_4

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Lcom/narvii/model/PlayList;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    return-object v0

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    if-nez p1, :cond_2

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    return-object v0

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
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

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 23
    .line 24
    iget-object v2, v1, Lcom/narvii/model/ChatThread;->threadId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-static {v2, p2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    return-object v1

    .line 32
    :cond_2
    :goto_0
    return-object v0
.end method

.method private getMappedLiveIndex(Lcom/narvii/model/ChatThread;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x5

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    const-string v1, "live_type_sr"

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x4

    .line 20
    .line 21
    if-eq v1, v2, :cond_3

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    .line 28
    if-eq v1, v2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    .line 35
    if-ne v1, v2, :cond_2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_3
    :goto_0
    const-string v1, "live_type_vv"

    .line 41
    .line 42
    :goto_1
    if-nez v1, :cond_4

    .line 43
    return v0

    .line 44
    :cond_4
    const/4 v2, 0x0

    .line 45
    .line 46
    .line 47
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 48
    move-result v3

    .line 49
    .line 50
    if-ge v2, v3, :cond_6

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object v3

    .line 55
    .line 56
    .line 57
    const v4, 0x7f0a0d62

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-static {v4, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    move-result v4

    .line 66
    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    .line 70
    const v4, 0x7f0a0d61

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    move-result-object v3

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    .line 80
    .line 81
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    move-result v3

    .line 83
    .line 84
    if-eqz v3, :cond_5

    .line 85
    return v2

    .line 86
    .line 87
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    return v0
.end method

.method private getMapppedNormalIndex(Lcom/narvii/amino/speeddial/mode/LiveCategory;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v2

    .line 10
    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    const v3, 0x7f0a0d62

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    const-string v4, "live_type_normal"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    .line 33
    const v3, 0x7f0a0d6d

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    iget-object v3, p1, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result v2

    .line 44
    .line 45
    if-eqz v2, :cond_1

    .line 46
    return v1

    .line 47
    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v0
.end method

.method private isSRType(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "live_type_sr"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private isVVType(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Ljava/lang/String;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "live_type_vv"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private updateLiveItemViews()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    .line 9
    .line 10
    const v4, 0x7f0a0d61

    .line 11
    .line 12
    .line 13
    const v5, 0x7f0a0d62

    .line 14
    .line 15
    if-ge v1, v2, :cond_5

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 23
    move-result-object v5

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, v5}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isSRType(Ljava/lang/Object;)Z

    .line 31
    move-result v6

    .line 32
    .line 33
    if-nez v6, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v5}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->isVVType(Ljava/lang/Object;)Z

    .line 37
    move-result v6

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    :cond_0
    instance-of v6, v4, Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 46
    .line 47
    check-cast v4, Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v6, v4}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMappedChatThread(Ljava/util/List;Ljava/lang/String;)Lcom/narvii/model/ChatThread;

    .line 51
    move-result-object v4

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    goto :goto_1

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v4}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 58
    move-result v3

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v3}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getLiveItemType(I)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    :goto_1
    if-eqz v4, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    .line 70
    if-nez v3, :cond_4

    .line 71
    .line 72
    :cond_2
    instance-of v3, v2, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 77
    .line 78
    check-cast v2, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_2

    .line 83
    .line 84
    :cond_3
    instance-of v3, v2, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 85
    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 89
    .line 90
    check-cast v2, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 91
    .line 92
    .line 93
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    :cond_5
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 99
    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    .line 105
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v2

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 113
    .line 114
    check-cast v2, Landroid/view/View;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    goto :goto_3

    .line 119
    .line 120
    :cond_6
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 121
    .line 122
    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v1

    .line 125
    .line 126
    .line 127
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v2

    .line 129
    .line 130
    if-eqz v2, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    check-cast v2, Landroid/view/View;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    move v1, v0

    .line 142
    .line 143
    :goto_5
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 144
    .line 145
    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 147
    move-result v2

    .line 148
    .line 149
    if-ge v1, v2, :cond_16

    .line 150
    .line 151
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 152
    .line 153
    .line 154
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    move-result-object v2

    .line 156
    .line 157
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 158
    .line 159
    .line 160
    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMappedLiveIndex(Lcom/narvii/model/ChatThread;)I

    .line 161
    move-result v6

    .line 162
    const/4 v7, -0x1

    .line 163
    .line 164
    if-ne v6, v7, :cond_f

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 168
    move-result v6

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getLiveItemType(I)Ljava/lang/String;

    .line 172
    move-result-object v6

    .line 173
    .line 174
    if-nez v6, :cond_8

    .line 175
    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :cond_8
    const-string v8, "live_type_sr"

    .line 179
    .line 180
    if-ne v6, v8, :cond_b

    .line 181
    .line 182
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 183
    .line 184
    if-eqz v6, :cond_9

    .line 185
    .line 186
    .line 187
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 188
    move-result v6

    .line 189
    .line 190
    if-lez v6, :cond_9

    .line 191
    .line 192
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 193
    .line 194
    .line 195
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v6

    .line 197
    .line 198
    check-cast v6, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 199
    .line 200
    iget-object v9, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedSRItemsViews:Ljava/util/List;

    .line 201
    .line 202
    .line 203
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    goto :goto_6

    .line 205
    .line 206
    :cond_9
    new-instance v6, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 210
    move-result-object v9

    .line 211
    .line 212
    .line 213
    invoke-direct {v6, v9}, Lcom/narvii/amino/speeddial/LiveSRItemView;-><init>(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    :goto_6
    invoke-virtual {v6, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 220
    move-result-object v8

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6, v2, v8}, Lcom/narvii/amino/speeddial/LiveSRItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 231
    .line 232
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$3;

    .line 233
    .line 234
    .line 235
    invoke-direct {v8, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$3;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 242
    move-result v2

    .line 243
    .line 244
    if-lt v1, v2, :cond_a

    .line 245
    goto :goto_7

    .line 246
    :cond_a
    move v7, v1

    .line 247
    .line 248
    .line 249
    :goto_7
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 250
    .line 251
    goto/16 :goto_d

    .line 252
    .line 253
    :cond_b
    const-string v8, "live_type_vv"

    .line 254
    .line 255
    if-ne v6, v8, :cond_15

    .line 256
    .line 257
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 258
    .line 259
    if-eqz v6, :cond_c

    .line 260
    .line 261
    .line 262
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 263
    move-result v6

    .line 264
    .line 265
    if-lez v6, :cond_c

    .line 266
    .line 267
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 268
    .line 269
    .line 270
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v6

    .line 272
    .line 273
    check-cast v6, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 274
    .line 275
    iget-object v9, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedVVItemsViews:Ljava/util/List;

    .line 276
    .line 277
    .line 278
    invoke-interface {v9, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    goto :goto_8

    .line 280
    .line 281
    :cond_c
    new-instance v6, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 285
    move-result-object v9

    .line 286
    .line 287
    .line 288
    invoke-direct {v6, v9}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    :goto_8
    invoke-virtual {v6, v5, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 295
    move-result-object v8

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 299
    .line 300
    iget-object v8, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 301
    .line 302
    if-nez v8, :cond_d

    .line 303
    move-object v8, v3

    .line 304
    goto :goto_9

    .line 305
    .line 306
    .line 307
    :cond_d
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 308
    move-result-object v9

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    move-result-object v8

    .line 313
    .line 314
    check-cast v8, Ljava/util/List;

    .line 315
    .line 316
    .line 317
    :goto_9
    invoke-virtual {v6, v2, v8}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/util/List;)V

    .line 318
    .line 319
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$4;

    .line 320
    .line 321
    .line 322
    invoke-direct {v8, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$4;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 329
    move-result v2

    .line 330
    .line 331
    if-lt v1, v2, :cond_e

    .line 332
    goto :goto_a

    .line 333
    :cond_e
    move v7, v1

    .line 334
    .line 335
    .line 336
    :goto_a
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 337
    goto :goto_d

    .line 338
    .line 339
    .line 340
    :cond_f
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 341
    move-result-object v8

    .line 342
    .line 343
    if-eqz v8, :cond_10

    .line 344
    .line 345
    new-instance v9, Lcom/narvii/amino/speeddial/SpeedDialLayout$5;

    .line 346
    .line 347
    .line 348
    invoke-direct {v9, p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout$5;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/model/ChatThread;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    :cond_10
    if-eq v6, v1, :cond_12

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 360
    move-result v6

    .line 361
    .line 362
    if-lt v1, v6, :cond_11

    .line 363
    goto :goto_b

    .line 364
    :cond_11
    move v7, v1

    .line 365
    .line 366
    .line 367
    :goto_b
    invoke-virtual {p0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 368
    .line 369
    :cond_12
    instance-of v6, v8, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 370
    .line 371
    if-eqz v6, :cond_14

    .line 372
    .line 373
    check-cast v8, Lcom/narvii/amino/speeddial/LiveVVChatItemView;

    .line 374
    .line 375
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 376
    .line 377
    if-nez v6, :cond_13

    .line 378
    move-object v6, v3

    .line 379
    goto :goto_c

    .line 380
    .line 381
    .line 382
    :cond_13
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 383
    move-result-object v7

    .line 384
    .line 385
    .line 386
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-result-object v6

    .line 388
    .line 389
    check-cast v6, Ljava/util/List;

    .line 390
    .line 391
    .line 392
    :goto_c
    invoke-virtual {v8, v2, v6}, Lcom/narvii/amino/speeddial/LiveVVChatItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/util/List;)V

    .line 393
    goto :goto_d

    .line 394
    .line 395
    :cond_14
    instance-of v6, v8, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 396
    .line 397
    if-eqz v6, :cond_15

    .line 398
    .line 399
    check-cast v8, Lcom/narvii/amino/speeddial/LiveSRItemView;

    .line 400
    .line 401
    .line 402
    invoke-direct {p0, v2}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    .line 403
    move-result-object v6

    .line 404
    .line 405
    .line 406
    invoke-virtual {v8, v2, v6}, Lcom/narvii/amino/speeddial/LiveSRItemView;->updateViews(Lcom/narvii/model/ChatThread;Ljava/lang/String;)V

    .line 407
    .line 408
    :cond_15
    :goto_d
    add-int/lit8 v1, v1, 0x1

    .line 409
    .line 410
    goto/16 :goto_5

    .line 411
    :cond_16
    return-void
.end method

.method private updateNormalItemViews()V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    move-result v2

    .line 12
    .line 13
    const-string v3, "live_type_normal"

    .line 14
    .line 15
    .line 16
    const v4, 0x7f0a0d6d

    .line 17
    .line 18
    .line 19
    const v5, 0x7f0a0d62

    .line 20
    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 29
    move-result-object v5

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    move-result-object v4

    .line 34
    .line 35
    .line 36
    invoke-static {v5, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v4, v3}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->containNormalTopic(Ljava/lang/Object;Ljava/util/List;)Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 50
    .line 51
    check-cast v2, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 52
    .line 53
    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_0

    .line 58
    .line 59
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 60
    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v2

    .line 68
    .line 69
    if-eqz v2, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    check-cast v2, Landroid/view/View;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    move v1, v0

    .line 81
    .line 82
    :goto_2
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 83
    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 86
    move-result v2

    .line 87
    .line 88
    if-ge v1, v2, :cond_a

    .line 89
    .line 90
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 94
    move-result v2

    .line 95
    add-int/2addr v2, v1

    .line 96
    .line 97
    iget-object v6, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 98
    .line 99
    .line 100
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    check-cast v6, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->getMapppedNormalIndex(Lcom/narvii/amino/speeddial/mode/LiveCategory;)I

    .line 107
    move-result v7

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 111
    move-result-object v8

    .line 112
    const/4 v9, -0x1

    .line 113
    .line 114
    if-ne v7, v9, :cond_6

    .line 115
    .line 116
    iget-object v7, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 117
    .line 118
    if-eqz v7, :cond_4

    .line 119
    .line 120
    .line 121
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 122
    move-result v7

    .line 123
    .line 124
    if-lez v7, :cond_4

    .line 125
    .line 126
    iget-object v7, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 127
    .line 128
    .line 129
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v7

    .line 131
    .line 132
    check-cast v7, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 133
    .line 134
    iget-object v8, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->scrappedNormalItemsViews:Ljava/util/List;

    .line 135
    .line 136
    .line 137
    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 138
    goto :goto_3

    .line 139
    .line 140
    :cond_4
    new-instance v7, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 144
    move-result-object v8

    .line 145
    .line 146
    .line 147
    invoke-direct {v7, v8}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;-><init>(Landroid/content/Context;)V

    .line 148
    .line 149
    .line 150
    :goto_3
    invoke-virtual {v7, v6}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v5, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    .line 155
    iget-object v8, v6, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 159
    .line 160
    new-instance v8, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;

    .line 161
    .line 162
    .line 163
    invoke-direct {v8, p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 170
    move-result v6

    .line 171
    .line 172
    if-lt v2, v6, :cond_5

    .line 173
    move v2, v9

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-virtual {p0, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 177
    goto :goto_5

    .line 178
    .line 179
    :cond_6
    if-ne v7, v2, :cond_7

    .line 180
    .line 181
    instance-of v7, v8, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 182
    .line 183
    if-eqz v7, :cond_7

    .line 184
    move-object v2, v8

    .line 185
    .line 186
    check-cast v2, Lcom/narvii/amino/speeddial/LiveCategoryItemView;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v6}, Lcom/narvii/amino/speeddial/LiveCategoryItemView;->updateLiveCategory(Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 190
    goto :goto_4

    .line 191
    .line 192
    .line 193
    :cond_7
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 197
    move-result v7

    .line 198
    .line 199
    if-lt v2, v7, :cond_8

    .line 200
    move v2, v9

    .line 201
    .line 202
    .line 203
    :cond_8
    invoke-virtual {p0, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 204
    .line 205
    :goto_4
    if-eqz v8, :cond_9

    .line 206
    .line 207
    new-instance v2, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;

    .line 208
    .line 209
    .line 210
    invoke-direct {v2, p0, v6}, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    :cond_9
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 216
    .line 217
    goto/16 :goto_2

    .line 218
    :cond_a
    return-void
.end method

.method private updateViews()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateLiveItemViews()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateNormalItemViews()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V

    .line 26
    .line 27
    const-wide/16 v1, 0x64

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object v1

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpThumbUrl:Ljava/util/HashMap;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    return-object p1

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    return-object v1

    .line 35
    .line 36
    :cond_2
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$YoutubeWebpTask;-><init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->webpTasks:Ljava/util/HashMap;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 p1, 0x0

    .line 46
    .line 47
    new-array p1, p1, [Ljava/lang/Void;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-object v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->bindWithParent()V

    .line 4
    return-void
.end method

.method public onHeaderCollapsed()V
    .locals 1

    .line 1
    .line 2
    .line 3
    const v0, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7
    return-void
.end method

.method public onHeaderExpanded()V
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6
    return-void
.end method

.method public onHeaderOffsetChanged(IIFZ)V
    .locals 1

    .line 1
    .line 2
    const/high16 p1, 0x40000000    # 2.0f

    .line 3
    mul-float/2addr p3, p1

    .line 4
    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    cmpl-float p2, p3, p1

    .line 8
    .line 9
    .line 10
    const p4, 0x3c23d70a    # 0.01f

    .line 11
    .line 12
    if-ltz p2, :cond_0

    .line 13
    move v0, p4

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    sub-float v0, p1, p3

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    instance-of v0, v0, Landroid/widget/HorizontalScrollView;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 34
    .line 35
    if-ltz p2, :cond_1

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_1
    sub-float p4, p1, p3

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 42
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

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    check-cast v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    iget-object v4, v2, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    .line 44
    move-result v3

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_2
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 56
    .line 57
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateNormalItemViews()V

    .line 64
    return-void
.end method

.method public setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 8

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v2

    .line 23
    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 34
    move-result v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget v3, v2, Lcom/narvii/model/ChatThread;->status:I

    .line 43
    .line 44
    const/16 v4, 0x9

    .line 45
    .line 46
    if-eq v3, v4, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 50
    move-result v3

    .line 51
    const/4 v4, 0x5

    .line 52
    .line 53
    if-eq v3, v4, :cond_2

    .line 54
    .line 55
    iget-object v3, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 56
    .line 57
    if-eqz v3, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    .line 77
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .line 82
    iget-object v2, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    .line 83
    .line 84
    if-eqz v2, :cond_5

    .line 85
    .line 86
    .line 87
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v2

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v3

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v3

    .line 99
    .line 100
    check-cast v3, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 101
    .line 102
    iget-object v4, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 103
    .line 104
    .line 105
    invoke-static {v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    iget-object v5, v3, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    invoke-static {v4, v5}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    .line 112
    move-result v4

    .line 113
    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    .line 117
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    goto :goto_1

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 122
    move-result v2

    .line 123
    .line 124
    if-eqz v2, :cond_6

    .line 125
    .line 126
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 127
    .line 128
    .line 129
    invoke-static {v2}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    .line 130
    move-result-object v2

    .line 131
    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v3

    .line 139
    .line 140
    if-eqz v3, :cond_6

    .line 141
    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    check-cast v3, Ljava/lang/String;

    .line 147
    .line 148
    new-instance v4, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 149
    .line 150
    .line 151
    invoke-direct {v4}, Lcom/narvii/amino/speeddial/mode/LiveCategory;-><init>()V

    .line 152
    .line 153
    iget-object v5, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->nvContext:Lcom/narvii/app/NVContext;

    .line 154
    .line 155
    const-string v6, "config"

    .line 156
    .line 157
    .line 158
    invoke-interface {v5, v6}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 159
    move-result-object v5

    .line 160
    .line 161
    check-cast v5, Lcom/narvii/config/ConfigService;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 165
    move-result v5

    .line 166
    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    const-string v7, "ndtopic:x"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v5, ":"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    iput-object v3, v4, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    goto :goto_2

    .line 197
    .line 198
    :cond_6
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 199
    .line 200
    .line 201
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 202
    .line 203
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->liveChatThreadList:Ljava/util/List;

    .line 204
    .line 205
    .line 206
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 209
    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    .line 213
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->normalLiveCategoryList:Ljava/util/List;

    .line 214
    .line 215
    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 219
    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 226
    .line 227
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 228
    .line 229
    iget-object p1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    invoke-direct {p0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateViews()V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 239
    move-result p1

    .line 240
    .line 241
    if-eqz p1, :cond_8

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    .line 245
    move-result-object p1

    .line 246
    .line 247
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout;->transitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 251
    :cond_8
    return-void
.end method
