.class public abstract Lcom/narvii/config/ConfigService;
.super Ljava/lang/Object;
.source "ConfigService.java"


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

    .line 37
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    sput-object v0, Lcom/narvii/config/ConfigService;->EMPTY_ROOT:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Lcom/narvii/config/ConfigService$1;

    const-class v1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v0, p0, v1}, Lcom/narvii/config/ConfigService$1;-><init>(Lcom/narvii/config/ConfigService;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->updateListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    .line 280
    new-instance v0, Lcom/narvii/config/ConfigService$DefaultTheme;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/config/ConfigService$DefaultTheme;-><init>(Lcom/narvii/config/ConfigService$1;)V

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->defaultTheme:Lcom/narvii/config/ConfigService$DefaultTheme;

    .line 50
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    .line 52
    :try_start_0
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "default_config.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v1

    iput-object v1, p0, Lcom/narvii/config/ConfigService;->stockNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 54
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "config_latest.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    .line 58
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "config_latest.d"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/config/ConfigService;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    return-object p0
.end method

.method static synthetic access$002(Lcom/narvii/config/ConfigService;Lcom/narvii/util/http/ApiRequest;)Lcom/narvii/util/http/ApiRequest;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    return-object p1
.end method

.method static synthetic access$102(Lcom/narvii/config/ConfigService;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/narvii/config/ConfigService;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/config/ConfigService;)Ljava/io/File;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    return-object p0
.end method

.method protected static getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2e

    add-int/lit8 v3, v1, 0x1

    .line 139
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_3

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    move-object p0, v0

    :cond_2
    return-object p0

    .line 145
    :cond_3
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 147
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method private loadJsonFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 74
    new-array v0, v0, [B

    .line 75
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 76
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 77
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private readLatestNode()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFileD:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/narvii/util/PackageUtils;

    iget-object v2, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v1}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 206
    :cond_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "fail to read config_latest.json"

    .line 209
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 213
    :cond_1
    :goto_0
    sget-object v0, Lcom/narvii/config/ConfigService;->EMPTY_ROOT:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 186
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

    .line 87
    sget-object v0, Lcom/narvii/app/NVApplication;->MAIN_HOST:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResTargetJsonString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "image_resolution_target.json"

    .line 65
    invoke-direct {p0, v0}, Lcom/narvii/config/ConfigService;->loadJsonFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->imageResTargetJsonString:Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 159
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I

    move-result p1

    return p1
.end method

.method public getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getAccountJson()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "advancedSettings"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    if-nez v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/narvii/config/ConfigService;->readLatestNode()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->latestNode:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->stockNode:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0, p1}, Lcom/narvii/config/ConfigService;->getNode(Lcom/fasterxml/jackson/databind/JsonNode;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public getPageSize()I
    .locals 2

    .line 95
    sget-object v0, Lcom/narvii/app/NVApplication;->FAKE_PRODUCTION:Ljava/lang/String;

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    return v1

    .line 98
    :cond_0
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    :cond_1
    return v1
.end method

.method public getServiceHost()Ljava/lang/String;
    .locals 2

    .line 91
    sget-object v0, Lcom/narvii/app/NVApplication;->SERVICE_HOST:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/narvii/config/ConfigService;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lcom/narvii/config/ConfigService;->getNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonNode;->textValue()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public getTheme()Lcom/narvii/config/ConfigTheme;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->defaultTheme:Lcom/narvii/config/ConfigService$DefaultTheme;

    return-object v0
.end method

.method public update(J)V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/narvii/config/ConfigService;->context:Lcom/narvii/app/NVContext;

    const-string v1, "api"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 220
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;)V

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    cmp-long v1, p1, v2

    if-nez v1, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/narvii/config/ConfigService;->latestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 230
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_4

    add-long/2addr v2, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_5

    :cond_4
    const-string p1, "config_latest.json expired, update now..."

    .line 232
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/narvii/config/ConfigService;->getConfigRequest()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    .line 234
    iget-object p1, p0, Lcom/narvii/config/ConfigService;->updatingReqeust:Lcom/narvii/util/http/ApiRequest;

    if-eqz p1, :cond_5

    .line 235
    iget-object p2, p0, Lcom/narvii/config/ConfigService;->updateListener:Lcom/narvii/util/http/ApiJsonResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_5
    return-void
.end method
