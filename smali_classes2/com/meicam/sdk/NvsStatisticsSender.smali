.class public Lcom/meicam/sdk/NvsStatisticsSender;
.super Ljava/lang/Object;
.source "NvsStatisticsSender.java"


# static fields
.field private static HTTPS_API_SET_STATISTICS:Ljava/lang/String; = "https://api.meishesdk.com/statistics/index.php"

.field private static final NV_DEBUG:Z = false

.field private static NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String; = "NV_KEY_STATISTICS_APP_START_TIME"

.field private static NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String; = "NV_KEY_STATISTICS_INFO_CURRENT_DATE"

.field private static final NV_STATISTICS_DAILY:I = 0x1

.field private static final NV_STATISTICS_EVERY_START:I = 0x2

.field private static final NV_STATISTICS_NEVER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Meicam"


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_isStatisticsPrivateInfo:Z

.field private m_statisticsFrequency:I

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/meicam/sdk/NvsStatisticsSender$1;

    invoke-direct {v0, p0}, Lcom/meicam/sdk/NvsStatisticsSender$1;-><init>(Lcom/meicam/sdk/NvsStatisticsSender;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/meicam/sdk/NvsStatisticsSender;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->startSendStatistics()V

    return-void
.end method

.method private getCurrentDateString()Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 118
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startSendStatistics()V
    .locals 10

    .line 50
    iget v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/meicam/sdk/NvsStatisticsInfo;

    iget-object v2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/meicam/sdk/NvsStatisticsInfo;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getStartTime()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    if-ne v3, v4, :cond_2

    return-void

    .line 66
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 67
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v2, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    return-void

    .line 71
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 72
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "appId"

    .line 79
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "startTime"

    .line 80
    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "deviceId"

    .line 81
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "model"

    .line 82
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getModel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "osType"

    .line 83
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getOsType()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "osVersion"

    .line 84
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    iget-boolean v6, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_isStatisticsPrivateInfo:Z

    if-eqz v6, :cond_6

    const-string v6, "phoneNumber"

    .line 86
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsInfo;->getLngAndLat()Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "longitude"

    const/4 v8, 0x0

    .line 88
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "latitude"

    .line 89
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_6
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    new-instance v6, Lcom/meicam/sdk/NvsHttpsRequest;

    invoke-direct {v6}, Lcom/meicam/sdk/NvsHttpsRequest;-><init>()V

    .line 95
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "command"

    const-string v9, "setAppStatistics"

    .line 96
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v8, Lcom/meicam/sdk/NvsStatisticsSender;->HTTPS_API_SET_STATISTICS:Ljava/lang/String;

    invoke-virtual {v6, v8, v7, v5}, Lcom/meicam/sdk/NvsHttpsRequest;->postHttpsRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "errNo"

    .line 103
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 105
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_APP_START_TIME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 112
    iget-object v0, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/meicam/sdk/NvsStatisticsSender;->NV_KEY_STATISTICS_INFO_CURRENT_DATE:Ljava/lang/String;

    invoke-direct {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->getCurrentDateString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meicam/sdk/NvsSystemVariableManager;->setSystemVariableString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public sendStatistics(IZ)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_statisticsFrequency:I

    .line 45
    iput-boolean p2, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_isStatisticsPrivateInfo:Z

    .line 46
    iget-object p1, p0, Lcom/meicam/sdk/NvsStatisticsSender;->m_thread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
