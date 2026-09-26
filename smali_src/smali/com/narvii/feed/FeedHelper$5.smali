.class Lcom/narvii/feed/FeedHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/feed/FeedHelper;->delete(Lcom/narvii/model/Feed;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/FeedHelper;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/feed/FeedHelper;Lcom/narvii/model/Feed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 2
    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 3
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "delete"

    iget-object v2, p0, Lcom/narvii/feed/FeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {v0, v1, v2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 5
    new-instance v0, Lcom/narvii/model/ItemCategory;

    invoke-direct {v0}, Lcom/narvii/model/ItemCategory;-><init>()V

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    .line 6
    invoke-static {v1}, Lcom/narvii/feed/FeedHelper;->a(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lcom/narvii/model/User;

    invoke-direct {v2}, Lcom/narvii/model/User;-><init>()V

    iput-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    :cond_0
    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 8
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 9
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 10
    invoke-virtual {p1, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
