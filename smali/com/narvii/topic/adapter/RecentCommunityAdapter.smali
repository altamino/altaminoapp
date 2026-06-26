.class public Lcom/narvii/topic/adapter/RecentCommunityAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "RecentCommunityAdapter.kt"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;,
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;,
        Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecentCommunityAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentCommunityAdapter.kt\ncom/narvii/topic/adapter/RecentCommunityAdapter\n*L\n1#1,251:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final commuties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field private launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

.field private final recentCommunityHelper$delegate:Lkotlin/Lazy;

.field private refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

.field private removeLaunchSplash:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/narvii/topic/adapter/RecentCommunityAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "recentCommunityHelper"

    const-string v4, "getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    .line 36
    new-instance p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$recentCommunityHelper$2;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->recentCommunityHelper$delegate:Lkotlin/Lazy;

    .line 43
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 44
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 45
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getActivity(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Landroid/app/Activity;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$removeLaunchSplash(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash()V

    return-void
.end method

.method public static final synthetic access$setContext$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    return-void
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method private final getActivity()Landroid/app/Activity;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 230
    instance-of v1, v0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    check-cast v0, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    instance-of v1, v0, Lcom/narvii/app/NVFragment;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    check-cast v0, Lcom/narvii/app/NVFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.narvii.app.NVFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final onDestroy()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p0}, Lcom/narvii/community/RecentCommunityHelper;->removeChangeListener(Lcom/narvii/community/RecentCommunityHelper$RecentCommunityChangeListener;)V

    :cond_0
    return-void
.end method

.method private final refreshList()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/narvii/community/RecentCommunityHelper;->getRecentList(II)Ljava/util/List;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 83
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    const-string/jumbo v2, "recentList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    new-instance v0, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$refreshList$1;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final removeLaunchSplash()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 240
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    .line 243
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    if-eqz v0, :cond_1

    .line 245
    new-instance v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$removeLaunchSplash$1;

    invoke-direct {v1, v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$removeLaunchSplash$1;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V

    iput-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->removeLaunchSplash:Ljava/lang/Runnable;

    :cond_1
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

    .line 34
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->commuties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLaunchHelper()Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    return-object v0
.end method

.method public final getRecentCommunityHelper()Lcom/narvii/community/RecentCommunityHelper;
    .locals 3

    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->recentCommunityHelper$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/RecentCommunityHelper;

    return-object v0
.end method

.method public final getRefreshListener()Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    return-object v0
.end method

.method public onAttach()V
    .locals 0

    .line 71
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 72
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 95
    instance-of v1, p1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 96
    move-object v1, p1

    check-cast v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

    invoke-virtual {v1, v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;->updateData(Lcom/narvii/model/Community;)V

    .line 97
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance p2, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b042b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026orizontal, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$ViewHolder;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 103
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_5

    .line 104
    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {p0, v0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->onPreOpenCommunity(Lcom/narvii/model/Community;)V

    .line 105
    new-instance v1, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;-><init>(Lcom/narvii/topic/adapter/RecentCommunityAdapter;Lcom/narvii/app/NVContext;)V

    iput-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    .line 106
    iget-object v1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/narvii/community/CommunityLaunchHelper;->visitorModeCompatible:Z

    if-eqz v1, :cond_3

    .line 107
    iput-boolean v3, v1, Lcom/narvii/community/CommunityLaunchHelper;->themePackDownloadAsync:Z

    if-eqz v1, :cond_2

    if-eqz p4, :cond_1

    const v2, 0x7f090562

    .line 108
    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/narvii/widget/NVImageView;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;->launchRecent(Lcom/narvii/model/Community;Lcom/narvii/widget/NVImageView;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.narvii.widget.NVImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 107
    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 106
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v2

    .line 110
    :cond_5
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onPreOpenCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRecentCommunityChanged()V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 77
    invoke-direct {p0}, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshList()V

    return-void
.end method

.method public final setLaunchHelper(Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->launchHelper:Lcom/narvii/topic/adapter/RecentCommunityAdapter$MyLaunchHelper;

    return-void
.end method

.method public final setRefreshListener(Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/topic/adapter/RecentCommunityAdapter;->refreshListener:Lcom/narvii/topic/adapter/RecentCommunityAdapter$OnRefreshListener;

    return-void
.end method
