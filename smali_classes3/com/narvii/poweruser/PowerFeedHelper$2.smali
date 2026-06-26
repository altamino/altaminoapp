.class Lcom/narvii/poweruser/PowerFeedHelper$2;
.super Ljava/lang/Object;
.source "PowerFeedHelper.java"

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

    .line 92
    iput-object p1, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iput p2, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    iput-object p3, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 95
    iget v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    const-string v1, "featuredType"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iget-object v0, v0, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_2

    .line 98
    iget v2, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_1

    .line 100
    :cond_2
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v2, v2, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    iput-object v0, v2, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    iget-object v0, v2, Lcom/narvii/model/Feed;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v2, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$featureType:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 107
    :goto_1
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 108
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 110
    :cond_3
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->feed:Lcom/narvii/model/Feed;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 111
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 112
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 113
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/narvii/poweruser/PowerFeedHelper$2;->this$0:Lcom/narvii/poweruser/PowerFeedHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerFeedHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/PowerFeedHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
