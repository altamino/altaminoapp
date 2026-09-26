.class final Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChatListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .param p1    # Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/app/NVContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "ctx"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "module"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;->this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ChatList"

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 6
    .param p1    # Lcom/narvii/notification/Notification;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v0

    .line 8
    .line 9
    :goto_0
    instance-of v1, v1, Lcom/narvii/model/ChatThread;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    check-cast v1, Lcom/narvii/model/ChatThread;

    .line 21
    .line 22
    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    .line 23
    const/4 v3, 0x2

    .line 24
    .line 25
    if-ne v1, v3, :cond_3

    .line 26
    .line 27
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "new"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result v1

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;->this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;

    .line 45
    .line 46
    const-string v2, "key_topic_id"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    .line 50
    move-result v1

    .line 51
    .line 52
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    const-string/jumbo v4, "userAddedTopicList"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    check-cast v2, Ljava/lang/Iterable;

    .line 61
    .line 62
    .line 63
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 69
    .line 70
    if-eqz v4, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v4

    .line 75
    move-object v5, v4

    .line 76
    .line 77
    check-cast v5, Lcom/narvii/model/story/StoryTopic;

    .line 78
    .line 79
    iget v5, v5, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 80
    .line 81
    if-ne v5, v1, :cond_1

    .line 82
    move-object v0, v4

    .line 83
    .line 84
    :cond_2
    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 90
    :cond_3
    return-void
.end method
