.class Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$9;->call(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$9;)V
    .locals 0

    .line 706
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 709
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->val$user:Lcom/narvii/model/User;

    iget-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v0, :cond_0

    .line 710
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    iput-object v0, p1, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 712
    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->val$user:Lcom/narvii/model/User;

    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-boolean p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->val$hide:Z

    const-string v1, "hideUserProfile"

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 713
    new-instance p1, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->val$user:Lcom/narvii/model/User;

    const-string v1, "update"

    invoke-direct {p1, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 714
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "notification"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 715
    invoke-virtual {v0, p1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 716
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 717
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$9;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$9;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 706
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$9$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
