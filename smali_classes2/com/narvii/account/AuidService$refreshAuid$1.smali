.class public final Lcom/narvii/account/AuidService$refreshAuid$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "AuidService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AuidService;->refreshAuid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/account/AuidResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $account:Lcom/narvii/account/AccountService;

.field final synthetic $currentUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/narvii/account/AuidService;


# direct methods
.method constructor <init>(Lcom/narvii/account/AuidService;Ljava/lang/String;Lcom/narvii/account/AccountService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/account/AccountService;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->this$0:Lcom/narvii/account/AuidService;

    iput-object p2, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$currentUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$account:Lcom/narvii/account/AccountService;

    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V
    .locals 2

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$currentUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$account:Lcom/narvii/account/AccountService;

    const-string v1, "account"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->this$0:Lcom/narvii/account/AuidService;

    invoke-virtual {p2}, Lcom/narvii/account/AuidResponse;->getAuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 40
    check-cast p2, Lcom/narvii/account/AuidResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AuidService$refreshAuid$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V

    return-void
.end method
