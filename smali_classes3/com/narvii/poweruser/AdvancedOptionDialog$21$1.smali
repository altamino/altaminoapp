.class Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$21;->call(Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$21;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 5

    .line 1076
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/Feed;

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1077
    check-cast v0, Lcom/narvii/model/Feed;

    iget-boolean p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    :goto_0
    iput p1, v0, Lcom/narvii/model/Feed;->status:I

    .line 1078
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    check-cast p1, Lcom/narvii/model/Feed;

    iget-object p1, p1, Lcom/narvii/model/Feed;->author:Lcom/narvii/model/User;

    invoke-virtual {p1}, Lcom/narvii/model/User;->isSystem()Z

    move-result p1

    goto :goto_2

    .line 1079
    :cond_1
    instance-of v1, v0, Lcom/narvii/model/Comment;

    if-eqz v1, :cond_3

    .line 1080
    check-cast v0, Lcom/narvii/model/Feed;

    iget-boolean p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x9

    :goto_1
    iput p1, v0, Lcom/narvii/model/Feed;->status:I

    :cond_3
    const/4 p1, 0x0

    .line 1082
    :goto_2
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v1, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    instance-of v4, v1, Lcom/narvii/model/ChatThread;

    if-eqz v4, :cond_5

    .line 1083
    check-cast v1, Lcom/narvii/model/ChatThread;

    iget-boolean v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v0, 0x9

    :goto_3
    iput v0, v1, Lcom/narvii/model/ChatThread;->status:I

    .line 1086
    :cond_5
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v1, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    instance-of v4, v1, Lcom/narvii/model/ChatMessage;

    if-eqz v4, :cond_7

    .line 1087
    check-cast v1, Lcom/narvii/model/ChatMessage;

    iget-boolean v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/16 v0, 0x9

    :goto_4
    iput v0, v1, Lcom/narvii/model/ChatMessage;->_status:I

    .line 1090
    :cond_7
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v1, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    instance-of v4, v1, Lcom/narvii/model/SharedFile;

    if-eqz v4, :cond_9

    .line 1091
    check-cast v1, Lcom/narvii/model/SharedFile;

    iget-boolean v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    iput v2, v1, Lcom/narvii/model/SharedFile;->status:I

    .line 1093
    :cond_9
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    instance-of v1, v0, Lcom/narvii/model/ChatThread;

    const-string v2, "update"

    if-eqz v1, :cond_a

    .line 1094
    new-instance v1, Lcom/narvii/notification/Notification;

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1095
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/narvii/util/NotificationUtils;->sendNotificationIncludeGlobal(Lcom/narvii/app/NVContext;Lcom/narvii/notification/Notification;)V

    goto :goto_5

    .line 1097
    :cond_a
    new-instance v1, Lcom/narvii/notification/Notification;

    invoke-direct {v1, v2, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 1098
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "notification"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/notification/NotificationCenter;

    .line 1099
    invoke-virtual {v0, v1}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1102
    :goto_5
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1103
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1105
    :cond_b
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-boolean v1, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$enable:Z

    if-nez v1, :cond_c

    .line 1106
    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 1107
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v1, v1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$100(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/model/NVObject;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    .line 1108
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$21;

    iget-object v0, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$21;->val$object:Lcom/narvii/model/NVObject;

    invoke-virtual {p1}, Lcom/narvii/model/NVObject;->objectType()I

    move-result p1

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2100(Lcom/narvii/poweruser/AdvancedOptionDialog;I)V

    :cond_c
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1072
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$21$1;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
