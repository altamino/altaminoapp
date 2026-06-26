.class public final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "TopicTitleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;)V
    .locals 0

    iput-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    .line 127
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 127
    check-cast p2, Lcom/narvii/model/story/StoryTopicListResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/story/StoryTopicListResponse;)V
    .locals 1

    .line 129
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 130
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    iget-object p2, p2, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {p2}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object p2

    const-string v0, "delete"

    invoke-direct {p1, v0, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 131
    iget-object p2, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$$special$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    iget-object p2, p2, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 132
    invoke-virtual {p2, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method
