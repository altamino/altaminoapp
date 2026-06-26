.class Lcom/narvii/util/diagnosis/ApiTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "ApiTask.java"


# instance fields
.field final listener:Lcom/narvii/util/http/ApiResponseListener;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    const-string v0, "Api"

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lcom/narvii/util/diagnosis/ApiTask$1;

    const-class v0, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p1, p0, v0}, Lcom/narvii/util/diagnosis/ApiTask$1;-><init>(Lcom/narvii/util/diagnosis/ApiTask;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/narvii/util/diagnosis/ApiTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "/announcement?language=en&start=0&size=1"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    const-string v2, "api"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 37
    iget-object v2, p0, Lcom/narvii/util/diagnosis/ApiTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method
