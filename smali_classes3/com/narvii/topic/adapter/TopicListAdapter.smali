.class public Lcom/narvii/topic/adapter/TopicListAdapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "TopicListAdapter.kt"

# interfaces
.implements Lcom/narvii/notification/NotificationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;",
        "Lcom/narvii/notification/NotificationListener;"
    }
.end annotation


# instance fields
.field private languageService:Lcom/narvii/language/ContentLanguageService;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    if-eqz p1, :cond_0

    const-string v0, "content_language"

    .line 25
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/language/ContentLanguageService;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/narvii/topic/adapter/TopicListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 32
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    const-string v0, "/topic/trending"

    .line 33
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->getLanguageService()Lcom/narvii/language/ContentLanguageService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/language/ContentLanguageService;->getRequestPrefLanguageWithLocalAsDefault()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "language"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "ApiRequest.Builder()\n   \u2026thLocalAsDefault).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected dataType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopic;",
            ">;"
        }
    .end annotation

    .line 27
    const-class v0, Lcom/narvii/model/story/StoryTopic;

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
    .locals 3

    .line 42
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    const v0, 0x7f0b039a

    .line 43
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090bcd

    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/master/search/widgets/TopicCardView;

    .line 45
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->showBookmark()Z

    move-result v0

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->showRightChevron()Z

    move-result v1

    invoke-virtual {p0}, Lcom/narvii/topic/adapter/TopicListAdapter;->showSubscribeTag()Z

    move-result v2

    invoke-virtual {p3, p1, v0, v1, v2}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;ZZZ)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLanguageService()Lcom/narvii/language/ContentLanguageService;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/narvii/topic/adapter/TopicListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cell"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    instance-of v0, p3, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 67
    const-class v0, Lcom/narvii/topic/TopicTabFragment;

    invoke-static {v0}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "topic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    move-object v1, p3

    check-cast v1, Lcom/narvii/model/story/StoryTopic;

    iget v1, v1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    const-string v2, "key_topic_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V

    .line 72
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    iget-object v1, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "update"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_1

    .line 77
    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    :cond_1
    instance-of v0, v0, Lcom/narvii/topic/TopicNotificationStub;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.narvii.topic.TopicNotificationStub"

    if-eqz v0, :cond_3

    check-cast v0, Lcom/narvii/topic/TopicNotificationStub;

    iget-object v0, v0, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    .line 80
    iput-object v2, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 81
    iget-object p1, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/narvii/topic/TopicNotificationStub;

    iget-object p1, p1, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    iput-object p1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVPagedAdapter;->editList(Lcom/narvii/notification/Notification;Z)V

    goto :goto_1

    .line 81
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;"
        }
    .end annotation

    .line 29
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method

.method public setLanguageService(Lcom/narvii/language/ContentLanguageService;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/narvii/topic/adapter/TopicListAdapter;->languageService:Lcom/narvii/language/ContentLanguageService;

    return-void
.end method

.method public showBookmark()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showRightChevron()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showSubscribeTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
