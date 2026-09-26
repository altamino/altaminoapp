.class Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
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

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 27
    .line 28
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 32
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    .line 8
    .line 9
    const/16 v0, 0x9

    .line 10
    .line 11
    iput v0, p2, Lcom/narvii/model/User;->status:I

    .line 12
    .line 13
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->b(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "notification"

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, p2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 26
    .line 27
    new-instance p2, Lcom/narvii/notification/Notification;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$user:Lcom/narvii/model/User;

    .line 32
    .line 33
    const-string/jumbo v1, "update"

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, v1, v0}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 40
    .line 41
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->this$1:Lcom/narvii/poweruser/AdvancedOptionDialog$19;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/narvii/poweruser/AdvancedOptionDialog$19;->val$dialog:Lcom/narvii/util/dialog/RequestDialog;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$19$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 52
    return-void
.end method
