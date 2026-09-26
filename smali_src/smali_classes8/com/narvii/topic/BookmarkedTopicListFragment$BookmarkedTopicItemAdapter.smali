.class public Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;
.super Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;-><init>(Lcom/narvii/topic/TopicListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string v1, "persona/bookmarked-topics"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/topic/BookmarkedTopicListFragment;->v(Lcom/narvii/topic/BookmarkedTopicListFragment;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/narvii/topic/BookmarkedTopicListFragment;->v(Lcom/narvii/topic/BookmarkedTopicListFragment;)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x4

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    :cond_1
    return-void
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/narvii/topic/TopicBookmarkStub;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "new"

    .line 12
    .line 13
    if-eq v1, v3, :cond_0

    .line 14
    .line 15
    const-string v3, "delete"

    .line 16
    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/topic/TopicBookmarkStub;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/topic/TopicBookmarkStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    instance-of v1, v0, Lcom/narvii/topic/TopicNotificationStub;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v3, "update"

    .line 48
    .line 49
    if-ne v1, v3, :cond_2

    .line 50
    .line 51
    check-cast v0, Lcom/narvii/topic/TopicNotificationStub;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 58
    .line 59
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/narvii/topic/TopicNotificationStub;

    .line 64
    .line 65
    iget-object p1, p1, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 69
    .line 70
    iget-object p1, p0, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->this$0:Lcom/narvii/topic/BookmarkedTopicListFragment;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/narvii/topic/TopicListFragment;->adapter:Lcom/narvii/topic/TopicListFragment$TopicItemAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0, v2}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    .line 76
    :cond_2
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/topic/BookmarkedTopicListFragment$BookmarkedTopicItemAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;I)V
    .locals 0

    .line 2
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
