.class public Lcom/narvii/app/AminoConfig;
.super Lcom/narvii/config/ConfigService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;
    }
.end annotation


# instance fields
.field final cid:I

.field communityService:Lcom/narvii/community/CommunityService;

.field context:Lcom/narvii/app/NVContext;

.field private globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

.field theme:Lcom/narvii/config/ConfigTheme;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/app/AminoConfig;->cid:I

    .line 21
    .line 22
    const-string v1, "community"

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    check-cast v1, Lcom/narvii/community/CommunityService;

    .line 29
    .line 30
    iput-object v1, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 31
    .line 32
    .line 33
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    const-string v2, "community.json"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    sget-object v2, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 47
    .line 48
    const-class v3, Lcom/narvii/model/api/CommunityResponse;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    check-cast v2, Lcom/narvii/model/api/CommunityResponse;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 58
    .line 59
    iget-object v1, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 60
    .line 61
    iget-object v3, v2, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    .line 62
    .line 63
    iget-object v2, v2, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    .line 64
    const/4 v4, 0x1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3, v4, v2}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    const-string v2, "themePack"

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    .line 81
    check-cast v2, Lcom/narvii/theme/ThemePackService;

    .line 82
    .line 83
    iget v3, v1, Lcom/narvii/model/Community;->id:I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 87
    move-result v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v3, v4}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    .line 91
    move-result v3

    .line 92
    .line 93
    if-nez v3, :cond_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 97
    move-result v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v0, v3, v1}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    .line 105
    .line 106
    :cond_0
    new-instance v1, Lcom/narvii/community/CommunityTheme;

    .line 107
    .line 108
    .line 109
    invoke-direct {v1, p1, v0}, Lcom/narvii/community/CommunityTheme;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 110
    .line 111
    iput-object v1, p0, Lcom/narvii/app/AminoConfig;->theme:Lcom/narvii/config/ConfigTheme;

    .line 112
    return-void

    .line 113
    .line 114
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 115
    .line 116
    const-string v0, "fail to init community"

    .line 117
    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 120
    throw p1
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/AminoConfig;->cid:I

    return v0
.end method

.method protected getConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    const-string v1, "client-config"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    iget-object v2, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    const-string v3, "packageName"

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    .line 52
    move-result v1

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    const-string v2, "versionCode"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    .line 63
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    const-string v2, "androidApi"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 73
    .line 74
    const-string v1, "model"

    .line 75
    .line 76
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 80
    .line 81
    const-string v1, "manufacturer"

    .line 82
    .line 83
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 87
    .line 88
    const-string v1, "device"

    .line 89
    .line 90
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method

.method public getGlobalConfig()Lcom/narvii/app/AminoConfig;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;-><init>(Lcom/narvii/app/AminoConfig;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    .line 14
    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 13
    .line 14
    const-string v1, "general"

    .line 15
    .line 16
    .line 17
    filled-new-array {v1}, [Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    return-object v0

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 35
    move-result-object p1

    .line 36
    return-object p1
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 3
    .line 4
    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v2, "themePack"

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 19
    .line 20
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    .line 28
    move-result v2

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    iget v2, p0, Lcom/narvii/app/AminoConfig;->cid:I

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2, v3, v0}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    .line 44
    :cond_0
    return-void
.end method
