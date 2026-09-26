.class Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$20;->call(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$20;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 3

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    .line 2
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$20;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    .line 3
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$20;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    :cond_0
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    .line 4
    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$20;->val$user:Lcom/narvii/model/User;

    const/4 v1, 0x0

    iput v1, v0, Lcom/narvii/model/User;->status:I

    .line 5
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$20;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 6
    new-instance v0, Lcom/narvii/notification/Notification;

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$20;

    iget-object v1, v1, Lcom/narvii/poweruser/AdvancedOptionDialog$20;->val$user:Lcom/narvii/model/User;

    const-string/jumbo v2, "update"

    invoke-direct {v0, v2, v1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$20$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
