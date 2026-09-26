.class Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/sharedfolder/SharedAlbumResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

.field final synthetic val$dlg:Lcom/narvii/util/dialog/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;Ljava/lang/Class;Lcom/narvii/util/dialog/ProgressDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "p0"    # Landroid/content/Context;
    .param p1, "p1"    # Landroid/content/Intent;

    const-string v0, "SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"

    invoke-static {v0}, Lcom/safedk/android/utils/Logger;->d(Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

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
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 15
    move-result-object p1

    .line 16
    const/4 p2, 0x0

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 24
    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
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

    .line 1
    check-cast p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/sharedfolder/SharedAlbumResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    :try_start_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 3
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->val$inputDialog:Lcom/narvii/widget/InputDialog;

    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->dismiss()V

    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->val$dlg:Lcom/narvii/util/dialog/ProgressDialog;

    .line 4
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 5
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "notification"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/notification/NotificationCenter;

    .line 6
    new-instance v0, Lcom/narvii/notification/Notification;

    invoke-direct {v0}, Lcom/narvii/notification/Notification;-><init>()V

    const-string v1, "new"

    iput-object v1, v0, Lcom/narvii/notification/Notification;->action:Ljava/lang/String;

    .line 7
    iget-object v1, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    iput-object v1, v0, Lcom/narvii/notification/Notification;->obj:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v0}, Lcom/narvii/notification/NotificationCenter;->sendNotification(Lcom/narvii/notification/Notification;)V

    :try_start_1
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 9
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$fileIdList:Ljava/util/List;

    invoke-static {p1}, Lcom/narvii/util/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/narvii/sharedfolder/SharedAlbumDetailFragment;

    .line 10
    invoke-static {p1}, Lcom/narvii/app/FragmentWrapperActivity;->intent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    .line 11
    iget-object v1, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    invoke-virtual {v1}, Lcom/narvii/model/SharedAlbum;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "prefetch"

    .line 12
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedAlbumResponse;->folder:Lcom/narvii/model/SharedAlbum;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "Source"

    const-string v0, "All Albums"

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 14
    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->this$0:Lcom/narvii/sharedfolder/SharedFolderHelper;

    iget-object p2, p2, Lcom/narvii/sharedfolder/SharedFolderHelper;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2$1;->this$2:Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;

    .line 15
    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7$2;->this$1:Lcom/narvii/sharedfolder/SharedFolderHelper$7;

    iget-object p1, p1, Lcom/narvii/sharedfolder/SharedFolderHelper$7;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1, p2}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 17
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
