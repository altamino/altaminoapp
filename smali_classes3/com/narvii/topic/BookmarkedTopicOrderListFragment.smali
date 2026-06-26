.class public Lcom/narvii/topic/BookmarkedTopicOrderListFragment;
.super Lcom/narvii/list/DragSortPageFragment;
.source "BookmarkedTopicOrderListFragment.java"


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

    .line 33
    invoke-direct {p0}, Lcom/narvii/list/DragSortPageFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;)Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    return-object p0
.end method


# virtual methods
.method protected createMainAdapter()Lcom/narvii/list/NVPagedAdapter;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    invoke-direct {v0, p0, p0}, Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    :cond_0
    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "BookmarkedTopicsManage"

    return-object v0
.end method

.method public initNVTheme()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public synthetic lambda$onOptionsItemSelected$0$BookmarkedTopicOrderListFragment(Ljava/util/List;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 80
    new-instance p2, Lcom/narvii/topic/TopicNotificationStub;

    invoke-direct {p2}, Lcom/narvii/topic/TopicNotificationStub;-><init>()V

    const-string v0, "bookmark_state_change"

    .line 81
    iput-object v0, p2, Lcom/narvii/topic/TopicNotificationStub;->action:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 85
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "topicList"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f0b1c

    .line 42
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 50
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 51
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/narvii/topic/BookmarkedTopicOrderListFragment;->adapter:Lcom/narvii/topic/BookmarkedTopicOrderListFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/narvii/model/story/StoryTopic;

    .line 71
    iget v3, v3, Lcom/narvii/model/story/StoryTopic;->topicId:I

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(I)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v3

    const-string v4, "/persona/bookmarked-topics/reorder"

    invoke-virtual {v3, v4}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    const-string v3, "topicIds"

    .line 75
    invoke-virtual {v2, v3, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    new-instance v1, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v3, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;

    invoke-direct {v3, p0, v0}, Lcom/narvii/topic/-$$Lambda$BookmarkedTopicOrderListFragment$HGFfH4RaIBVJF95I0MNNRsO1DwU;-><init>(Lcom/narvii/topic/BookmarkedTopicOrderListFragment;Ljava/util/List;)V

    iput-object v3, v1, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 90
    invoke-virtual {v1}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "api"

    .line 92
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 93
    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    iget-object v1, v1, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
