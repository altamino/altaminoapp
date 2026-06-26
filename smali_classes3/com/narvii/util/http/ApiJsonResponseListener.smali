.class public Lcom/narvii/util/http/ApiJsonResponseListener;
.super Lcom/narvii/util/http/ApiResponseListener;
.source "ApiJsonResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/narvii/model/api/ApiResponse;",
        ">",
        "Lcom/narvii/util/http/ApiResponseListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field errorJson:Lcom/fasterxml/jackson/databind/JsonNode;

.field json:Lcom/fasterxml/jackson/databind/JsonNode;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public errorJson()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/narvii/util/http/ApiJsonResponseListener;->errorJson:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public json()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/narvii/util/http/ApiJsonResponseListener;->json:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/http/ApiJsonResponseListener;->errorJson:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 30
    invoke-super {p0, p1}, Lcom/narvii/util/http/ApiResponseListener;->parseErrorResponse([B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method

.method public parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "I",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/NameValuePair;",
            ">;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/http/ApiJsonResponseListener;->json:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/util/http/ApiResponseListener;->parseResponse(Lcom/narvii/util/http/ApiRequest;ILjava/util/List;[B)Lcom/narvii/model/api/ApiResponse;

    move-result-object p1

    return-object p1
.end method
