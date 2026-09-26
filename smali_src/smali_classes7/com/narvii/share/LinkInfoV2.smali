.class public Lcom/narvii/share/LinkInfoV2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

.field public linkInfoCache:Lcom/narvii/share/LinkInfo;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getInnerLinkInfo()Lcom/narvii/share/LinkInfo;
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/share/LinkInfoV2;->linkInfoCache:Lcom/narvii/share/LinkInfo;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/narvii/share/LinkInfoV2;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    new-array v2, v2, [Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "linkInfo"

    .line 14
    const/4 v4, 0x0

    .line 15
    .line 16
    aput-object v3, v2, v4

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    return-object v0

    .line 24
    .line 25
    :cond_1
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    .line 27
    const-class v3, Lcom/narvii/share/LinkInfo;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    check-cast v1, Lcom/narvii/share/LinkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    return-object v0
.end method
