.class public abstract Lcom/narvii/community/adapter/CommunityListAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_UNLISTED:I

    .line 7
    .line 8
    new-instance v0, Lcom/narvii/community/MasterCommunityLayoutHelper;

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, p1}, Lcom/narvii/community/MasterCommunityLayoutHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 15
    .line 16
    iput-object v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    .line 17
    return-void
.end method


# virtual methods
.method public allowVisitorMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public communityLayoutId()I
    .locals 1

    const v0, 0x7f0d03e1

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "Community"

    return-object v0
.end method

.method public final getCommunityLayoutHelper()Lcom/narvii/community/MasterCommunityLayoutHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    return-object v0
.end method

.method protected getItemType(I)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/narvii/model/Community;

    .line 7
    .line 8
    iget p1, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_NORMAL:I

    .line 9
    return p1
.end method

.method protected getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getTYPE_NORMAL()I
    .locals 1

    iget v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_NORMAL:I

    return v0
.end method

.method public final getTYPE_UNLISTED()I
    .locals 1

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
    .param p1    # Lcom/narvii/model/Community;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "item"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 11
    return-void
.end method

.method protected onBindItemViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
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
    instance-of v0, p1, Lcom/narvii/community/widget/CommunityViewHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/narvii/community/widget/CommunityViewHolder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    .line 15
    move-result-object p2

    .line 16
    .line 17
    check-cast p2, Lcom/narvii/model/Community;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/community/widget/CommunityViewHolder;->bindCommunity(Lcom/narvii/model/Community;)V

    .line 21
    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "parent"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget v0, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->TYPE_UNLISTED:I

    .line 8
    .line 9
    const-string v1, "context"

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ne p2, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0d0398

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    new-instance p1, Lcom/narvii/community/widget/CommunityViewHolder;

    .line 30
    .line 31
    .line 32
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 33
    .line 34
    iget-object v5, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 35
    .line 36
    .line 37
    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->isDarkTheme()Z

    .line 41
    move-result v6

    .line 42
    const/4 v7, 0x0

    .line 43
    .line 44
    iget-object v8, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    .line 45
    .line 46
    const/16 v9, 0x8

    .line 47
    const/4 v10, 0x0

    .line 48
    move-object v3, p1

    .line 49
    .line 50
    .line 51
    invoke-direct/range {v3 .. v10}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/k;)V

    .line 52
    return-object p1

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 60
    move-result-object p2

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutId()I

    .line 64
    move-result v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    new-instance p1, Lcom/narvii/community/widget/CommunityViewHolder;

    .line 71
    .line 72
    .line 73
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 74
    .line 75
    iget-object v5, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 76
    .line 77
    .line 78
    invoke-static {v5, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->isDarkTheme()Z

    .line 82
    move-result v6

    .line 83
    const/4 v7, 0x0

    .line 84
    .line 85
    iget-object v8, p0, Lcom/narvii/community/adapter/CommunityListAdapter;->communityLayoutHelper:Lcom/narvii/community/MasterCommunityLayoutHelper;

    .line 86
    .line 87
    const/16 v9, 0x8

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v3, p1

    .line 90
    .line 91
    .line 92
    invoke-direct/range {v3 .. v10}, Lcom/narvii/community/widget/CommunityViewHolder;-><init>(Landroid/view/View;Lcom/narvii/app/NVContext;ZZLcom/narvii/community/CommunityLayoutHelper;ILkotlin/jvm/internal/k;)V

    .line 93
    return-object p1
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
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p3, Lcom/narvii/model/Community;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    const-string p2, "getContext(...)"

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p3, p1}, Lcom/narvii/community/DataMetricalHelper;->sendCommunityClick(Lcom/narvii/model/Community;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p3}, Lcom/narvii/community/adapter/CommunityListAdapter;->logItemClickEvent(Lcom/narvii/model/Community;)V

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/master/CommunityHelper;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-direct {p1, p2}, Lcom/narvii/master/CommunityHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/narvii/community/adapter/CommunityListAdapter;->allowVisitorMode()Z

    .line 32
    move-result p2

    .line 33
    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p3, p4}, Lcom/narvii/master/CommunityHelper;->visitCommunity(Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1, p3}, Lcom/narvii/master/CommunityHelper;->communityDetail(Lcom/narvii/model/Community;)V

    .line 42
    :goto_0
    const/4 p1, 0x1

    .line 43
    return p1

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 47
    move-result p1

    .line 48
    return p1
.end method
