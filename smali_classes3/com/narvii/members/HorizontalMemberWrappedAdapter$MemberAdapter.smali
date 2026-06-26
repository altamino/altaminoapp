.class public final Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "HorizontalMemberWrappedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/HorizontalMemberWrappedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MemberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-static {p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->access$getNvContext$p(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/narvii/members/HorizontalMemberAdapter;->bindCustomViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 75
    instance-of p2, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    if-eqz p2, :cond_0

    .line 76
    check-cast p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    iget-object p1, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    :cond_0
    return-void
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEndItemLayoutId()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-virtual {v0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->showEndItemView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0b0466

    return v0
.end method

.method public onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 89
    instance-of p2, p1, Lcom/narvii/model/User;

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p2, p1, p3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 93
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 43
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    .line 67
    iget-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    invoke-virtual {p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->isSinglePage()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected shouldShakeMoods()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
