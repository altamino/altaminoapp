.class Lcom/narvii/poweruser/PowerFeedHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerFeedHelper;->featureFeed(IJLcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/poweruser/PowerFeedHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$featureType:I


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerFeedHelper;ILcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$callback:Lcom/narvii/util/Callback;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    iget v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    const/4 v1, 0x1

    const-string v2, "featuredType"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 2
    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 3
    iget-object v1, v1, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iget-object v1, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 6
    iget-object v1, v1, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iput-object v0, v1, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v1, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_1
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 9
    :cond_3
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 10
    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 11
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 12
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    .line 13
    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121182

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
