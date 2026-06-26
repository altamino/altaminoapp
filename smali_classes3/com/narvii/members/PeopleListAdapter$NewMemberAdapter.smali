.class Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "PeopleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/members/PeopleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NewMemberAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListAdapter;


# direct methods
.method public constructor <init>(Lcom/narvii/members/PeopleListAdapter;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    .line 553
    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$000(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Members List"

    .line 554
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 574
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/user-profile"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "recent"

    .line 575
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 576
    iget-object v1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {v1}, Lcom/narvii/members/PeopleListAdapter;->allMembersLimit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 577
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {v2}, Lcom/narvii/members/PeopleListAdapter;->allMembersLimit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "size"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 580
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 582
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterDuplicate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "RecentJoined"

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {v0}, Lcom/narvii/members/PeopleListAdapter;->access$100(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/search/InstantSearchListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 606
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/user/list/UserListExAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090764

    .line 607
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NicknameView;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/narvii/widget/NicknameView;->setRole1(Ljava/lang/String;I)V

    .line 608
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/narvii/widget/NicknameView;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->isDarkNVTheme()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/narvii/widget/NicknameView;->setDarkTheme(Z)V

    return-object p1
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06b7

    return v0
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 551
    check-cast p2, Lcom/narvii/model/api/UserListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserListResponse;I)V
    .locals 0

    .line 592
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    .line 593
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object p1

    const-string p3, "start0"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    iget p2, p2, Lcom/narvii/model/api/UserListResponse;->userProfileCount:I

    invoke-static {p1, p2}, Lcom/narvii/members/PeopleListAdapter;->access$402(Lcom/narvii/members/PeopleListAdapter;I)I

    .line 595
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$400(Lcom/narvii/members/PeopleListAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/narvii/members/PeopleListAdapter;->onAllMembersCountFetched(I)V

    .line 596
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {p1}, Lcom/narvii/members/PeopleListAdapter;->allMembersLimit()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 597
    iput-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 598
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 599
    iget-object p1, p0, Lcom/narvii/members/PeopleListAdapter$NewMemberAdapter;->this$0:Lcom/narvii/members/PeopleListAdapter;

    invoke-static {p1}, Lcom/narvii/members/PeopleListAdapter;->access$500(Lcom/narvii/members/PeopleListAdapter;)Lcom/narvii/members/PeopleListAdapter$SeeAllAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected supportNVTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
