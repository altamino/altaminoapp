.class Lcom/narvii/user/feature/FeatureUserHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

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

    iget v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    const/4 v1, 0x4

    const-string v2, "featuredType"

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 2
    iget-object v1, v1, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v1, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 5
    iget-object v1, v1, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iput-object v0, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$featureType:I

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 7
    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_2

    .line 8
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 9
    iget-object v1, v1, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iput-object v0, v1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 10
    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :goto_0
    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 12
    :cond_3
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->user:Lcom/narvii/model/User;

    const-string/jumbo v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "featureChanged"

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/narvii/notification/Notification;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 15
    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 16
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 17
    iget-object p1, p1, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.narvii.action.FEATURE_USER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 19
    iget-object v1, v1, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 20
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    const-string v2, "id"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->d(Landroid/content/Intent;)Z

    .line 23
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/narvii/user/feature/FeatureUserHelper$2;->this$0:Lcom/narvii/user/feature/FeatureUserHelper;

    .line 24
    iget-object v0, v0, Lcom/narvii/user/feature/FeatureUserHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121182

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/user/feature/FeatureUserHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
