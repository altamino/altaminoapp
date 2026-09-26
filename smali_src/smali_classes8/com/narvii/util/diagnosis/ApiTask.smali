.class Lcom/narvii/util/diagnosis/ApiTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# instance fields
.field final listener:Lcom/narvii/util/http/ApiResponseListener;


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Api"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/util/diagnosis/ApiTask$1;

    .line 8
    .line 9
    const-class v0, Lcom/narvii/model/api/ApiResponse;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0, v0}, Lcom/narvii/util/diagnosis/ApiTask$1;-><init>(Lcom/narvii/util/diagnosis/ApiTask;Ljava/lang/Class;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/util/diagnosis/ApiTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 15
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    const-string v1, "/announcement?language=en&start=0&size=1"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 21
    .line 22
    const-string v2, "api"

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/narvii/util/diagnosis/ApiTask;->listener:Lcom/narvii/util/http/ApiResponseListener;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    return-void
.end method
