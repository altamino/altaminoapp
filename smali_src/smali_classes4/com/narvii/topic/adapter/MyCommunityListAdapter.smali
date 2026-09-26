.class public Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;
.implements Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;,
        Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroidx/fragment/app/FragmentActivity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 9
    .line 10
    new-instance v0, Lcom/narvii/community/MyCommunityHelper;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/narvii/community/MyCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityHelper;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Lcom/narvii/community/MyCommunityHelper;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 24
    .line 25
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 35
    goto :goto_0

    .line 36
    .line 37
    :cond_0
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVFragment"

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/app/NVFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 50
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x0

    .line 53
    .line 54
    :goto_0
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 55
    return-void
.end method

.method public static final synthetic access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lw7/m;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;",
            "I)",
            "Lw7/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lw7/q;->NONE:Lw7/q;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$bind$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$bind$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lw7/n;->b(Lw7/q;Le8/a;)Lw7/m;

    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public static synthetic g(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFailed$lambda$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic h(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFailed$lambda$0(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onListChanged$lambda$6$lambda$5(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFinish$lambda$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic k(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onUnreadThreadCountChanged$lambda$4(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method

.method public static synthetic l(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onReminderChanged$lambda$7(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method

.method private static final loadFailed$lambda$0(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;->onFailed()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    .line 17
    return-void
.end method

.method private static final loadFailed$lambda$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private static final loadFinish$lambda$2(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;->onFinish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    .line 17
    return-void
.end method

.method private static final loadFinish$lambda$3(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method public static synthetic m(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->onListChanged$lambda$6(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method

.method public static synthetic n(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->loadFinish$lambda$2(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    return-void
.end method

.method private final notifyDataListChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 13
    :goto_0
    return-void
.end method

.method private static final onListChanged$lambda$6(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;->onListChanged()V

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/topic/adapter/d;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lcom/narvii/topic/adapter/d;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method

.method private static final onListChanged$lambda$6$lambda$5(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private static final onReminderChanged$lambda$7(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    .line 10
    return-void
.end method

.method private static final onUnreadThreadCountChanged$lambda$4(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    .line 10
    return-void
.end method


# virtual methods
.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0d0433

    return v0
.end method

.method public firstRefreshList()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    new-instance v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/narvii/community/MyCommunityHelper;->refresh(ILe8/l;)V

    .line 12
    return-void
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->errorMessage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    return-object v0
.end method

.method public final getRefreshListener()Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    return-object v0
.end method

.method public final launchCommunity()Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchCommunity()Lcom/narvii/model/Community;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final launchProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public loadFailed()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/topic/adapter/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/h;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/topic/adapter/i;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lcom/narvii/topic/adapter/i;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    return-void
.end method

.method public loadFinish()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/topic/adapter/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/e;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/topic/adapter/f;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1}, Lcom/narvii/topic/adapter/f;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 19
    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->firstRefreshList()V

    .line 7
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, p1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->updateData(Lcom/narvii/model/Community;)V

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p2, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->communityLayoutId()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const-string v0, "inflate(...)"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Landroid/view/View;)V

    .line 33
    return-object p2
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "cell"

    .line 3
    .line 4
    .line 5
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 12
    move-object p2, p3

    .line 13
    .line 14
    check-cast p2, Lcom/narvii/model/Community;

    .line 15
    .line 16
    new-instance p5, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;

    .line 17
    .line 18
    .line 19
    invoke-direct {p5, p0, p3}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/community/MyCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Le8/l;)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/community/MyCommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/topic/adapter/k;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/k;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1    # Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 7
    .line 8
    check-cast p3, Lcom/narvii/model/Community;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityHelper;->showMenuDialog(Lcom/narvii/model/Community;)V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0
    .param p2    # Lcom/narvii/chat/util/ChatMessageDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/topic/adapter/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/j;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0
    .param p1    # Lcom/narvii/community/MyCommunityListService;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/CommunityListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/topic/adapter/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/g;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1
    .param p2    # Lcom/narvii/paging/source/PageRequestCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 4
    .line 5
    iget-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$refresh$1;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$refresh$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1, v0}, Lcom/narvii/community/MyCommunityHelper;->refresh(ILe8/l;)V

    .line 14
    return-void
.end method

.method public final setRefreshListener(Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    return-void
.end method
