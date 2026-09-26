.class public Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;,
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;,
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final commuties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final recentCommunityHelper$delegate:Lw7/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private removeLaunchSplash:Ljava/lang/Runnable;
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
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 16
    .line 17
    new-instance p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;

    .line 18
    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lw7/n;->a(Le8/a;)Lw7/m;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->recentCommunityHelper$delegate:Lw7/m;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getActivity()Landroid/app/Activity;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 44
    :cond_0
    return-void
.end method

.method public static final synthetic access$getActivity(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Landroid/app/Activity;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getActivity()Landroid/app/Activity;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getContext$p$s-1697111103(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    return-object p0
.end method

.method public static final synthetic access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash()V

    .line 4
    return-void
.end method

.method public static synthetic g(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash$lambda$4(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    return-void
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/app/NVActivity;

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_0
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVFragment"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    check-cast v0, Lcom/narvii/app/NVFragment;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0
.end method

.method public static synthetic h(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList$lambda$2$lambda$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V

    return-void
.end method

.method public static synthetic i(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList$lambda$2(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    return-void
.end method

.method private final onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/narvii/community/RecentCommunityHelper;->removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    .line 10
    :cond_0
    return-void
.end method

.method private final refreshList()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 22
    .line 23
    check-cast v0, Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    new-instance v0, Lcom/narvii/topic/adapter/u;

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/u;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method private static final refreshList$lambda$2(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
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
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;->onFinish()V

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/topic/adapter/v;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Lcom/narvii/topic/adapter/v;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    .line 27
    return-void
.end method

.method private static final refreshList$lambda$2$lambda$1(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;->onDataSetChanged()V

    .line 4
    return-void
.end method

.method private final removeLaunchSplash()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    new-instance v1, Lcom/narvii/topic/adapter/t;

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/narvii/topic/adapter/t;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    .line 22
    .line 23
    iput-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    .line 24
    :cond_1
    return-void
.end method

.method private static final removeLaunchSplash$lambda$4(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->cancel()V

    .line 6
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCommuties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLaunchHelper()Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    return-object v0
.end method

.method public final getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->recentCommunityHelper$delegate:Lw7/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lw7/m;->getValue()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/narvii/community/RecentCommunityHelper;

    .line 9
    return-object v0
.end method

.method public final getRefreshListener()Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    return-object v0
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
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

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
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    instance-of v1, p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    move-object v1, p1

    .line 15
    .line 16
    check-cast v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->updateData(Lcom/narvii/model/Community;)V

    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    .line 36
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
    new-instance p2, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

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
    const v1, 0x7f0d0461

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    const-string v0, "inflate(...)"

    .line 26
    .line 27
    .line 28
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4
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
    move-object v0, p3

    .line 6
    .line 7
    check-cast v0, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->onPreOpenCommunity(Lcom/narvii/model/Community;)V

    .line 11
    .line 12
    new-instance v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 15
    .line 16
    const-string v3, "context"

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V

    .line 23
    .line 24
    iput-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 28
    const/4 v2, 0x1

    .line 29
    .line 30
    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    .line 31
    .line 32
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 36
    .line 37
    iput-boolean v2, v1, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const v2, 0x7f0a06d5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    const-string v3, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    check-cast v2, Lcom/narvii/widget/NVImageView;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v0, v2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public onPreOpenCommunity(Lcom/narvii/model/Community;)V
    .locals 1
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRecentCommunityChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

    .line 4
    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0
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
    .line 6
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

    .line 7
    return-void
.end method

.method public final setLaunchHelper(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    return-void
.end method

.method public final setRefreshListener(Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;)V
    .locals 0
    .param p1    # Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    return-void
.end method
