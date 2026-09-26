.class public Lcom/narvii/app/incubator/IncubatorConfigService;
.super Lcom/narvii/config/ConfigService;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/narvii/config/ConfigService;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    iput p2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p1, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p0}, Lcom/narvii/app/incubator/IncubatorConfigService$DefaultTheme;-><init>(Lcom/narvii/app/incubator/IncubatorConfigService;)V

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    new-instance v0, Lcom/narvii/community/CommunityTheme;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p1, p2}, Lcom/narvii/community/CommunityTheme;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    .line 25
    :goto_0
    return-void
.end method

.method static bridge synthetic f(Lcom/narvii/app/incubator/IncubatorConfigService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getCommunityId()I
    .locals 1

    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

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
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

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
    iget-object v2, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

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

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->context:Lcom/narvii/app/NVContext;

    .line 11
    .line 12
    const-string v1, "community"

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Lcom/narvii/community/CommunityService;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityService:Lcom/narvii/community/CommunityService;

    .line 23
    .line 24
    iget v1, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->communityId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityService;->getCommunity(I)Lcom/narvii/model/Community;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, v0, Lcom/narvii/model/Community;->configuration:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 33
    .line 34
    const-string v1, "general"

    .line 35
    .line 36
    .line 37
    filled-new-array {v1}, [Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    return-object v0

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-super {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 55
    move-result-object p1

    .line 56
    return-object p1
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "apihost"

    .line 6
    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lcom/ss/android/tea/common/applog/d;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    return-object v0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-super {p0}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    iget-object v0, p0, Lcom/narvii/app/incubator/IncubatorConfigService;->theme:Lcom/narvii/config/ConfigTheme;

    return-object v0
.end method
