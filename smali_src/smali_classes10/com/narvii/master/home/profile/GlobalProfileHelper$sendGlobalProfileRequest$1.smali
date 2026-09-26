.class public final Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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


# instance fields
.field final synthetic $accountService:Lcom/narvii/account/AccountService;

.field final synthetic $callback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showErrorToast:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;


# direct methods
.method constructor <init>(Lcom/narvii/util/Callback;Lcom/narvii/account/AccountService;ZLcom/narvii/master/home/profile/GlobalProfileHelper;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/Callback<",
            "Lcom/narvii/util/RequestResult;",
            ">;",
            "Lcom/narvii/account/AccountService;",
            "Z",
            "Lcom/narvii/master/home/profile/GlobalProfileHelper;",
            "Ljava/lang/Class<",
            "Lcom/narvii/model/api/UserResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$accountService:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$showErrorToast:Z

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p5}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 12
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
    new-instance p1, Lcom/narvii/util/RequestResult;

    .line 6
    const/4 p2, 0x1

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, p2, p4}, Lcom/narvii/util/RequestResult;-><init>(ILjava/lang/String;)V

    .line 10
    .line 11
    iget-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p3, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 17
    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$showErrorToast:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileHelper;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/master/home/profile/GlobalProfileHelper;->getContext()Lcom/narvii/app/NVContext;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p4, p2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    .line 38
    :cond_1
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/model/api/UserResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/UserResponse;)V
    .locals 4
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/model/api/UserResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$accountService:Lcom/narvii/account/AccountService;

    .line 4
    iget-object v2, v0, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/narvii/account/AccountService;->updateProfile(Lcom/narvii/model/User;Ljava/lang/String;IZ)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object v1, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p2, Lcom/narvii/model/api/UserResponse;->showStoreBadge:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    iput-object v2, v1, Lcom/narvii/model/User;->showStoreBadge:Ljava/lang/Boolean;

    .line 7
    :goto_2
    new-instance v1, Lcom/narvii/util/RequestResult;

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/narvii/model/api/UserResponse;->user:Lcom/narvii/model/User;

    :cond_4
    invoke-direct {v1, p1, v0}, Lcom/narvii/util/RequestResult;-><init>(ILcom/narvii/model/NVObject;)V

    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileHelper$sendGlobalProfileRequest$1;->$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_5

    .line 8
    invoke-interface {p1, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
