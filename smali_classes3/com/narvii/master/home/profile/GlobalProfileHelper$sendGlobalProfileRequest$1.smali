.class public final Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "GlobalProfileHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileHelper;->sendGlobalProfileRequest(Ljava/lang/String;Lcom/narvii/util/Callback;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/model/api/UserResponse;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalProfileHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalProfileHelper.kt\ncom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1\n*L\n1#1,58:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $accountService:Lcom/narvii/account/AccountService;

.field final synthetic $callback:Lcom/narvii/util/Callback;

.field final synthetic $showErrorToast:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileHelper;Lcom/narvii/account/AccountService;Lcom/narvii/util/Callback;ZLjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/account/AccountService;",
            "Lcom/narvii/util/Callback;",
            "Z",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;

    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$accountService:Lcom/narvii/account/AccountService;

    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    iput-boolean p4, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$showErrorToast:Z

    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

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

    .line 49
    invoke-super/range {p0 .. p6}, Lcom/narvii/util/http/ApiResponseListener;->onFail(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;Ljava/lang/String;Lcom/narvii/model/api/ApiResponse;Ljava/lang/Throwable;)V

    .line 50
    new-instance p1, Lcom/narvii/util/RequestResult;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 51
    iget-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 52
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$showErrorToast:Z

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;

    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->getContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 4

    .line 38
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 39
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$accountService:Lcom/narvii/account/AccountService;

    const-string v3, "accountService"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$accountService:Lcom/narvii/account/AccountService;

    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    .line 44
    :cond_0
    new-instance v0, Lcom/narvii/util/RequestResult;

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    .line 45
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
