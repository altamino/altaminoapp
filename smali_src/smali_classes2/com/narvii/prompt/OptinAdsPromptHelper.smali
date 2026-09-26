.class public Lcom/narvii/prompt/OptinAdsPromptHelper;
.super Lcom/narvii/prompt/PromptHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/prompt/PromptHelper;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/amino/PromptShowListener;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected doTryShow()V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/prompt/PromptHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserAccount()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v1, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/narvii/prompt/PromptHelper;->prefs:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const-string v4, "ads_pop_up_last_shown_time"

    .line 22
    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 27
    move-result-wide v3

    .line 28
    sub-long/2addr v1, v3

    .line 29
    .line 30
    .line 31
    const-wide/32 v3, 0x5265c00

    .line 32
    .line 33
    cmp-long v1, v1, v3

    .line 34
    .line 35
    if-gez v1, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 39
    return-void

    .line 40
    .line 41
    :cond_1
    iget-object v1, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 42
    .line 43
    const-string v2, "status"

    .line 44
    .line 45
    const-string v3, "popupConfig"

    .line 46
    .line 47
    const-string v4, "ads"

    .line 48
    .line 49
    .line 50
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    const/4 v5, -0x1

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v5, v2}, Lcom/narvii/util/JacksonUtils;->nodeInt(Lcom/fasterxml/jackson/databind/JsonNode;I[Ljava/lang/String;)I

    .line 56
    move-result v1

    .line 57
    .line 58
    iget-object v0, v0, Lcom/narvii/model/User;->extensions:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 59
    .line 60
    const-string v2, "lastPopupTime"

    .line 61
    .line 62
    .line 63
    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/narvii/util/JacksonUtils;->nodePath(Lcom/fasterxml/jackson/databind/JsonNode;[Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 68
    move-result-object v0

    .line 69
    const/4 v2, 0x1

    .line 70
    .line 71
    if-ne v1, v2, :cond_2

    .line 72
    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    new-instance v0, Lcom/narvii/prompt/OptinAdsPromptHelper$1;

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, p0}, Lcom/narvii/prompt/OptinAdsPromptHelper$1;-><init>(Lcom/narvii/prompt/OptinAdsPromptHelper;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/narvii/prompt/PromptHelper;->dispatchShowPromptRunnable(Ljava/lang/Runnable;)V

    .line 82
    return-void

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 86
    return-void

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/prompt/PromptHelper;->whenNotBlocking()V

    .line 90
    return-void
.end method
