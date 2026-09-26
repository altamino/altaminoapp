.class Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;
.super Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "/blog/"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 17
    .line 18
    const-string v2, "id"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "/poll/options-joined"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    const p2, 0x7f0a0ff4

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    check-cast p2, Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    const p3, 0x7f1203d7

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    const p3, 0x7f080186

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    const p3, -0x777778

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 7
    move-result v1

    .line 8
    .line 9
    .line 10
    const v2, 0x7f0a0f38

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    return v0

    .line 14
    .line 15
    :cond_0
    instance-of v1, p3, Lcom/narvii/model/PollOption;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    if-eqz p5, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 23
    move-result v1

    .line 24
    .line 25
    .line 26
    const v2, 0x7f0a0ff4

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 31
    .line 32
    const-string p2, "id"

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    iget-object p2, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 39
    .line 40
    const-string p4, "blog"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p4}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    check-cast p3, Lcom/narvii/model/PollOption;

    .line 47
    const/4 p4, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    .line 51
    return v0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 55
    move-result p1

    .line 56
    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/narvii/model/PollOption;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/poll/organizer/MyParticipationListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/MyParticipationListFragment;

    .line 11
    .line 12
    const-string v2, "id"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const-string v0, "account"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lcom/narvii/model/PollOption;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/narvii/model/PollOption;->uid:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 51
    :cond_0
    return-void
.end method
