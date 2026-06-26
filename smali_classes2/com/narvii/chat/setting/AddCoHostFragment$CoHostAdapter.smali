.class public final Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "AddCoHostFragment.kt"


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
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;,
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;,
        Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;
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


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/setting/AddCoHostFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/app/NVContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-direct {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createPageDataSource(Lcom/narvii/app/NVContext;)Lcom/narvii/paging/source/PageDataSource;
    .locals 2
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    new-instance v1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    invoke-direct {v1, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Lcom/narvii/app/NVContext;)V

    invoke-static {v0, v1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$setCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;)V

    .line 124
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostDataSource$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostDataSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Lcom/narvii/model/NVObject;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/narvii/model/User;
    .locals 2

    .line 143
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItemType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sub-int/2addr p1, v1

    .line 148
    invoke-super {p0, p1}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/User;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p1

    return-object p1
.end method

.method protected getItemType(I)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getSize()I
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p2

    .line 114
    instance-of v0, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090c10

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/UserAvatarLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/narvii/widget/UserAvatarLayout;->setUser(Lcom/narvii/model/User;)V

    .line 116
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "holder.itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/narvii/amino/R$id;->nickname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setUser(Lcom/narvii/model/User;)V

    goto :goto_0

    .line 117
    :cond_1
    instance-of p2, p1, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;

    if-eqz p2, :cond_2

    .line 118
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f090b5b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0068

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "context"

    if-eqz p2, :cond_0

    .line 107
    new-instance p2, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;

    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0461

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026er_invite, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$AddCoHostViewHolder;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 104
    :cond_0
    new-instance p2, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;

    iget-object v2, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0460

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(cont\u2026ad_member, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter$CoHostViewHolder;-><init>(Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 163
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-virtual {p0, p2}, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->getItem(I)Lcom/narvii/model/User;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$showActionSheet(Lcom/narvii/chat/setting/AddCoHostFragment;Lcom/narvii/model/User;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getCoHostList$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$openSelectPage(Lcom/narvii/chat/setting/AddCoHostFragment;)V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/setting/AddCoHostFragment$CoHostAdapter;->this$0:Lcom/narvii/chat/setting/AddCoHostFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/AddCoHostFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/AddCoHostFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
