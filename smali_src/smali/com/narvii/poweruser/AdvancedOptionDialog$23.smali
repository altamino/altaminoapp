.class Lcom/narvii/poweruser/AdvancedOptionDialog$23;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

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

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 3
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 4
    :cond_0
    new-instance p1, Lcom/narvii/notification/Notification;

    const-string v0, "delete"

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

    invoke-direct {p1, v0, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 5
    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 6
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 7
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "account"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 8
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->c(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->val$message:Lcom/narvii/model/ChatMessage;

    .line 9
    invoke-virtual {v0}, Lcom/narvii/model/ChatMessage;->objectType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->E(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$23;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
