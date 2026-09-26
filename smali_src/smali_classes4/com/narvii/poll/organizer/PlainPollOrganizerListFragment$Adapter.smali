.class Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;
.super Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
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
    iget-object v1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

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
    const p3, 0x7f1203d6

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    const p2, 0x7f0a0ff5

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object p2

    .line 27
    const/4 p3, 0x0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 31
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/PollOption;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    const-string v2, "blog"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 13
    move-result v3

    .line 14
    .line 15
    .line 16
    const v4, 0x7f0a0ff4

    .line 17
    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/model/PollOption;

    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    const-class p4, Lcom/narvii/poll/post/PlainPollPostActivity;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .line 33
    iget-object p2, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    iget-object p2, p3, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    .line 43
    .line 44
    const-string p4, "polloptId"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    new-instance p2, Lcom/narvii/poll/post/PlainPollPost;

    .line 50
    .line 51
    .line 52
    invoke-direct {p2, p3}, Lcom/narvii/poll/post/PlainPollPost;-><init>(Lcom/narvii/model/PollOption;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    const-string p3, "post"

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1}, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(Lcom/narvii/list/NVAdapter;Landroid/content/Intent;)V

    .line 65
    return v1

    .line 66
    .line 67
    :cond_0
    if-eqz v0, :cond_1

    .line 68
    .line 69
    if-eqz p5, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 73
    move-result v0

    .line 74
    .line 75
    .line 76
    const v3, 0x7f0a0ff5

    .line 77
    .line 78
    if-ne v0, v3, :cond_1

    .line 79
    .line 80
    iget-object p1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 81
    .line 82
    const-string p2, "id"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object p2

    .line 93
    .line 94
    check-cast p3, Lcom/narvii/model/PollOption;

    .line 95
    const/4 p4, 0x0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    .line 99
    return v1

    .line 100
    .line 101
    .line 102
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 103
    move-result p1

    .line 104
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
    iget-object v1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

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
