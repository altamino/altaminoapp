.class Lcom/narvii/feed/FeedHelper$5;
.super Ljava/lang/Object;
.source "FeedHelper.java"

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

    .line 430
    iput-object p1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    iput-object p2, p0, Lcom/narvii/feed/FeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 433
    iget-object p1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {p1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 434
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    const-string v2, "delete"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 436
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 438
    new-instance v0, Lcom/narvii/model/ItemCategory;

    invoke-direct {v0}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 439
    iget-object v1, p0, Lcom/narvii/feed/FeedHelper$5;->this$0:Lcom/narvii/feed/FeedHelper;

    invoke-static {v1}, Lcom/narvii/feed/FeedHelper;->access$000(Lcom/narvii/feed/FeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 440
    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v2, :cond_0

    .line 441
    new-instance v2, Lcom/narvii/model/User;

    invoke-direct {v2}, Lcom/narvii/model/User;-><init>()V

    iput-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 443
    :cond_0
    iget-object v2, v0, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 444
    new-instance v1, Lcom/narvii/notification/Notification;

    const-string/jumbo v2, "update"

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 445
    invoke-virtual {p1, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 430
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/FeedHelper$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
