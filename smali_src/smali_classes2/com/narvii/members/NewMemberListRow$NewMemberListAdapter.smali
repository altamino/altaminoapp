.class final Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/NewMemberListRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NewMemberListAdapter"
.end annotation


# instance fields
.field private cachedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cid:I

.field final synthetic this$0:Lcom/narvii/members/NewMemberListRow;


# direct methods
.method public constructor <init>(Lcom/narvii/members/NewMemberListRow;Lcom/narvii/app/NVContext;I)V
    .locals 1
    .param p1    # Lcom/narvii/members/NewMemberListRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I)V"
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
    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 11
    .line 12
    iput p3, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

    .line 13
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected autoLoadNextPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createLoadMoreItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0d036f

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    const-string v0, "createView(...)"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    return-object p1
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p3

    .line 5
    .line 6
    const-string v0, "/user-profile"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 10
    move-result-object p3

    .line 11
    .line 12
    iget v0, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "type"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v1, "recent"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 25
    .line 26
    .line 27
    const-string/jumbo v0, "start"

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 35
    .line 36
    .line 37
    const-string/jumbo p1, "size"

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    .line 46
    const/16 p1, 0x4e20

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 50
    const/4 p1, 0x0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    const-string p2, "build(...)"

    .line 60
    .line 61
    .line 62
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-object p1
.end method

.method public final getCid()I
    .locals 1

    iget v0, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

    return v0
.end method

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0d03db

    return v0
.end method

.method public onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroidx/recyclerview/widget/RecyclerView;ILandroid/view/View;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/narvii/members/HorizontalMemberAdapter;->getItemType(ILjava/lang/Object;)I

    .line 8
    move-result p3

    .line 9
    const/4 v0, 0x1

    .line 10
    .line 11
    if-ne p3, v0, :cond_1

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    .line 14
    .line 15
    .line 16
    invoke-static {p2}, Lcom/narvii/members/NewMemberListRow;->access$toAllNewMembersPage(Lcom/narvii/members/NewMemberListRow;)V

    .line 17
    .line 18
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/narvii/members/NewMemberListRow;->getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, p1}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 28
    :cond_0
    return-void

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    instance-of p2, p1, Lcom/narvii/model/User;

    .line 35
    .line 36
    if-eqz p2, :cond_4

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/members/NewMemberListRow;->getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    move-object p3, p1

    .line 46
    .line 47
    check-cast p3, Lcom/narvii/model/NVObject;

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p3}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 51
    .line 52
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 53
    .line 54
    check-cast p1, Lcom/narvii/model/User;

    .line 55
    .line 56
    .line 57
    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string p2, "Source"

    .line 63
    .line 64
    const-string p3, "New Members"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 73
    move-result-object p2

    .line 74
    .line 75
    .line 76
    invoke-static {p2, p1}, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    .line 77
    :cond_4
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/UserListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p1

    const-string p3, "list(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    .line 5
    invoke-static {p1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final refresh(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "cachedList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->refresh()V

    .line 11
    return-void
.end method

.method protected shouldShakeMoods()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
