.class Lcom/narvii/poweruser/AdvancedOptionDialog$8;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AdvancedOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;->reviewQuiz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/BlogResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    iput-object p3, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

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

    .line 637
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 638
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 640
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 641
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 634
    check-cast p2, Lcom/narvii/model/api/BlogResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/BlogResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 648
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 649
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/app/NVFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p1

    check-cast p1, Lcom/narvii/app/NVFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 650
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 651
    iget-object p1, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 653
    :cond_0
    iget-object p1, p2, Lcom/narvii/model/api/BlogResponse;->blog:Lcom/narvii/model/Blog;

    .line 654
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$200(Lcom/narvii/poweruser/AdvancedOptionDialog;)Lcom/narvii/app/NVContext;

    move-result-object p2

    const-string v0, "notification"

    invoke-interface {p2, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/notification/NotificationCenter;

    .line 655
    new-instance v0, Lcom/narvii/notification/Notification;

    const-string v1, "update"

    invoke-direct {v0, v1, p1}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 656
    invoke-virtual {p2, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 658
    iget-object p2, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$8;->this$0:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {p2, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$1700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Blog;)V

    :cond_1
    return-void
.end method
