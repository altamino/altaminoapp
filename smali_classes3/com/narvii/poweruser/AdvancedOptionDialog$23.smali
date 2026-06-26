.class Lcom/narvii/poweruser/AdvancedOptionDialog$23;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->sendDeleteChatMessageRequest(Lcom/narvii/model/ChatMessage;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$message:Lcom/narvii/model/ChatMessage;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V
    .locals 0

    .line 1157
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 1160
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1161
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1163
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

    const-string v1, "delete"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1164
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 1165
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1166
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 1167
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1168
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->objectType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2100(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1157
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
