.class public Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SpeedDialRecycleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;
    }
.end annotation


# static fields
.field private static final TYPE_FEATURED:I = 0x3

.field private static final TYPE_NORMAL:I = 0x2

.field private static final TYPE_SR:I = 0x1

.field private static final TYPE_VV:I


# instance fields
.field private adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

.field featuredChatThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

.field liveChatThreadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation
.end field

.field normalLiveCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/amino/speeddial/mode/LiveCategory;",
            ">;"
        }
    .end annotation
.end field

.field nvContext:Lcom/narvii/app/NVContext;

.field public playListInThreadList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/narvii/model/PlayList;",
            ">;"
        }
    .end annotation
.end field

.field private speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

.field public userProfileListInThreadList:Ljava/util/HashMap;
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
            "Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;",
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

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 58
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 59
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    .line 60
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

    .line 61
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    .line 72
    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->nvContext:Lcom/narvii/app/NVContext;

    .line 74
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 75
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 77
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    return-object p0
.end method

.method private getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 279
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    iget-object v1, v1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/PlayList;

    if-nez p1, :cond_1

    return-object v0

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/model/PlayList;->getCurrentPlayItem()Lcom/narvii/model/PlayListItem;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 293
    :cond_2
    iget-object p1, p1, Lcom/narvii/model/PlayListItem;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 298
    :cond_3
    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addFakeSrList()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addFakeVVList()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemViewCount()I
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 313
    :cond_2
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;

    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v1
.end method

.method public removeFakeSrList()V
    .locals 0

    return-void
.end method

.method public setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-void
.end method

.method public updateFeaturedChatList(Lcom/narvii/model/ChatThread;)V
    .locals 4

    if-eqz p1, :cond_7

    .line 85
    iget v0, p1, Lcom/narvii/model/ChatThread;->status:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 91
    invoke-virtual {v1, p1}, Lcom/narvii/model/ChatThread;->hasEqualId(Lcom/narvii/model/ChatThread;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 97
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/ChatThread;

    .line 102
    invoke-virtual {v2, p1}, Lcom/narvii/model/ChatThread;->hasEqualId(Lcom/narvii/model/ChatThread;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :cond_5
    if-eqz v0, :cond_6

    .line 108
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    if-eqz p1, :cond_7

    .line 113
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 7

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 124
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 125
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 126
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    iget-object v2, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/ChatThread;

    .line 137
    iget v4, v3, Lcom/narvii/model/ChatThread;->status:I

    const/4 v5, 0x5

    const/16 v6, 0x9

    if-eq v4, v6, :cond_3

    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->featureType()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_3
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v4

    invoke-static {v4}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/narvii/model/ChatThread;->status:I

    if-eq v4, v6, :cond_2

    .line 142
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->getRTCType()I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 143
    iget-object v4, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->nvContext:Lcom/narvii/app/NVContext;

    invoke-static {v3}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    move-result-object v3

    .line 157
    iget-object v4, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 158
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 159
    iget-object v6, v5, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 160
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    :cond_7
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 171
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_8
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 179
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 180
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 182
    :cond_9
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 183
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 184
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    :cond_a
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    if-eqz p1, :cond_b

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method
