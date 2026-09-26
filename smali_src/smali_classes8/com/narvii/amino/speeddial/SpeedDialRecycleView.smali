.class public Lcom/narvii/amino/speeddial/SpeedDialRecycleView;
.super Lcom/narvii/widget/HorizontalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemViewHolder;,
        Lcom/narvii/amino/speeddial/SpeedDialRecycleView$NormalItemViewHolder;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/HorizontalRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

    .line 9
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

    .line 10
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    new-instance p1, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    invoke-direct {p1, p0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)V

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 15
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->J0(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic b(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;)Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Lcom/narvii/model/ChatThread;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getCurThreadPlayingYoutubeUrl(Lcom/narvii/model/ChatThread;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

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
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

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
    invoke-virtual {p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->getYoutubeWebpUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_4
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addFakeSrList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public addFakeVVList()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    return-void
.end method

.method public getItemViewCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;->getItemCount()I

    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

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
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpThumbUrl:Ljava/util/HashMap;

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
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

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
    new-instance v0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, p0, p1}, Lcom/narvii/amino/speeddial/SpeedDialRecycleView$YoutubeWebpTask;-><init>(Lcom/narvii/amino/speeddial/SpeedDialRecycleView;Ljava/lang/String;)V

    .line 40
    .line 41
    iget-object v2, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->webpTasks:Ljava/util/HashMap;

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

.method public removeFakeSrList()V
    .locals 0

    return-void
.end method

.method public setSpeedDialItemClickListener(Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->listener:Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    return-void
.end method

.method public updateFeaturedChatList(Lcom/narvii/model/ChatThread;)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    iget v0, p1, Lcom/narvii/model/ChatThread;->status:I

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_2

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatThread;->featureType()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x5

    .line 15
    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/narvii/model/ChatThread;->hasEqualId(Lcom/narvii/model/ChatThread;)Z

    .line 38
    move-result v1

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    goto :goto_1

    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 48
    goto :goto_1

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 51
    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Lcom/narvii/model/ChatThread;->hasEqualId(Lcom/narvii/model/ChatThread;)Z

    .line 70
    move-result v2

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v1, 0x0

    .line 75
    .line 76
    :goto_0
    if-eqz v1, :cond_6

    .line 77
    .line 78
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 82
    .line 83
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 84
    .line 85
    if-eqz p1, :cond_7

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 89
    :cond_7
    :goto_2
    return-void
.end method

.method public updateSpeedDial(Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;)V
    .locals 7

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 25
    :cond_0
    return-void

    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->speedDialResponse:Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    iget-object v2, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->threadList:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v3

    .line 50
    .line 51
    if-eqz v3, :cond_5

    .line 52
    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    check-cast v3, Lcom/narvii/model/ChatThread;

    .line 58
    .line 59
    iget v4, v3, Lcom/narvii/model/ChatThread;->status:I

    .line 60
    const/4 v5, 0x5

    .line 61
    .line 62
    const/16 v6, 0x9

    .line 63
    .line 64
    if-eq v4, v6, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->featureType()I

    .line 68
    move-result v4

    .line 69
    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    .line 72
    .line 73
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 78
    move-result v4

    .line 79
    .line 80
    .line 81
    invoke-static {v4}, Lcom/narvii/chat/signalling/SignallingChannel;->isLegalChannelType(I)Z

    .line 82
    move-result v4

    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    iget v4, v3, Lcom/narvii/model/ChatThread;->status:I

    .line 87
    .line 88
    if-eq v4, v6, :cond_2

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->getRTCType()I

    .line 92
    move-result v4

    .line 93
    .line 94
    if-eq v4, v5, :cond_4

    .line 95
    .line 96
    iget-object v4, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/narvii/model/ChatThread;->id()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    move-result v4

    .line 107
    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_0

    .line 113
    .line 114
    .line 115
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    goto :goto_0

    .line 117
    .line 118
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 119
    .line 120
    .line 121
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->nvContext:Lcom/narvii/app/NVContext;

    .line 124
    .line 125
    .line 126
    invoke-static {v3}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->getSupoortedLiveCategoryList(Lcom/narvii/app/NVContext;)Ljava/util/List;

    .line 127
    move-result-object v3

    .line 128
    .line 129
    iget-object v4, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->liveLayerList:Ljava/util/List;

    .line 130
    .line 131
    if-eqz v4, :cond_7

    .line 132
    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v4

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v5

    .line 140
    .line 141
    if-eqz v5, :cond_7

    .line 142
    .line 143
    .line 144
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v5

    .line 146
    .line 147
    check-cast v5, Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 148
    .line 149
    iget-object v6, v5, Lcom/narvii/amino/speeddial/mode/LiveCategory;->topic:Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v6}, Lcom/narvii/amino/speeddial/mode/LiveCategory;->isValidTopicInList(Ljava/util/List;Ljava/lang/String;)Z

    .line 153
    move-result v6

    .line 154
    .line 155
    if-eqz v6, :cond_6

    .line 156
    .line 157
    .line 158
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    goto :goto_1

    .line 160
    .line 161
    :cond_7
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 162
    .line 163
    .line 164
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 165
    .line 166
    iget-object v3, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 167
    .line 168
    .line 169
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    .line 171
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 172
    .line 173
    .line 174
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 175
    .line 176
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->featuredChatThreadList:Ljava/util/List;

    .line 177
    .line 178
    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    .line 181
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    .line 186
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->liveChatThreadList:Ljava/util/List;

    .line 187
    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 190
    move-result v0

    .line 191
    .line 192
    if-nez v0, :cond_8

    .line 193
    .line 194
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->normalLiveCategoryList:Ljava/util/List;

    .line 195
    .line 196
    .line 197
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    .line 199
    :cond_8
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 200
    .line 201
    if-eqz v0, :cond_9

    .line 202
    .line 203
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 207
    .line 208
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 209
    .line 210
    iget-object v1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->userProfileListInThreadList:Ljava/util/HashMap;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 214
    .line 215
    :cond_9
    iget-object v0, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    .line 216
    .line 217
    if-eqz v0, :cond_a

    .line 218
    .line 219
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 223
    .line 224
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->playListInThreadList:Ljava/util/HashMap;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/narvii/amino/speeddial/mode/SpeedDialResponse;->playlistInThreadList:Ljava/util/HashMap;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 230
    .line 231
    :cond_a
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialRecycleView;->adapter:Lcom/narvii/amino/speeddial/SpeedDialRecycleView$LiveItemRecycleAdapter;

    .line 232
    .line 233
    if-eqz p1, :cond_b

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 237
    :cond_b
    return-void
.end method
