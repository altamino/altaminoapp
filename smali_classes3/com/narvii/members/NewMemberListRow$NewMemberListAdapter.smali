.class final Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;
.super Lcom/narvii/members/HorizontalMemberAdapter;
.source "NewMemberListRow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/NewMemberListRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NewMemberListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewMemberListRow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewMemberListRow.kt\ncom/narvii/members/NewMemberListRow$NewMemberListAdapter\n*L\n1#1,129:1\n*E\n"
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
.end field

.field private final cid:I

.field final synthetic this$0:Lcom/narvii/members/NewMemberListRow;


# direct methods
.method public constructor <init>(Lcom/narvii/members/NewMemberListRow;Lcom/narvii/app/NVContext;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "I)V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-direct {p0, p2}, Lcom/narvii/members/HorizontalMemberAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    iput p3, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

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

    const v0, 0x7f0b033d

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "createView(R.layout.hori\u2026_empty_list_item, parent)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected createRequest(IILjava/lang/String;)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 89
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    const-string v0, "/user-profile"

    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p3

    .line 90
    iget v0, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

    invoke-virtual {p3, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v0, "type"

    const-string v1, "recent"

    .line 91
    invoke-virtual {p3, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "start"

    invoke-virtual {p3, v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "size"

    invoke-virtual {p3, p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 p1, 0x4e20

    .line 94
    invoke-virtual {p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 p1, 0x0

    .line 95
    invoke-virtual {p3, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 96
    invoke-virtual {p3}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCid()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cid:I

    return v0
.end method

.method protected getNormalItemLayoutId()I
    .locals 1

    const v0, 0x7f0b03a4

    return v0
.end method

.method public onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onItemClicked(Landroid/support/v7/widget/RecyclerView;ILandroid/view/View;)V

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p2, p1}, Lcom/narvii/members/HorizontalMemberAdapter;->getItemType(ILjava/lang/Object;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 112
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-static {p2}, Lcom/narvii/members/NewMemberListRow;->access$toAllNewMembersPage(Lcom/narvii/members/NewMemberListRow;)V

    .line 113
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-virtual {p2}, Lcom/narvii/members/NewMemberListRow;->getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p2}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->getItemAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 117
    instance-of p2, p1, Lcom/narvii/model/User;

    if-eqz p2, :cond_4

    .line 118
    iget-object p2, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->this$0:Lcom/narvii/members/NewMemberListRow;

    invoke-virtual {p2}, Lcom/narvii/members/NewMemberListRow;->getItemClickListener()Lcom/narvii/list/ObjectItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p3, p1

    check-cast p3, Lcom/narvii/model/NVObject;

    invoke-interface {p2, p3}, Lcom/narvii/list/ObjectItemClickListener;->onItemClick(Lcom/narvii/model/NVObject;)V

    .line 119
    :cond_2
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {p2, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "Source"

    const-string p3, "New Members"

    .line 120
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->context:Lcom/narvii/app/NVContext;

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V
    .locals 0

    .line 63
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;Z)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;Z)V

    if-eqz p2, :cond_2

    .line 102
    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p1

    const-string p3, "it.list()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 103
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/narvii/model/api/UserListResponse;->list()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    .line 103
    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p3

    :cond_2
    :goto_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public final refresh(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/model/User;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cachedList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/narvii/members/NewMemberListRow$NewMemberListAdapter;->cachedList:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {p0}, Lcom/narvii/widget/recycleview/NVRecycleAdapter;->refresh()V

    return-void
.end method

.method protected shouldShakeMoods()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
