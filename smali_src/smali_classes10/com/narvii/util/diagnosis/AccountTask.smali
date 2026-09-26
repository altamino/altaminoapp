.class public Lcom/narvii/util/diagnosis/AccountTask;
.super Lcom/narvii/util/diagnosis/DiagnosisTask;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    const-string v0, "Account"

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, v0}, Lcom/narvii/util/diagnosis/DiagnosisTask;-><init>(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "config"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/util/diagnosis/DiagnosisTask;->context:Lcom/narvii/app/NVContext;

    .line 17
    .line 18
    const-string v2, "api"

    .line 19
    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->scopeCommunityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    const-string v2, "/community/info"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    new-instance v2, Lcom/narvii/util/diagnosis/AccountTask$1;

    .line 47
    .line 48
    const-class v3, Lcom/narvii/community/FullCommunityResponse;

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, p0, v3}, Lcom/narvii/util/diagnosis/AccountTask$1;-><init>(Lcom/narvii/util/diagnosis/AccountTask;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    const-string v2, "/account"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 73
    move-result-object v0

    .line 74
    .line 75
    new-instance v2, Lcom/narvii/util/diagnosis/AccountTask$2;

    .line 76
    .line 77
    const-class v3, Lcom/narvii/model/api/AccountResponse;

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, p0, v3}, Lcom/narvii/util/diagnosis/AccountTask$2;-><init>(Lcom/narvii/util/diagnosis/AccountTask;Ljava/lang/Class;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 84
    :goto_0
    return-void
.end method
