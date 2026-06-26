.class final Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;
.super Ljava/lang/Object;
.source "TopicTitleAdapter.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/util/RequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lcom/narvii/util/RequestResult;)V
    .locals 2

    .line 114
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    iget-object v0, v0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;->access$getModule$p(Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;)Lcom/narvii/topic/model/discover/ContentModule;

    move-result-object v0

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 115
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;

    iget-object v0, v0, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1;->this$0:Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 116
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/narvii/util/RequestResult;

    invoke-virtual {p0, p1}, Lcom/narvii/master/home/discover/adapter/TopicTitleAdapter$onItemClick$1$1;->call(Lcom/narvii/util/RequestResult;)V

    return-void
.end method
