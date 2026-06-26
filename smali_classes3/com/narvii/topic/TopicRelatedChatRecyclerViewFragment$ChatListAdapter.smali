.class final Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;
.super Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;
.source "TopicRelatedChatRecyclerViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChatListAdapter"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTopicRelatedChatRecyclerViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicRelatedChatRecyclerViewFragment.kt\ncom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter\n*L\n1#1,65:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/topic/model/discover/ContentModule;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;->this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/narvii/master/home/discover/adapter/GeneralChatCardAdapter;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/topic/model/discover/ContentModule;Lcom/narvii/topic/ModuleDisplayConfig;)V

    return-void
.end method


# virtual methods
.method public getAreaName()Ljava/lang/String;
    .locals 1

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

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 48
    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v1, v1, Lcom/narvii/model/ChatThread;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v2, "null cannot be cast to non-null type com.narvii.model.ChatThread"

    if-eqz v1, :cond_5

    check-cast v1, Lcom/narvii/model/ChatThread;

    iget v1, v1, Lcom/narvii/model/ChatThread;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v3, "new"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 49
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 50
    iget-object v1, p0, Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment$ChatListAdapter;->this$0:Lcom/narvii/topic/TopicRelatedChatRecyclerViewFragment;

    const-string v2, "key_topic_id"

    invoke-virtual {v1, v2}, Lcom/narvii/app/NVFragment;->getIntParam(Ljava/lang/String;)I

    move-result v1

    .line 51
    iget-object v2, p1, Lcom/narvii/model/ChatThread;->userAddedTopicList:Ljava/util/List;

    const-string v4, "chatThread.userAddedTopicList"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/narvii/model/story/StoryTopic;

    .line 52
    iget v5, v5, Lcom/narvii/model/story/StoryTopic;->topicId:I

    if-ne v5, v1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    move-object v0, v4

    .line 51
    :cond_3
    check-cast v0, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p0, v3, p1}, Lcom/narvii/paging/adapter/NVRecyclerViewAdapter;->editDataSource(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    goto :goto_2

    .line 49
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method
