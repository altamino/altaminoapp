.class Lcom/narvii/poweruser/PowerChatHelper$2;
.super Ljava/lang/Object;
.source "PowerChatHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/PowerChatHelper;->featureChat(IJ)V
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
.field final synthetic this$0:Lcom/narvii/poweruser/PowerChatHelper;

.field final synthetic val$featureType:I


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/PowerChatHelper;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iput p2, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 83
    iget p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    const-string v0, "featuredType"

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v1, v1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v1, v1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v1, v1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iput-object p1, v1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 89
    iget-object p1, v1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object p1, p1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_2

    .line 93
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    .line 94
    iget-object v1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v1, v1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iput-object p1, v1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object p1, p1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 98
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 99
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 100
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 101
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    .line 102
    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 80
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/PowerChatHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
