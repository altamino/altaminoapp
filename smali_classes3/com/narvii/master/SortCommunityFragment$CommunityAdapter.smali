.class Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;
.super Lcom/narvii/master/explorer/CommunityListAdapter;
.source "SortCommunityFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/SortCommunityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommunityAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/SortCommunityFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/SortCommunityFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;->this$0:Lcom/narvii/master/SortCommunityFragment;

    .line 104
    invoke-direct {p0, p1}, Lcom/narvii/master/explorer/CommunityListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 160
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;->pageSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    new-instance p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 163
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->createLoadMoreItem(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    const-string v0, "account"

    .line 109
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 110
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v2, "/community/joined"

    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_0

    const-string p1, "start0"

    .line 114
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_2

    iget-boolean p1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    if-nez p1, :cond_3

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->resetEmptyList()V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 133
    check-cast p1, Lcom/narvii/model/Community;

    const v0, 0x7f0b034c

    .line 134
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090562

    .line 135
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/widget/NVImageView;

    iget-object v0, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p3, 0x7f090b5b

    .line 136
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 142
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/narvii/model/Community;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance p1, Lcom/narvii/widget/ACMAlertDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0352

    .line 144
    invoke-virtual {p1, p2}, Lcom/narvii/widget/ACMAlertDialog;->setMessage(I)V

    const p2, 0x7f0f0193

    const/4 p4, 0x0

    .line 145
    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f0acd

    .line 146
    new-instance p4, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;

    invoke-direct {p4, p0, p3}, Lcom/narvii/master/SortCommunityFragment$CommunityAdapter$1;-><init>(Lcom/narvii/master/SortCommunityFragment$CommunityAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p4}, Lcom/narvii/widget/ACMAlertDialog;->addButton(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 152
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    const/4 p1, 0x1

    return p1

    .line 155
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/master/explorer/CommunityListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 168
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "delete"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
