.class public final Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/services/DevOptionsHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/util/http/ApiResponseListener<",
        "Lcom/narvii/pushservice/DeviceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/narvii/pushservice/DeviceResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/pushservice/DeviceResponse;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/DevOptionsHelper$devOptionsListener$1;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V

    return-void
.end method

.method public onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/pushservice/DeviceResponse;)V
    .locals 1
    .param p1    # Lcom/narvii/util/http/ApiRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/narvii/pushservice/DeviceResponse;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Lcom/narvii/util/http/ApiResponseListener;->onFinish(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ApiResponse;)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p2, Lcom/narvii/pushservice/DeviceResponse;->detailLogging:Lcom/narvii/pushservice/DeviceResponse$DetailLogging;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/narvii/pushservice/DeviceResponse$DetailLogging;->enabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/logging/DetailLogging;->setReportEnabled(Z)V

    .line 5
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p2, Lcom/narvii/pushservice/DeviceResponse;->devOptions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/narvii/account/AccountService;->saveDevOptions(Ljava/lang/String;)V

    return-void
.end method
