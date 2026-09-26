.class public final Lcom/narvii/account/AuidService$refreshAuid$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


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
.method constructor <init>(Ljava/lang/String;Lcom/narvii/account/AccountService;Lcom/narvii/account/AuidService;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/narvii/account/AccountService;",
            "Lcom/narvii/account/AuidService;",
            "Ljava/lang/Class<",
            "Lcom/narvii/account/AuidResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$currentUid:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$account:Lcom/narvii/account/AccountService;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->this$0:Lcom/narvii/account/AuidService;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 10
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/account/AuidResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "req"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resp"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$currentUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->$account:Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/account/AuidService$refreshAuid$1;->this$0:Lcom/narvii/account/AuidService;

    .line 3
    invoke-virtual {p2}, Lcom/narvii/account/AuidResponse;->getAuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/account/AuidService;->saveAuid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/account/AuidResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/account/AuidService$refreshAuid$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/account/AuidResponse;)V

    return-void
.end method
