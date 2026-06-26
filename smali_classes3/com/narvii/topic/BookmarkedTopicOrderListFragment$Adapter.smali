.class Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;
.super Lcom/narvii/list/NVPagedAdapter;
.source "BookmarkedTopicOrderListFragment.java"


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

    .line 107
    iput-object p1, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    const/4 p1, 0x1

    .line 108
    invoke-direct {p0, p2, p1}, Lcom/narvii/list/NVPagedAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method

.method private sendDeleteRequest(Lcom/narvii/model/story/StoryTopic;)V
    .locals 4

    .line 178
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v1, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;

    invoke-direct {v1, p0, p1}, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$Adapter$RMcX794qF-YetUyAuCskLTpqciQ;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;Lcom/narvii/model/story/StoryTopic;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 194
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 195
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persona/bookmarked-topics/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/unbookmark"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v1, "api"

    .line 196
    invoke-virtual {p0, v1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 197
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 125
    new-instance p1, Lcom/narvii/util/http/ApiRequest$Builder;

    invoke-direct {p1}, Lcom/narvii/util/http/ApiRequest$Builder;-><init>()V

    .line 126
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "persona/bookmarked-topics"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

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

    .line 115
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

    .line 147
    instance-of v0, p1, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    const v0, 0x7f0b039b

    .line 148
    invoke-virtual {p0, v0, p3, p2}, Lcom/narvii/list/NVAdapter;->createView(ILandroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090bcd

    .line 149
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/narvii/master/search/widgets/TopicCardView;

    .line 150
    check-cast p1, Lcom/narvii/model/story/StoryTopic;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Lcom/narvii/master/search/widgets/TopicCardView;->setTopic(Lcom/narvii/model/story/StoryTopic;Z)V

    const p1, 0x7f09033c

    .line 153
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 154
    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$sendDeleteRequest$0$BookmarkedTopicOrderListFragment$Adapter(Lcom/narvii/model/story/StoryTopic;Lcom/narvii/model/api/ApiResponse;)V
    .locals 1

    .line 180
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->access$000(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 181
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->access$000(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object p2, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->this$0:Lcom/narvii/topic/BookmarkedTopicOrderListFragment;

    invoke-static {p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->access$000(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 185
    :cond_0
    new-instance p2, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    invoke-direct {p2, v0, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 186
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 188
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    const-string v0, "bookmark_state_change"

    .line 189
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 190
    iput-object p1, p2, Lcom/narvii/topic/TopicNotificationStub;->topic:Lcom/narvii/model/story/StoryTopic;

    .line 191
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "update"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 164
    instance-of v0, p3, Lcom/narvii/model/story/StoryTopic;

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 165
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09033c

    if-ne v0, v1, :cond_0

    .line 166
    sget-object p1, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 167
    check-cast p3, Lcom/narvii/model/story/StoryTopic;

    invoke-direct {p0, p3}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;->sendDeleteRequest(Lcom/narvii/model/story/StoryTopic;)V

    const/4 p1, 0x1

    return p1

    .line 173
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

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

    .line 120
    const-class v0, Lcom/narvii/model/story/StoryTopicListResponse;

    return-object v0
.end method
