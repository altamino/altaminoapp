.class public abstract Lcom/narvii/user/list/UserListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "UserListAdapter.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;
.implements Lcom/narvii/user/list/UserListItemHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/User;",
        "Lcom/narvii/model/api/UserListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;",
        "Lcom/narvii/user/list/UserListItemHost;"
    }
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field userListHelper:Lcom/narvii/user/list/UserListHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 34
    new-instance p1, Lcom/narvii/user/list/UserListHelper;

    invoke-direct {p1, p0, p0}, Lcom/narvii/user/list/UserListHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/user/list/UserListItemHost;)V

    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->userListHelper:Lcom/narvii/user/list/UserListHelper;

    return-void
.end method


# virtual methods
.method public allowExtraInfoForItem(Lcom/narvii/model/User;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Lcom/narvii/model/User;

    return-object v0
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListAdapter;->filterYourself()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    return-object p1

    .line 118
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "account"

    .line 119
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 120
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 124
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/User;

    .line 125
    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    return-object p1
.end method

.method protected filterYourself()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UserList"

    return-object v0
.end method

.method protected getItemType(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected getItemTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 70
    check-cast p1, Lcom/narvii/model/User;

    .line 71
    invoke-virtual {p0}, Lcom/narvii/user/list/UserListAdapter;->layoutId()I

    move-result v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 73
    iget-object p3, p0, Lcom/narvii/user/list/UserListAdapter;->userListHelper:Lcom/narvii/user/list/UserListHelper;

    invoke-virtual {p3, p1, p2}, Lcom/narvii/user/list/UserListHelper;->updateCell(Lcom/narvii/model/User;Landroid/view/View;)V

    return-object p2
.end method

.method protected layoutId()I
    .locals 1

    const v0, 0x7f0b06b2

    return v0
.end method

.method public onAttach()V
    .locals 2

    .line 39
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 40
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/User;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 88
    instance-of v0, p3, Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 89
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 90
    check-cast p3, Lcom/narvii/model/User;

    invoke-virtual {p0, p3}, Lcom/narvii/user/list/UserListAdapter;->userClicked(Lcom/narvii/model/User;)V

    const/4 p1, 0x1

    return p1

    .line 93
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 142
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/User;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "new"

    if-eq v0, v2, :cond_0

    const-string v2, "delete"

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVPagedAdapter;->createRequest(Z)Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest;->url()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 151
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-eq v0, v2, :cond_2

    const-string v2, "edit"

    if-ne v0, v2, :cond_3

    .line 153
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_3
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/UserListResponse;",
            ">;"
        }
    .end annotation

    .line 50
    const-class v0, Lcom/narvii/model/api/UserListResponse;

    return-object v0
.end method

.method public showAminoId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDisableView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 2

    .line 97
    invoke-static {p0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->intent(Lcom/narvii/app/NVContext;Lcom/narvii/model/User;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    const-string v1, "Source"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
