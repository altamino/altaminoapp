.class public abstract Lcom/narvii/config/ConfigService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/config/ConfigService$DefaultTheme;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIG_CHANGED:Ljava/lang/String; = "com.narvii.action.CONFIG_CHANGED"

.field public static final DEFAULT_PAGE_SIZE_DEV:I = 0x5

.field public static final DEFAULT_PAGE_SIZE_PRO:I = 0x19

.field private static final EMPTY_ROOT:Lcom/fasterxml/jackson/databind/node/ObjectNode;


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field context:Lcom/narvii/app/NVContext;

.field private defaultTheme:Lcom/narvii/config/ConfigService$DefaultTheme;

.field private imageResTargetJsonString:Ljava/lang/String;

.field private final latestFile:Ljava/io/File;

.field private final latestFileD:Ljava/io/File;

.field private latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

.field private stockNode:Lcom/fasterxml/jackson/databind/JsonNode;

.field private final updateListener:Lcom/narvii/util/http/ApiJsonResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/http/ApiJsonResponseListener<",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field private updatingReqeust:Lcom/narvii/util/http/ApiRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lcom/narvii/config/ConfigService;->EMPTY_ROOT:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 7
    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/config/ConfigService$1;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/api/ApiResponse;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/narvii/config/ConfigService$1;-><init>(Lcom/narvii/config/ConfigService;Ljava/lang/Class;)V

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/config/ConfigService;->updateListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 13
    .line 14
    new-instance v0, Lcom/narvii/config/ConfigService$DefaultTheme;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/narvii/config/ConfigService$DefaultTheme;-><init>(Lcom/narvii/config/a;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/narvii/config/ConfigService;->defaultTheme:Lcom/narvii/config/ConfigService$DefaultTheme;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v1, "default_config.json"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iput-object v1, p0, Lcom/narvii/config/ConfigService;->stockNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    :catch_0
    new-instance v0, Ljava/io/File;

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    const-string v2, "config_latest.json"

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 65
    .line 66
    new-instance v0, Ljava/io/File;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    const-string v1, "config_latest.d"

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    .line 82
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/config/ConfigService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/config/ConfigService;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/narvii/config/ConfigService;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-void
.end method

.method static bridge synthetic e(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    return-void
.end method

.method protected static getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2e

    .line 6
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_3

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0

    .line 10
    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 11
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method private loadJsonFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 18
    move-result v0

    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 27
    .line 28
    new-instance p1, Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "UTF-8"

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    const/4 p1, 0x0

    .line 40
    :goto_0
    return-object p1
.end method

.method private readLatestNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Lcom/narvii/util/PackageUtils;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_0

    .line 48
    .line 49
    :cond_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 55
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-object v0

    .line 57
    .line 58
    :goto_0
    const-string v1, "fail to read config_latest.json"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    .line 68
    :cond_1
    :goto_1
    sget-object v0, Lcom/narvii/config/ConfigService;->EMPTY_ROOT:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 69
    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean(Z)Z

    move-result p1

    return p1
.end method

.method public abstract getCommunityId()I
.end method

.method protected abstract getConfigRequest()Lcom/narvii/util/http/ApiRequest;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVApplication;->mainHost:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getImageResTargetJsonString()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    .line 13
    :cond_0
    const-string v0, "image_resolution_target.json"

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/narvii/config/ConfigService;->loadJsonFromAsset(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    .line 20
    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result p1

    return p1
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2

    iget-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    .line 1
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    :cond_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    .line 2
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const-string v1, "advancedSettings"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/narvii/config/ConfigService;->readLatestNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    :cond_2
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 4
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->stockNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 5
    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getPageSize()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVApplication;->FPR:Ljava/lang/String;

    .line 3
    .line 4
    const/16 v1, 0x19

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 8
    .line 9
    :cond_0
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    const/4 v1, 0x5

    .line 13
    :cond_1
    return v1
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v1, "service"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    iget-object v0, p0, Lcom/narvii/config/ConfigService;->defaultTheme:Lcom/narvii/config/ConfigService$DefaultTheme;

    return-object v0
.end method

.method public update(J)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

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
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    cmp-long v4, p1, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    iput-object v1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void

    .line 29
    .line 30
    :cond_1
    :goto_0
    cmp-long v1, p1, v2

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_2
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 39
    move-result v1

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 47
    move-result-wide v2

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v4

    .line 52
    .line 53
    cmp-long v1, v4, v2

    .line 54
    .line 55
    if-ltz v1, :cond_4

    .line 56
    add-long/2addr v2, p1

    .line 57
    .line 58
    cmp-long p1, v2, v4

    .line 59
    .line 60
    if-gez p1, :cond_5

    .line 61
    .line 62
    :cond_4
    const-string p1, "config_latest.json expired, update now..."

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getConfigRequest()Lcom/narvii/util/http/ApiRequest;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    iget-object p2, p0, Lcom/narvii/config/ConfigService;->updateListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 79
    :cond_5
    return-void
.end method
