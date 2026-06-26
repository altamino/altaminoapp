.class public Lcom/narvii/topic/adapter/MyCommunityListAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;
.source "MyCommunityListAdapter.kt"

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
.field private activity:Landroid/support/v4/app/FragmentActivity;

.field private final myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

.field private refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 40
    new-instance v0, Lcom/narvii/community/MyCommunityHelper;

    invoke-direct {v0, p1}, Lcom/narvii/community/MyCommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    .line 49
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityHelper;->addObserver(Lcom/narvii/community/MyCommunityListService$MyCommunityListObserver;)V

    .line 50
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {p1, p0}, Lcom/narvii/community/MyCommunityHelper;->addGlobalChatMessageReceptor(Lcom/narvii/chat/core/ChatService$ChatMessageReceptor;)V

    .line 224
    iget-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 225
    instance-of v0, p1, Lcom/narvii/app/NVActivity;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/narvii/app/NVActivity;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_1
    instance-of v0, p1, Lcom/narvii/app/NVFragment;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.narvii.app.NVFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p1, 0x0

    .line 224
    :goto_0
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->activity:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method public static final synthetic access$bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)Lcom/narvii/util/EventDispatcher;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-object p0
.end method

.method public static final synthetic access$notifyDataListChanged(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->notifyDataListChanged()V

    return-void
.end method

.method public static final synthetic access$setDataSetEventDispatcher$p(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Lcom/narvii/util/EventDispatcher;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    return-void
.end method

.method private final bind(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)Lkotlin/Lazy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;",
            "I)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 202
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$bind$1;

    invoke-direct {v1, p1, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$bind$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    return-object p1
.end method

.method private final notifyDataListChanged()V
    .locals 1

    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b03fd

    return v0
.end method

.method public firstRefreshList()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    new-instance v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;

    invoke-direct {v1, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$firstRefreshList$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/community/MyCommunityHelper;->refresh(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/narvii/model/Community;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "myCommunityHelper.rawList()[pos]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/narvii/model/Community;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->rawList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMyCommunityHelper()Lcom/narvii/community/MyCommunityHelper;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    return-object v0
.end method

.method public final getRefreshListener()Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    return-object v0
.end method

.method public final launchCommunity()Lcom/narvii/model/Community;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchCommunity()Lcom/narvii/model/Community;

    move-result-object v0

    return-object v0
.end method

.method public final launchProgress()Lcom/narvii/widget/SmoothProgressBar;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    invoke-virtual {v0}, Lcom/narvii/community/MyCommunityHelper;->getLaunchProgress()Lcom/narvii/widget/SmoothProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public loadFailed()V
    .locals 2

    .line 86
    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFailed$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFailed$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 90
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFailed$2;->INSTANCE:Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFailed$2;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public loadFinish()V
    .locals 2

    .line 96
    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFinish$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFinish$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 100
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->dataSetEventDispatcher:Lcom/narvii/util/EventDispatcher;

    sget-object v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFinish$2;->INSTANCE:Lcom/narvii/topic/adapter/MyCommunityListAdapter$loadFinish$2;

    invoke-virtual {v0, v1}, Lcom/narvii/util/EventDispatcher;->dispatch(Lcom/narvii/util/Callback;)V

    return-void
.end method

.method public onAttach()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onAttach()V

    .line 63
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->firstRefreshList()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 115
    instance-of v1, p1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 116
    move-object v1, p1

    check-cast v1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    invoke-virtual {v1, v0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;->updateData(Lcom/narvii/model/Community;)V

    .line 117
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->getItem(I)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/logging/LogUtils;->setAttachedObject(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance p2, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->communityLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026ayoutId(), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$ViewHolder;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onEnterCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    const-string v0, "community"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string v0, "cell"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    move-object p2, p3

    check-cast p2, Lcom/narvii/model/Community;

    new-instance p5, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;

    invoke-direct {p5, p0, p3}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onItemClick$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p4, p5}, Lcom/narvii/community/MyCommunityHelper;->launchCommunity(Lcom/narvii/model/Community;Landroid/view/View;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/community/MyCommunityListResponse;Ljava/lang/Integer;)V
    .locals 0

    .line 209
    new-instance p1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onListChanged$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 134
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p1, p3}, Lcom/narvii/community/MyCommunityHelper;->showMenuDialog(Lcom/narvii/model/Community;)V

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onLongClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNewChatMessage(ILcom/narvii/chat/util/ChatMessageDto;)V
    .locals 0

    const-string p1, "chatMessageDto"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReminderChanged(Lcom/narvii/community/MyCommunityListService;)V
    .locals 0

    .line 219
    new-instance p1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onReminderChanged$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onReminderChanged$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResetChatMessageList()V
    .locals 0

    return-void
.end method

.method public onSuggestListChanged(Lcom/narvii/community/MyCommunityListService;Lcom/narvii/master/CommunityListResponse;)V
    .locals 0

    return-void
.end method

.method public onUnreadThreadCountChanged(I)V
    .locals 0

    .line 142
    new-instance p1, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onUnreadThreadCountChanged$1;

    invoke-direct {p1, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$onUnreadThreadCountChanged$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 1

    .line 76
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    .line 77
    iget-object p2, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->myCommunityHelper:Lcom/narvii/community/MyCommunityHelper;

    new-instance v0, Lcom/narvii/topic/adapter/MyCommunityListAdapter$refresh$1;

    invoke-direct {v0, p0}, Lcom/narvii/topic/adapter/MyCommunityListAdapter$refresh$1;-><init>(Lcom/narvii/topic/adapter/MyCommunityListAdapter;)V

    invoke-virtual {p2, p1, v0}, Lcom/narvii/community/MyCommunityHelper;->refresh(ILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setRefreshListener(Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/topic/adapter/MyCommunityListAdapter;->refreshListener:Lcom/narvii/topic/adapter/MyCommunityListAdapter$OnRefreshListener;

    return-void
.end method
