.class Lcom/narvii/poweruser/PowerChatHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    const/4 v0, 0x5

    const-string v1, "featuredType"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 2
    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object v0, v0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 5
    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iput-object p1, v0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->val$featureType:I

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 7
    iget-object p1, p1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 9
    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iput-object p1, v0, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_2
    iget-object p1, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 10
    iget-object p1, p1, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    iget-object p1, p1, Lcom/narvii/model/ChatThread;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    :goto_0
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->chatThread:Lcom/narvii/model/ChatThread;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 12
    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 13
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 14
    new-instance p1, Lcom/narvii/util/dialog/CheckDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/narvii/poweruser/PowerChatHelper$2;->this$0:Lcom/narvii/poweruser/PowerChatHelper;

    .line 15
    iget-object v0, v0, Lcom/narvii/poweruser/PowerChatHelper;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121182

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/util/dialog/CheckDialog;->setText(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/narvii/util/dialog/CheckDialog;->show()V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/PowerChatHelper$2;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
