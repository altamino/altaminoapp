.class Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;
.super Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.source "MyParticipationListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/organizer/MyParticipationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poll/organizer/MyParticipationListFragment;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 40
    invoke-direct {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 45
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/blog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    const-string v2, "id"

    .line 46
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/poll/options-joined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090cce

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f037f

    .line 55
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p3, 0x7f0800f5

    .line 56
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const p3, -0x777778

    .line 57
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 64
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090c12

    if-ne v1, v2, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p3, Lcom/narvii/model/PollOption;

    if-eqz v1, :cond_1

    if-eqz p5, :cond_1

    .line 69
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f090cce

    if-ne v1, v2, :cond_1

    .line 70
    iget-object p1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    const-string p4, "blog"

    invoke-virtual {p2, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/narvii/model/PollOption;

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    return v0

    .line 73
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 78
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/PollOption;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    const-string v2, "id"

    .line 79
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "account"

    .line 80
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 81
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/PollOption;

    iget-object v1, v1, Lcom/narvii/model/PollOption;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method
