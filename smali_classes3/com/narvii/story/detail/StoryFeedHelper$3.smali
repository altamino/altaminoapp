.class Lcom/narvii/story/detail/StoryFeedHelper$3;
.super Ljava/lang/Object;
.source "StoryFeedHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/story/detail/StoryFeedHelper;->delete(Lcom/narvii/model/Feed;Z)V
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
.field final synthetic this$0:Lcom/narvii/story/detail/StoryFeedHelper;

.field final synthetic val$feed:Lcom/narvii/model/Feed;


# direct methods
.method constructor <init>(Lcom/narvii/story/detail/StoryFeedHelper;Lcom/narvii/model/Feed;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 217
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->val$feed:Lcom/narvii/model/Feed;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 218
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result v0

    const-string v1, "notification"

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 222
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 225
    :goto_0
    new-instance p1, Lcom/narvii/model/ItemCategory;

    invoke-direct {p1}, Lcom/narvii/model/ItemCategory;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "account"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 227
    iget-object v2, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    if-nez v2, :cond_1

    .line 228
    new-instance v2, Lcom/narvii/model/User;

    invoke-direct {v2}, Lcom/narvii/model/User;-><init>()V

    iput-object v2, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    .line 230
    :cond_1
    iget-object v2, p1, Lcom/narvii/model/ItemCategory;->author:Lcom/narvii/model/User;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v2, "update"

    invoke-direct {v0, v2, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 232
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->isGlobalInteractionScope(Lcom/narvii/app/NVContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    goto :goto_1

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$3;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {p1}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 236
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 214
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$3;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
