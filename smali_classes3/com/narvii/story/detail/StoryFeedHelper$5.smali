.class Lcom/narvii/story/detail/StoryFeedHelper$5;
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

    .line 269
    iput-object p1, p0, Lcom/narvii/story/detail/StoryFeedHelper$5;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    iput-object p2, p0, Lcom/narvii/story/detail/StoryFeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 272
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$5;->val$feed:Lcom/narvii/model/Feed;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 273
    iget-object v0, p0, Lcom/narvii/story/detail/StoryFeedHelper$5;->this$0:Lcom/narvii/story/detail/StoryFeedHelper;

    invoke-static {v0}, Lcom/narvii/story/detail/StoryFeedHelper;->access$100(Lcom/narvii/story/detail/StoryFeedHelper;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 269
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/story/detail/StoryFeedHelper$5;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
