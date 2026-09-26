.class public Lcom/narvii/topic/BookmarkedTopicOrderListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    .line 4
    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$0(Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1
    .line 2
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    .line 3
    .line 4
    .line 5
    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    .line 6
    .line 7
    const-string v0, "bookmark_state_change"

    .line 8
    .line 9
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/narvii/notification/Notification;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "update"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 21
    .line 22
    new-instance p2, Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "topicList"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const/4 p1, -0x1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 43
    return-void
.end method

.method public static synthetic u(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->lambda$onOptionsItemSelected$0(Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    return-object p0
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 12
    :cond_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "bookmarked_topic_manage"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f120be0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    .line 36
    .line 37
    iget v3, v3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 41
    goto :goto_0

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    const-string v4, "/persona/bookmarked-topics/reorder"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v3, "topicIds"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    .line 62
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 66
    move-result-object v3

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    new-instance v3, Lcom/narvii/topic/c;

    .line 72
    .line 73
    .line 74
    invoke-direct {v3, p0, v0}, Lcom/narvii/topic/c;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;)V

    .line 75
    .line 76
    iput-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    .line 80
    .line 81
    const-string v0, "api"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 91
    move-result-object v2

    .line 92
    .line 93
    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 100
    move-result p1

    .line 101
    return p1
.end method
