.class public Lcom/narvii/user/title/UserTitleRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cid:I

.field nvContext:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleRepository;->nvContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/user/title/UserTitleRepository;->cid:I

    .line 8
    return-void
.end method


# virtual methods
.method public adminUserTitleList(Ljava/lang/String;Ljava/util/List;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/narvii/model/api/UserTitle;",
            ">;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleRepository;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    check-cast p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "titles"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    iget v2, p0, Lcom/narvii/user/title/UserTitleRepository;->cid:I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 42
    move-result-object p2

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v3, "user-profile/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string p1, "/admin"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    const/16 p2, 0xcf

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p2

    .line 76
    .line 77
    const-string v2, "adminOpName"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v2, p2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object p1

    .line 82
    .line 83
    const-string p2, "adminOpValue"

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    move-result-object p1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, p3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 95
    return-void
.end method

.method public getAllUserTitleList(Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "Lcom/narvii/user/title/CommunityUseTitleListResponse;",
            ">;)",
            "Lcom/narvii/util/http/ApiRequest;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleRepository;->nvContext:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "api"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    iget v2, p0, Lcom/narvii/user/title/UserTitleRepository;->cid:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->communityId(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    const-string v2, "community/user-titles"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 34
    return-object v1
.end method
