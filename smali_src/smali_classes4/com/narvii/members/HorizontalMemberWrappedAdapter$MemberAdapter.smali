.class public final Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->access$getNvContext$p(Lcom/narvii/members/HorizontalMemberWrappedAdapter;)Lcom/narvii/app/NVContext;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 10
    return-void
.end method

.method public static safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Lcom/narvii/list/NVAdapter;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/members/HorizontalMemberAdapter;->bindCustomViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 4
    .line 5
    instance-of p2, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/members/HorizontalMemberAdapter$UserViewHolder;->nicknameView:Lcom/narvii/widget/NicknameView;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    .line 21
    :cond_0
    return-void
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected getDefaultPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getEndItemLayoutId()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->showEndItemView()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Lcom/narvii/members/HorizontalMemberAdapter;->getEndItemLayoutId()I

    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0d0495

    return v0
.end method

.method public onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "recyclerView"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "v"

    .line 10
    .line 11
    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    instance-of p2, p1, Lcom/narvii/model/User;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 26
    .line 27
    sget-object p3, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1, p3}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 31
    .line 32
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 33
    .line 34
    check-cast p1, Lcom/narvii/model/User;

    .line 35
    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    iget-object p2, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 46
    :cond_0
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/UserListResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    iget-object p1, p0, Lcom/narvii/members/HorizontalMemberWrappedAdapter$MemberAdapter;->this$0:Lcom/narvii/members/HorizontalMemberWrappedAdapter;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/members/HorizontalMemberWrappedAdapter;->isSinglePage()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->_isEnd:Z

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected shouldShakeMoods()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
