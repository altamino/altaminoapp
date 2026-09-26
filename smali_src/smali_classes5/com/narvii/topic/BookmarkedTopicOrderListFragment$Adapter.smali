.class Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/topic/BookmarkedTopicOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/NVPagedAdapter<",
        "Lcom/narvii/model/story/StoryTopic;",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    .line 3
    const/4 p1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    .line 10
    return-void
.end method

.method private synthetic lambda$sendDeleteRequest$0(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->v(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->v(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 18
    move-result-object p2

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->v(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 31
    .line 32
    :cond_0
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 33
    .line 34
    const-string v0, "delete"

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 41
    .line 42
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    .line 43
    .line 44
    .line 45
    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    .line 46
    .line 47
    const-string v0, "bookmark_state_change"

    .line 48
    .line 49
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p1, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 52
    .line 53
    new-instance p1, Lcom/narvii/notification/Notification;

    .line 54
    .line 55
    .line 56
    const-string/jumbo v0, "update"

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 63
    return-void
.end method

.method public static synthetic m(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->lambda$sendDeleteRequest$0(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method private sendDeleteRequest(Lcom/narvii/model/story/StoryTopic;)V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    new-instance v1, Lcom/narvii/topic/d;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/d;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;)V

    .line 15
    .line 16
    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    const-string v3, "persona/bookmarked-topics/"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string p1, "/unbookmark"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    const-string v1, "api"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    move-result-object v1

    .line 66
    .line 67
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 73
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

    const-class v0, Lcom/narvii/model/story/StoryTopic;

    return-object v0
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "TopicList"

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
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    const v0, 0x7f0d03d2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    .line 14
    const p3, 0x7f0a0ee8

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    move-result-object p3

    .line 19
    .line 20
    check-cast p3, Lcom/narvii/master/search/widgets/TopicCardView;

    .line 21
    .line 22
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3, p1, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;Z)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a0417

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object p2

    .line 40
    :cond_0
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/story/StoryTopic;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    const v1, 0x7f0a0417

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 21
    .line 22
    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p3}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->sendDeleteRequest(Lcom/narvii/model/story/StoryTopic;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 31
    move-result p1

    .line 32
    return p1
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

    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method
