.class Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AdvancedOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog$19;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/narvii/model/api/ApiResponse;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1010
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 1011
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 1012
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1013
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 1001
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iget-object p2, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    const/16 v0, 0x9

    iput v0, p2, Lcom/narvii/model/User;->status:I

    .line 1002
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string p2, "notification"

    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 1003
    new-instance p2, Lcom/narvii/notification/Notification;

    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    const-string v1, "update"

    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 1004
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 1005
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    return-void
.end method
