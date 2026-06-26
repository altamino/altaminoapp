.class public Lcom/narvii/util/http/ApiService;
.super Ljava/lang/Object;
.source "ApiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/http/ApiService$CallPostProgress;,
        Lcom/narvii/util/http/ApiService$WrappedRequest;
    }
.end annotation


# static fields
.field public static final ACTION_ERROR_MEMBERSHIP_ISSUE:Ljava/lang/String; = "com.narvii.action.ERROR_MEMBERSHIP_ISSUE"

.field public static final API_ERR_USER_NOT_IN_COMMUNITY:I = 0xe6

.field public static ASYNC_CALL_TAG:Ljava/lang/Object; = null

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DEFAULT_BACKOFF_MULT:F = 0.5f

.field public static final DEFAULT_GET_RETRY:I = 0x0

.field public static final DEFAULT_GET_TIMEOUT_MS:I = 0x1770

.field public static final DEFAULT_POST_TIMEOUT_MS:I = 0x3a98

.field public static DISABLE_RELOGIN_TAG:Ljava/lang/Object; = null

.field public static final ERROR_ATO:I = 0x10e

.field public static final ERROR_MEMBERSHIP_ISSUE:I = 0x1068

.field public static FORCE_SCHEME:Ljava/lang/String; = "https"

.field private static final SYNC_INTERVAL:J = 0x3a98L

.field private static syncAdd:J

.field private static syncTime:J

.field private static uaInited:Z

.field private static userAgent:Ljava/lang/String;


# instance fields
.field protected account:Lcom/narvii/account/AccountService;

.field protected final apiUrlPattern:Ljava/util/regex/Pattern;

.field private auidService:Lcom/narvii/account/AuidService;

.field protected config:Lcom/narvii/config/ConfigService;

.field private final contentLanguageService:Lcom/narvii/language/ContentLanguageService;

.field protected final context:Lcom/narvii/app/NVContext;

.field private deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

.field private final lang:Ljava/lang/String;

.field lbm:Landroid/support/v4/content/LocalBroadcastManager;

.field protected queue:Lcom/android/volley/RequestQueue;

.field private final reqssec:Ljava/lang/String;

.field private final reqsver:I

.field protected final resending105:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;"
        }
    .end annotation
.end field

.field private sessionMonitorsDirty:Z

.field private sessionMonitorsItr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private sessionMonitorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation
.end field

.field protected final sessions:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiService$WrappedRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 115
    fill-array-data v1, :array_0

    sput-object v1, Lcom/narvii/util/http/ApiService;->CRLF:[B

    new-array v0, v0, [B

    .line 116
    fill-array-data v0, :array_1

    sput-object v0, Lcom/narvii/util/http/ApiService;->DASHDASH:[B

    .line 121
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "disableRelogin"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "asyncCallTag"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/util/http/ApiService;->ASYNC_CALL_TAG:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    .line 150
    invoke-static {p1}, Lcom/narvii/util/http/ApiService;->initUserAgent(Lcom/narvii/app/NVContext;)V

    const-string v0, "apiRequestQueue"

    .line 152
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/RequestQueue;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    const-string v0, "config"

    .line 153
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    const-string v0, "account"

    .line 154
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    const-string v0, "auid"

    .line 155
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AuidService;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->auidService:Lcom/narvii/account/AuidService;

    const-string v0, "deviceid"

    .line 156
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/deviceid/DeviceIDService;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    const-string v0, "content_language"

    .line 157
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/language/ContentLanguageService;

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    .line 161
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->reqsver:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/narvii/util/http/ApiService;->reqsver:I

    .line 162
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$string;->reqssec:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->reqssec:Ljava/lang/String;

    .line 164
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    :goto_1
    const-string v0, "^(https?)://([a-zA-Z\\d-_]*).altamino.top(/.*)$"

    .line 173
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->apiUrlPattern:Ljava/util/regex/Pattern;

    .line 174
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->lbm:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/http/ApiService;)Lcom/narvii/util/deviceid/DeviceIDService;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/http/ApiService;)Lcom/narvii/account/AuidService;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->auidService:Lcom/narvii/account/AuidService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/util/http/ApiService;)Lcom/narvii/language/ContentLanguageService;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->contentLanguageService:Lcom/narvii/language/ContentLanguageService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->lang:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/narvii/util/http/ApiService;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/narvii/util/http/ApiService;->reqssec:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/narvii/util/http/ApiService;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/narvii/util/http/ApiService;->reqsver:I

    return p0
.end method

.method static synthetic access$600()[B
    .locals 1

    .line 101
    sget-object v0, Lcom/narvii/util/http/ApiService;->DASHDASH:[B

    return-object v0
.end method

.method static synthetic access$700()[B
    .locals 1

    .line 101
    sget-object v0, Lcom/narvii/util/http/ApiService;->CRLF:[B

    return-object v0
.end method

.method static synthetic access$800(Lcom/narvii/util/http/ApiService;Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/narvii/util/http/ApiService;->createReloginRequest(Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object p0

    return-object p0
.end method

.method private createReloginRequest(Lcom/narvii/account/AccountKeychain;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 4

    .line 1101
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    .line 1104
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->https()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/auth/login"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1105
    iget-object v2, p0, Lcom/narvii/util/http/ApiService;->deviceId:Lcom/narvii/util/deviceid/DeviceIDService;

    invoke-virtual {v2}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceID"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1106
    iget-object v2, p1, Lcom/narvii/account/AccountKeychain;->email:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1107
    iget-object p1, p1, Lcom/narvii/account/AccountKeychain;->secret:Ljava/lang/String;

    const-string/jumbo v2, "secret"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1108
    sget p1, Lcom/narvii/app/NVApplication;->CLIENT_TYPE:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "clientType"

    invoke-virtual {v1, v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1109
    sget-object p1, Lcom/narvii/util/http/ApiService;->DISABLE_RELOGIN_TAG:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 1110
    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 1112
    new-instance v1, Lcom/narvii/util/http/ApiService$3;

    iget-object v2, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-direct {v1, p0, v2, v0}, Lcom/narvii/util/http/ApiService$3;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 1178
    new-instance v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    invoke-direct {v0, p0, p1, v1}, Lcom/narvii/util/http/ApiService$WrappedRequest;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 1179
    new-instance p1, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {p1}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    iput-object p1, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->resend:Lcom/narvii/model/api/ApiResponse;

    return-object v0
.end method

.method private createWrappedRequest(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiService$WrappedRequest;
    .locals 1

    .line 348
    new-instance v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/narvii/util/http/ApiService$WrappedRequest;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-object v0
.end method

.method public static initUserAgent(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1259
    sget-boolean v0, Lcom/narvii/util/http/ApiService;->uaInited:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1260
    sput-boolean v0, Lcom/narvii/util/http/ApiService;->uaInited:Z

    .line 1261
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "http.agent"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static isTimeSynced()Z
    .locals 5

    .line 1283
    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static safeHeaderStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1240
    invoke-static {p0}, Lcom/narvii/util/http/ApiService;->validHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 1242
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_2
    const-string p0, "?"

    return-object p0
.end method

.method public static shouldShowErrMessage(Landroid/content/Context;)Z
    .locals 2

    .line 1289
    invoke-static {p0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const-string/jumbo v1, "topActivity"

    .line 1291
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/narvii/util/services/TopActivityService;

    .line 1292
    invoke-virtual {p0}, Lcom/narvii/util/services/TopActivityService;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    .line 1294
    instance-of v1, p0, Lcom/narvii/app/NVActivity;

    if-eqz v1, :cond_1

    .line 1295
    check-cast p0, Lcom/narvii/app/NVActivity;

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingATO()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/app/NVActivity;->isHandlingJoinCommunity()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static timestamp()J
    .locals 5

    .line 1275
    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/narvii/util/http/ApiService;->syncTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/narvii/util/http/ApiService;->syncAdd:J

    add-long/2addr v0, v2

    return-wide v0

    .line 1278
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static userAgent(Lcom/narvii/app/NVContext;)Ljava/lang/String;
    .locals 1

    const-string v0, "Apple iPhone13,1 iOS v16.5 Main/3.20.0"

    return-object v0
.end method

.method private static validHeader(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    .line 1250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abort(Lcom/narvii/util/http/ApiRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/narvii/util/http/ApiService;->abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public abort(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/narvii/util/http/ApiService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/narvii/util/http/ApiService$1;-><init>(Lcom/narvii/util/http/ApiService;Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 232
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 234
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService$WrappedRequest;

    .line 236
    iget-object v2, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->request:Lcom/narvii/util/http/ApiRequest;

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    iget-object v1, v1, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne v1, p2, :cond_0

    .line 238
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abort "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in 105-relogin queue)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "api"

    invoke-static {v2, v1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abortAll(Z)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/narvii/util/http/ApiService$2;

    invoke-direct {v1, p0, p1}, Lcom/narvii/util/http/ApiService$2;-><init>(Lcom/narvii/util/http/ApiService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 272
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 273
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->resending105:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public addSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 294
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    return-void
.end method

.method convertUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->apiUrlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    sget-object v1, Lcom/narvii/util/http/ApiService;->FORCE_SCHEME:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x2

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "://"

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x3

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/16 v0, 0x2f

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v2, "/xx/"

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    .line 330
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v3, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x67

    .line 333
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v4, 0x78

    .line 335
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr v2, v1

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method

.method public exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;Lcom/android/volley/RequestQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/util/http/ApiRequest;",
            "Lcom/narvii/util/http/ApiResponseListener<",
            "+",
            "Lcom/narvii/model/api/ApiResponse;",
            ">;",
            "Lcom/android/volley/RequestQueue;",
            ")V"
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/narvii/logging/LogUtils;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    iput-object v0, p1, Lcom/narvii/util/http/ApiRequest;->nextPageRefererInfo:Lcom/narvii/logging/PageRefererInfo;

    .line 183
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService$WrappedRequest;

    if-eqz v0, :cond_1

    .line 185
    iget-object p3, v0, Lcom/narvii/util/http/ApiService$WrappedRequest;->listener:Lcom/narvii/util/http/ApiResponseListener;

    if-ne p3, p2, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "duplicated request "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in context "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->context:Lcom/narvii/app/NVContext;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "api"

    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 193
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/narvii/util/http/ApiService;->createWrappedRequest(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)Lcom/narvii/util/http/ApiService$WrappedRequest;

    move-result-object p2

    .line 194
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    .line 196
    invoke-virtual {p3, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 198
    :cond_2
    iget-object p3, p0, Lcom/narvii/util/http/ApiService;->queue:Lcom/android/volley/RequestQueue;

    invoke-virtual {p3, p2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/util/http/ApiService;->sessionMonitors()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 203
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/narvii/util/http/ApiSessionMonitor;

    .line 204
    invoke-interface {p3, p1}, Lcom/narvii/util/http/ApiSessionMonitor;->onNewRequest(Lcom/narvii/util/http/ApiRequest;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removeSessionMonitor(Lcom/narvii/util/http/ApiSessionMonitor;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    :cond_0
    const/4 p1, 0x1

    .line 303
    iput-boolean p1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    :cond_1
    return-void
.end method

.method sessionMonitors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/util/http/ApiSessionMonitor;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    return-object v0

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    if-nez v0, :cond_2

    .line 282
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsDirty:Z

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/narvii/util/http/ApiService;->sessionMonitorsItr:Ljava/util/List;

    return-object v0
.end method

.method syncTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1304
    :cond_0
    sget-wide v0, Lcom/narvii/util/http/ApiService;->syncTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1305
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1306
    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncTime:J

    const-wide/16 v5, 0x3a98

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 1308
    :try_start_0
    iget-object v3, p0, Lcom/narvii/util/http/ApiService;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v3}, Lcom/narvii/config/ConfigService;->getServiceHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1309
    invoke-static {p2}, Lcom/narvii/util/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sput-wide p1, Lcom/narvii/util/http/ApiService;->syncAdd:J

    .line 1310
    sput-wide v1, Lcom/narvii/util/http/ApiService;->syncTime:J

    if-eqz v0, :cond_2

    .line 1312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "time sync finish, diff="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/narvii/util/http/ApiService;->syncAdd:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string/jumbo p2, "time sync fail"

    .line 1316
    invoke-static {p2, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
