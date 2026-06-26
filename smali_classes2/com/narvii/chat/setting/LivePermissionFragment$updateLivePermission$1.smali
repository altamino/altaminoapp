.class public final Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "LivePermissionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/setting/LivePermissionFragment;->updateLivePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field final synthetic $rtcService:Lcom/narvii/chat/rtc/RtcService;

.field final synthetic this$0:Lcom/narvii/chat/setting/LivePermissionFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/setting/LivePermissionFragment;Lcom/narvii/chat/rtc/RtcService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/chat/rtc/RtcService;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    iput-object p2, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 135
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 136
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 137
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 126
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 127
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 128
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getVvChatJoinType$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 129
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    iget-object p2, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {p2}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getNdcId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I

    move-result p2

    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-static {v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getThreadId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1$onFinish$1;->INSTANCE:Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1$onFinish$1;

    invoke-virtual {p1, p2, v0, v1}, Lcom/narvii/chat/rtc/RtcService;->waitListClean(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
