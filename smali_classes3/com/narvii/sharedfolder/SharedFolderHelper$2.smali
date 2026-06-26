.class Lcom/narvii/sharedfolder/SharedFolderHelper$2;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SharedFolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper;->updateSharedPhotoTitle(Ljava/lang/String;Ljava/lang/String;Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/sharedfolder/SharedFileResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

.field final synthetic val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

.field final synthetic val$successCallback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    iput-object p4, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->val$successCallback:Lcom/narvii/util/Callback;

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

    .line 178
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 179
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 181
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    check-cast p2, Lcom/narvii/sharedfolder/SharedFileResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedFileResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 163
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 164
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-virtual {p2}, Lcom/narvii/sharedfolder/SharedFileResponse;->object()Lcom/narvii/model/SharedFile;

    move-result-object p2

    const-string v1, "update"

    invoke-direct {v0, v1, p2}, Lcom/narvii/notification/Notification;-><init>(Ljava/lang/String;Lcom/narvii/model/NVObject;)V

    .line 165
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    .line 167
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->val$progressDialog:Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$2;->val$successCallback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 172
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
