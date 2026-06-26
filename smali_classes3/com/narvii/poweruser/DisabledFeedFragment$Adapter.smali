.class Lcom/narvii/poweruser/DisabledFeedFragment$Adapter;
.super Lcom/narvii/feed/FeedListAdapter;
.source "DisabledFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/DisabledFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/DisabledFeedFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/poweruser/DisabledFeedFragment;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/narvii/poweruser/DisabledFeedFragment$Adapter;->this$0:Lcom/narvii/poweruser/DisabledFeedFragment;

    .line 46
    invoke-direct {p0, p1}, Lcom/narvii/feed/FeedListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Disabled Posts"

    .line 47
    iput-object p1, p0, Lcom/narvii/feed/BaseFeedListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected allowShowDisable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 1

    .line 57
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/feed/blog-disabled"

    .line 58
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Feed;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public onNotification(Lcom/narvii/notification/Notification;)V
    .locals 2

    .line 64
    iget-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/narvii/model/NVObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/narvii/model/NVObject;

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->status()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "delete"

    .line 65
    iput-object v0, p1, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/feed/BaseFeedListAdapter;->onNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/model/api/ListResponse<",
            "+",
            "Lcom/narvii/model/Feed;",
            ">;>;"
        }
    .end annotation

    .line 52
    const-class v0, Lcom/narvii/model/api/BlogListResponse;

    return-object v0
.end method
