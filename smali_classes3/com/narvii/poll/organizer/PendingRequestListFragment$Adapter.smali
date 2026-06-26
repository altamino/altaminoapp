.class Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;
.super Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.source "PendingRequestListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/organizer/PendingRequestListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poll/organizer/PendingRequestListFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    .line 39
    invoke-direct {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 44
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/blog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    const-string v2, "id"

    .line 45
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/poll/options-pending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090cce

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f037d

    .line 54
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 61
    instance-of v0, p3, Lcom/narvii/model/PollOption;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 62
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090cce

    if-ne v0, v1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    check-cast p3, Lcom/narvii/model/PollOption;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/narvii/poll/organizer/PendingRequestListFragment;->approve(Lcom/narvii/model/PollOption;Z)V

    const/4 p1, 0x1

    return p1

    .line 66
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 71
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "new"

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/PollOption;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/poll/organizer/PendingRequestListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PendingRequestListFragment;

    const-string v2, "id"

    .line 73
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/narvii/notification/Notification;->clone()Lcom/narvii/notification/Notification;

    move-result-object p1

    const-string v0, "delete"

    .line 75
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method
