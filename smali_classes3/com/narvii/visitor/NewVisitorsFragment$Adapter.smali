.class public final Lcom/narvii/visitor/NewVisitorsFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "NewVisitorsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/NewVisitorsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
        "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewVisitorsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewVisitorsFragment.kt\ncom/narvii/visitor/NewVisitorsFragment$Adapter\n*L\n1#1,191:1\n*E\n"
.end annotation


# instance fields
.field private final ctx:Lcom/narvii/app/NVContext;

.field final synthetic this$0:Lcom/narvii/visitor/NewVisitorsFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p2, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;",
            "Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapperListResponse;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    new-instance v1, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;

    new-instance v2, Lcom/narvii/paging/source/PagingConfiguration;

    const/16 v3, 0x19

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/narvii/paging/source/PagingConfiguration;-><init>(III)V

    invoke-direct {v1, v0, p1, v2}, Lcom/narvii/visitor/NewVisitorsFragment$DataSource;-><init>(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/app/NVContext;Lcom/narvii/paging/source/PagingConfiguration;)V

    invoke-static {v0, v1}, Lcom/narvii/visitor/NewVisitorsFragment;->access$setInnerDataSource$p(Lcom/narvii/visitor/NewVisitorsFragment;Lcom/narvii/visitor/NewVisitorsFragment$DataSource;)V

    .line 72
    iget-object p1, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-static {p1}, Lcom/narvii/visitor/NewVisitorsFragment;->access$getInnerDataSource$p(Lcom/narvii/visitor/NewVisitorsFragment;)Lcom/narvii/visitor/NewVisitorsFragment$DataSource;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommunityList"

    return-object v0
.end method

.method public final getCtx()Lcom/narvii/app/NVContext;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    invoke-virtual {v0}, Lcom/narvii/app/theme/NVThemeFragment;->isDarkNVTheme()Z

    move-result v0

    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p1, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;

    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;

    invoke-virtual {p1, p2}, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;->bindCommunityWrapper(Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance p2, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;

    iget-object v0, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->this$0:Lcom/narvii/visitor/NewVisitorsFragment;

    iget-object v1, p0, Lcom/narvii/visitor/NewVisitorsFragment$Adapter;->ctx:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b03b5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "LayoutInflater.from(ctx.\u2026y_visitor, parent, false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1}, Lcom/narvii/visitor/NewVisitorsFragment$InnerViewHolder;-><init>(Lcom/narvii/visitor/NewVisitorsFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 80
    instance-of v0, p3, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;

    if-eqz v0, :cond_3

    .line 81
    move-object v0, p3

    check-cast v0, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;

    invoke-virtual {v0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getCommunity()Lcom/narvii/model/Community;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->isGlobal()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v1, Lcom/narvii/logging/ActSemantic;->pageEnter:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 85
    const-class v1, Lcom/narvii/visitor/RecentVisitorListFragment;

    invoke-static {v1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    .line 86
    invoke-virtual {p0, v2}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    const-string v3, "accountService"

    .line 87
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getVisitorPrivacyMode()I

    move-result v2

    const-string v3, "privacyMode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-virtual {v0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v0}, Lcom/narvii/visitor/NewVisitorsFragment$CommunityWrapper;->ndcId()I

    move-result v0

    const-string v2, "__communityId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    .line 82
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1

    .line 92
    :cond_3
    :goto_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
