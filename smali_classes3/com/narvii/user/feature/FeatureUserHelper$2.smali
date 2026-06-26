.class Lcom/narvii/user/feature/FeatureUserHelper$2;
.super Ljava/lang/Object;
.source "FeatureUserHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/feature/FeatureUserHelper;->featureUser(IJLcom/narvii/util/Callback;)V
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
.field final synthetic this$0:Lcom/narvii/user/feature/FeatureUserHelper;

.field final synthetic val$callback:Lcom/narvii/util/Callback;

.field final synthetic val$featureType:I


# direct methods
.method constructor <init>(Lcom/narvii/user/feature/FeatureUserHelper;ILcom/narvii/util/Callback;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iput p2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    iput-object p3, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    .line 87
    iget v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    const-string v1, "featuredType"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v2, v2, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v2, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v2, v2, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iput-object v0, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 93
    iget-object v0, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_2

    .line 97
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v2, v2, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iput-object v0, v2, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 103
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 105
    :cond_3
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "featureChanged"

    .line 107
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    iput-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    .line 109
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 110
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 112
    iget-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object p1, p1, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.FEATURE_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v1, v1, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 115
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    const-string v2, "id"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 119
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/feature/FeatureUserHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
