.class final Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;
.super Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;
.source "CommunityProfileListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/home/profile/CommunityProfileListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter<",
        "Lcom/narvii/model/Community;",
        "Lcom/narvii/community/MyCommunityListResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommunityProfileListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommunityProfileListFragment.kt\ncom/narvii/master/home/profile/CommunityProfileListFragment$Adapter\n*L\n1#1,195:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

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
            "Lcom/narvii/model/Community;",
            "Lcom/narvii/community/MyCommunityListResponse;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;

    iget-object v1, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-direct {v0, v1, p1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$DataSource;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method protected onBindItemViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    instance-of v0, p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 112
    check-cast p1, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    iget-object v0, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-virtual {v0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/User;

    invoke-virtual {p1, p2, v0}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;->bindInfo(Lcom/narvii/model/Community;Lcom/narvii/model/User;)V

    :cond_0
    return-void
.end method

.method protected onCreateItemViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b0419

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$CommunityViewHolder;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 p1, 0x1

    const-string p3, "try to edit profile while user is null"

    const/4 p4, 0x0

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 117
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result p5

    const v1, 0x7f0903bb

    if-ne p5, v1, :cond_2

    .line 118
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 119
    iget-object p5, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-virtual {p5}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    move-result-object p5

    if-eqz p2, :cond_0

    iget p4, p2, Lcom/narvii/model/Community;->id:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_0
    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/model/User;

    if-nez p4, :cond_1

    .line 121
    invoke-static {p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v0

    .line 124
    :cond_1
    new-instance p3, Lcom/narvii/util/dialog/ProgressDialog;

    iget-object p5, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p3, p5}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {p3}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string p5, "api"

    .line 126
    invoke-virtual {p0, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/narvii/util/http/ApiService;

    .line 127
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    iget v1, p2, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/user-profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p4

    .line 128
    new-instance v0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$onItemClick$1;

    const-class v1, Lcom/narvii/model/api/UserResponse;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter$onItemClick$1;-><init>(Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/model/Community;Ljava/lang/Class;)V

    invoke-virtual {p5, p4, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return p1

    .line 148
    :cond_2
    sget-object p5, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p5}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->logClickEvent(Lcom/narvii/logging/ActSemantic;)V

    .line 149
    invoke-virtual {p0, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->getItem(I)Lcom/narvii/model/NVObject;

    move-result-object p2

    check-cast p2, Lcom/narvii/model/Community;

    .line 150
    iget-object p5, p0, Lcom/narvii/master/home/profile/CommunityProfileListFragment$Adapter;->this$0:Lcom/narvii/master/home/profile/CommunityProfileListFragment;

    invoke-virtual {p5}, Lcom/narvii/master/home/profile/CommunityProfileListFragment;->getUserProfiles()Ljava/util/HashMap;

    move-result-object p5

    if-eqz p2, :cond_3

    iget p4, p2, Lcom/narvii/model/Community;->id:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    :cond_3
    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/narvii/model/User;

    if-nez p4, :cond_4

    .line 152
    invoke-static {p3}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    return v0

    .line 155
    :cond_4
    iget-object p3, p0, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-static {p3, p4}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 156
    iget p2, p2, Lcom/narvii/model/Community;->id:I

    const-string p4, "__communityId"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    if-eqz p3, :cond_6

    const-string p2, "__model"

    .line 157
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    if-eqz p3, :cond_7

    const-string p2, "__interactionScope"

    .line 158
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    if-eqz p3, :cond_8

    .line 160
    invoke-virtual {p0, p3}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return p1
.end method

.method public refresh(ILcom/narvii/paging/source/PageRequestCallback;)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/narvii/paging/adapter/PagingRecyclerViewAdapter;->refresh(ILcom/narvii/paging/source/PageRequestCallback;)V

    return-void
.end method
