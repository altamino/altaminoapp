.class final Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;
.super Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;
.source "SourceFile"


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


# instance fields
.field private final masterHelper:Lcom/narvii/master/MasterHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/LinkCommunityFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/master/home/profile/LinkCommunityFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    new-instance p1, Lcom/narvii/master/MasterHelper;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 18
    return-void
.end method

.method public static synthetic h(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->onBindViewHolder$lambda$0(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    .line 2
    const-string p1, "this$0"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->masterHelper:Lcom/narvii/master/MasterHelper;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public createRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUser$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/model/User;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "user"

    .line 16
    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    :cond_0
    iget-object v1, v1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v3, "user-profile/"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "/linked-community"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    const-string v1, "build(...)"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getMasterHelper()Lcom/narvii/master/MasterHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->masterHelper:Lcom/narvii/master/MasterHelper;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "holder"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8
    .line 9
    new-instance p2, Lcom/narvii/master/home/profile/c0;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p0}, Lcom/narvii/master/home/profile/c0;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
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
    new-instance p2, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getContext()Landroid/content/Context;

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
    const v1, 0x7f0d04d7

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
    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter$CreateCommuViewHolder;-><init>(Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;Landroid/view/View;)V

    .line 32
    return-object p2
.end method

.method protected onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/NVRecyclerViewRequestAdapter;->onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 3
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 4
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->getLinkedCommunityList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    check-cast v0, Ljava/util/Collection;

    goto :goto_1

    :cond_0
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 5
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 6
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedCommu$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;->getUnlinkedCommunityList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    :goto_2
    check-cast p2, Ljava/util/Collection;

    goto :goto_3

    :cond_1
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 7
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getLinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_2

    const-string p1, "linkedDataSource"

    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    iget-object p1, p0, Lcom/narvii/master/home/profile/LinkCommunityFragment$CreateCommuAdapter;->this$0:Lcom/narvii/master/home/profile/LinkCommunityFragment;

    .line 8
    invoke-static {p1}, Lcom/narvii/master/home/profile/LinkCommunityFragment;->access$getUnlinkedDataSource$p(Lcom/narvii/master/home/profile/LinkCommunityFragment;)Lcom/narvii/paging/source/DataSource;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "unlinkedDataSource"

    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object p2, p1

    :goto_4
    invoke-virtual {p2}, Lcom/narvii/paging/source/DataSource;->loadInitData()V

    return-void
.end method

.method public bridge synthetic onObjectResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-class v0, Lcom/narvii/master/home/profile/LinkCommunityFragment$LinkCommunityResponse;

    return-object v0
.end method
