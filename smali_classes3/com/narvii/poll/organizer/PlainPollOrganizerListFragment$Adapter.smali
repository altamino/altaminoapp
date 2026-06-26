.class Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;
.super Lcom/narvii/poll/organizer/PollOptionActionListAdapter;
.source "PlainPollOrganizerListFragment.java"

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

    .line 43
    iput-object p1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    .line 44
    invoke-direct {p0, p1}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 3

    .line 49
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/blog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    const-string v2, "id"

    .line 50
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/poll/options-joined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090cce

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0f037e

    .line 59
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    const p2, 0x7f090ccf

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 5

    .line 67
    instance-of v0, p3, Lcom/narvii/model/PollOption;

    const/4 v1, 0x1

    const-string v2, "blog"

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 68
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090cce

    if-ne v3, v4, :cond_0

    .line 69
    check-cast p3, Lcom/narvii/model/PollOption;

    .line 70
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p4, Lcom/narvii/poll/post/PlainPollPostActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    iget-object p2, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    invoke-virtual {p2, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object p2, p3, Lcom/narvii/model/PollOption;->polloptId:Ljava/lang/String;

    const-string p4, "polloptId"

    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance p2, Lcom/narvii/poll/post/PlainPollPost;

    invoke-direct {p2, p3}, Lcom/narvii/poll/post/PlainPollPost;-><init>(Lcom/narvii/model/PollOption;)V

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "post"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    .line 78
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f090ccf

    if-ne v0, v3, :cond_1

    .line 79
    iget-object p1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    invoke-virtual {p2, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/narvii/model/PollOption;

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->withdraw(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/model/PollOption;Z)V

    return v1

    .line 83
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/narvii/poll/organizer/PollOptionActionListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 88
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/model/PollOption;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->parentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment$Adapter;->this$0:Lcom/narvii/poll/organizer/PlainPollOrganizerListFragment;

    const-string v2, "id"

    .line 89
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "account"

    .line 90
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 91
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/narvii/model/PollOption;

    iget-object v1, v1, Lcom/narvii/model/PollOption;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_0
    return-void
.end method
