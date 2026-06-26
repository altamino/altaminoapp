.class public abstract Lcom/narvii/community/adapter/CommunityListAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "CommunityListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/search/SearchCommunityListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final TYPE_NORMAL:I

.field private final TYPE_UNLISTED:I

.field private final communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_UNLISTED:I

    .line 23
    new-instance v0, Lcom/narvii/community/MasterCommunityLayoutHelper;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Lcom/narvii/community/MasterCommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public allowVisitorMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0b03aa

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "Community"

    return-object v0
.end method

.method public final getCommunityLayoutHelper()Lcom/narvii/community/MasterCommunityLayoutHelper;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    return-object v0
.end method

.method protected getItemType(I)I
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/Community;

    .line 32
    iget p1, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_NORMAL:I

    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getTYPE_NORMAL()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_NORMAL:I

    return v0
.end method

.method public final getTYPE_UNLISTED()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_UNLISTED:I

    return v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logItemClickEvent(Lcom/narvii/model/Community;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    return-void
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    instance-of v0, p1, Lcom/narvii/community/widget/CommunityViewHolder;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/narvii/community/widget/CommunityViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    invoke-virtual {p1, p2}, Lcom/narvii/community/widget/CommunityViewHolder;->bindCommunity(Lcom/narvii/model/Community;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 12

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_UNLISTED:I

    const-string v1, "context"

    const-string v2, "cell"

    const/4 v3, 0x0

    if-ne p2, v0, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b035e

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 42
    new-instance p1, Lcom/narvii/community/widget/CommunityViewHolder;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->isDarkTheme()Z

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutId()I

    move-result v0

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 46
    new-instance p1, Lcom/narvii/community/widget/CommunityViewHolder;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->isDarkTheme()Z

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 64
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_1

    .line 65
    check-cast p3, Lcom/narvii/model/Community;

    invoke-virtual {p0, p3}, Lcom/narvii/community/adapter/CommunityListAdapter;->logItemClickEvent(Lcom/narvii/model/Community;)V

    .line 66
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 67
    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->allowVisitorMode()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p1, p3, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1, p3}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 74
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
