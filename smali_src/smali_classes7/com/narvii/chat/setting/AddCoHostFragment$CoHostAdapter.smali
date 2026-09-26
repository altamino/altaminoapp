.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/setting/AddCoHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoHostAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;,
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;,
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddCoHostFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddCoHostFragment.kt\ncom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,373:1\n1#2:374\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .param p1    # Lcom/narvii/chat/setting/AddCoHostFragment;
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
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
    .param p1    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")",
            "Lcom/narvii/paging/source/PageDataSource<",
            "Lcom/narvii/model/User;",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "context"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 8
    .line 9
    new-instance v1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/app/NVContext;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$setCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;)V

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p1, "coHostDataSource"

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 29
    const/4 p1, 0x0

    .line 30
    :cond_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItemType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sub-int/2addr p1, v1

    .line 4
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    return v0
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
    .line 8
    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    .line 9
    move-result-object p2

    .line 10
    .line 11
    instance-of v0, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    check-cast p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;->bind(Lcom/narvii/model/User;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    instance-of v0, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    check-cast p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;->bind(Lcom/narvii/model/User;)V

    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
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
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p1, v1}, Lcom/narvii/amino/databinding/CoHostTopViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/CoHostTopViewBinding;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v2, "inflate(...)"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {v0, p1, v1}, Lcom/narvii/amino/databinding/ItemThreadMemberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemThreadMemberBinding;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/amino/databinding/ItemThreadMemberBinding;)V

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_0
    new-instance p2, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    .line 55
    .line 56
    .line 57
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    .line 65
    invoke-static {v0, p1, v1}, Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/amino/databinding/ItemThreadMemberInviteBinding;)V

    .line 73
    :goto_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
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
    if-nez p2, :cond_2

    .line 3
    .line 4
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const-string p1, "loadingDialog"

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 30
    const/4 p1, 0x0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$showActionSheet(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V

    .line 44
    :goto_0
    const/4 p1, 0x1

    .line 45
    return p1
.end method
