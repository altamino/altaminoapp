.class public final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->onItemClick(Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/story/StoryTopicListResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/story/StoryTopicListResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/story/StoryTopicListResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 3
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    const-string v0, "delete"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$2$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const-string v0, "notification"

    .line 4
    invoke-virtual {p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 5
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method
