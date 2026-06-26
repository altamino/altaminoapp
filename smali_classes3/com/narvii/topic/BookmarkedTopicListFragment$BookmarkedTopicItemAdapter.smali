.class public Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;
.super Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;
.source "BookmarkedTopicListFragment.java"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/BookmarkedTopicListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BookmarkedTopicItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/BookmarkedTopicListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;-><init>(Lcom/narvii/topic/TopicListFragment;Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 115
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 116
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "persona/bookmarked-topics"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 117
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 148
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 149
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-static {v0}, Lcom/narvii/topic/BookmarkedTopicListFragment;->access$000(Lcom/narvii/topic/BookmarkedTopicListFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    invoke-static {v0}, Lcom/narvii/topic/BookmarkedTopicListFragment;->access$000(Lcom/narvii/topic/BookmarkedTopicListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    .line 132
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/narvii/topic/TopicBookmarkStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "new"

    if-eq v0, v2, :cond_0

    const-string v2, "delete"

    if-ne v0, v2, :cond_1

    .line 133
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v2, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/narvii/topic/TopicBookmarkStub;

    iget-object p1, p1, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 134
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    iget-object p1, p1, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v2, v0, Lcom/narvii/topic/TopicNotificationStub;

    if-eqz v2, :cond_2

    iget-object p1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v2, "update"

    if-ne p1, v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/narvii/topic/TopicNotificationStub;

    iget-object v2, v2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v2, :cond_2

    .line 136
    new-instance v2, Lcom/narvii/notification/Notification;

    check-cast v0, Lcom/narvii/topic/TopicNotificationStub;

    iget-object v0, v0, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    invoke-direct {v2, p1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 137
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    iget-object p1, p1, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    invoke-virtual {p1, v2, v1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 107
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected showOnlineInfo()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showSubscribeTag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
