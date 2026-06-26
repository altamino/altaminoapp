.class public Lcom/narvii/app/AminoConfig;
.super Lcom/narvii/config/ConfigService;
.source "AminoConfig.java"


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
    .locals 4

    .line 28
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 30
    iput-object p1, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    .line 31
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->getCommunityIdFromPackageName()I

    move-result v0

    iput v0, p0, Lcom/narvii/app/AminoConfig;->cid:I

    const-string v0, "community"

    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    .line 34
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "community.json"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/narvii/model/api/CommunityResponse;

    invoke-virtual {v1, v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/api/CommunityResponse;

    .line 37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 38
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    iget-object v2, v1, Lcom/narvii/model/api/CommunityResponse;->community:Lcom/narvii/model/Community;

    const/4 v3, 0x1

    iget-object v1, v1, Lcom/narvii/model/api/ApiResponse;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/narvii/community/CommunityService;->updateCommunity(Lcom/narvii/model/Community;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    const-string/jumbo v1, "themePack"

    .line 43
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 44
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 45
    iget v2, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    .line 47
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityTheme;

    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-direct {v0, p1, v1}, Lcom/narvii/community/CommunityTheme;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/app/AminoConfig;->theme:Lcom/narvii/config/ConfigTheme;

    return-void

    .line 40
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fail to init community"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/narvii/app/AminoConfig;->cid:I

    return v0
.end method

.method protected getConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 60
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v1, "client-config"

    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v2, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 63
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "androidApi"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 65
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 66
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 67
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalConfig()Lcom/narvii/app/AminoConfig;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    invoke-direct {v0, p0}, Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;-><init>(Lcom/narvii/app/AminoConfig;)V

    iput-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->globalConfigWrapper:Lcom/narvii/app/AminoConfig$GlobalConfigWrapper;

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method

.method public start()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/narvii/app/AminoConfig;->communityService:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/narvii/app/AminoConfig;->context:Lcom/narvii/app/NVContext;

    const-string/jumbo v2, "themePack"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/theme/ThemePackService;

    .line 53
    iget v2, v0, Lcom/narvii/model/Community;->id:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/narvii/theme/ThemePackService;->getStatus(II)I

    move-result v2

    if-nez v2, :cond_0

    .line 54
    iget v2, p0, Lcom/narvii/app/AminoConfig;->cid:I

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackRevision()I

    move-result v3

    invoke-virtual {v0}, Lcom/narvii/model/Community;->themePackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/narvii/theme/ThemePackService;->extract(IILjava/lang/String;)Z

    :cond_0
    return-void
.end method
