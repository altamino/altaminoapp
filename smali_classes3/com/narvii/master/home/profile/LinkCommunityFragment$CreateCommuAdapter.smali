.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;
.source "LinkCommunityFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/LinkCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CreateCommuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter<",
        "Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkCommunityFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkCommunityFragment.kt\ncom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter\n*L\n1#1,401:1\n*E\n"
.end annotation


# instance fields
.field private final masterHelper:Lcom/narvii/master/MasterHelper;

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V
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

    .line 316
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 318
    new-instance p1, Lcom/narvii/master/MasterHelper;

    invoke-direct {p1, p2}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->masterHelper:Lcom/narvii/master/MasterHelper;

    return-void
.end method


# virtual methods
.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 323
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {v2}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUser$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/model/User;

    move-result-object v2

    iget-object v2, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/linked-community"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    const-string v1, "ApiRequest.Builder().pat\u2026inked-community\").build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getMasterHelper()Lcom/narvii/master/MasterHelper;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->masterHelper:Lcom/narvii/master/MasterHelper;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1;

    invoke-direct {p2, p0}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$onBindViewHolder$1;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;

    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b04aa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(getC\u2026ty_layout, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;)V
    .locals 1

    .line 327
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 328
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 329
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->getLinkedCommunityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 330
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 331
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->getUnlinkedCommunityList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 332
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    .line 333
    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    return-void
.end method

.method public bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 316
    check-cast p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;",
            ">;"
        }
    .end annotation

    .line 320
    const-class v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;

    return-object v0
.end method
