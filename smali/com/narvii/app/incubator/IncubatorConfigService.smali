.class public Lcom/narvii/app/incubator/IncubatorConfigService;
.super Lcom/narvii/config/ConfigService;
.source "IncubatorConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;
    }
.end annotation


# instance fields
.field private communityId:I

.field private communityService:Lcom/narvii/community/CommunityService;

.field private context:Lcom/narvii/app/NVContext;

.field private theme:Lcom/narvii/config/ConfigTheme;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 31
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    .line 32
    iput p2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    if-nez p2, :cond_0

    .line 35
    new-instance p1, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;

    invoke-direct {p1, p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;-><init>(Lcom/narvii/app/incubator/IncubatorConfigService;)V

    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityTheme;

    invoke-direct {v0, p1, p2}, Lcom/narvii/community/CommunityTheme;-><init>(Lcom/narvii/app/NVContext;I)V

    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    return v0
.end method

.method protected getConfigRequest()Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 54
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

    .line 55
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 57
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 58
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "androidApi"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 60
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 61
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .line 123
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "community"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityService;

    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    iget v1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "general"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 135
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method
