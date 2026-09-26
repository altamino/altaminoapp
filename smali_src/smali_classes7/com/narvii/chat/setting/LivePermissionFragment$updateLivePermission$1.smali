.class public final Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
            "Lcom/narvii/chat/setting/LivePermissionFragment;",
            "Lcom/narvii/chat/rtc/RtcService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->onFinish$lambda$0(Lcom/narvii/chat/signalling/SignallingChannel;)V

    return-void
.end method

.method private static final onFinish$lambda$0(Lcom/narvii/chat/signalling/SignallingChannel;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "loadingDialog"

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 17
    const/4 p1, 0x0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 35
    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 2
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/ApiResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getLoadingDialog$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Lcom/narvii/util/dialog/ProgressDialog;

    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x0

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "loadingDialog"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 18
    move-object p1, p2

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ProgressDialog;->dismiss()V

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getVvChatJoinType$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I

    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x2

    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->$rtcService:Lcom/narvii/chat/rtc/RtcService;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getNdcId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)I

    .line 38
    move-result v0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/chat/setting/LivePermissionFragment;->access$getThreadId$p(Lcom/narvii/chat/setting/LivePermissionFragment;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const-string v1, "threadId"

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/t;->B(Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move-object p2, v1

    .line 54
    .line 55
    :goto_0
    new-instance v1, Lcom/narvii/chat/setting/b;

    .line 56
    .line 57
    .line 58
    invoke-direct {v1}, Lcom/narvii/chat/setting/b;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0, p2, v1}, Lcom/narvii/chat/rtc/RtcService;->waitListClean(ILjava/lang/String;Lcom/narvii/util/Callback;)V

    .line 62
    .line 63
    :cond_2
    iget-object p1, p0, Lcom/narvii/chat/setting/LivePermissionFragment$updateLivePermission$1;->this$0:Lcom/narvii/chat/setting/LivePermissionFragment;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    .line 67
    return-void
.end method
