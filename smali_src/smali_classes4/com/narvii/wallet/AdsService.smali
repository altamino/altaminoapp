.class public Lcom/narvii/wallet/AdsService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final EXPIRE:J = 0x36ee80L


# instance fields
.field account:Lcom/narvii/account/AccountService;

.field context:Lcom/narvii/app/NVContext;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/wallet/AdsService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/wallet/AdsService;->account:Lcom/narvii/account/AccountService;

    .line 16
    return-void
.end method


# virtual methods
.method public offerWallVendor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0xbb8

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 6
    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public update()Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/wallet/AdsService;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    const-string v1, "ads_time"

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 14
    move-result-wide v1

    .line 15
    .line 16
    const-string v3, "ads_version"

    .line 17
    const/4 v4, 0x0

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    new-instance v3, Lcom/narvii/util/PackageUtils;

    .line 24
    .line 25
    iget-object v4, p0, Lcom/narvii/wallet/AdsService;->context:Lcom/narvii/app/NVContext;

    .line 26
    .line 27
    .line 28
    invoke-interface {v4}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    .line 32
    invoke-direct {v3, v4}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/narvii/util/PackageUtils;->getVersionName()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v4

    .line 41
    .line 42
    .line 43
    const-wide/32 v6, 0x36ee80

    .line 44
    .line 45
    sub-long v6, v4, v6

    .line 46
    .line 47
    cmp-long v6, v1, v6

    .line 48
    const/4 v7, 0x0

    .line 49
    .line 50
    if-lez v6, :cond_0

    .line 51
    .line 52
    cmp-long v1, v1, v4

    .line 53
    .line 54
    if-gez v1, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    return v7

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 69
    move-result-object v1

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/narvii/util/JacksonUtils;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 77
    move-result-object v4

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 85
    move-result-object v4

    .line 86
    .line 87
    const-string v5, "/wallet/ads"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 91
    move-result-object v4

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 101
    move-result-object v5

    .line 102
    .line 103
    const-string v8, "language"

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v8, v5}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    const-string v5, "country"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    const-string v4, "availableOfferWall"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v4, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    const-string v1, "availableRewardVideo"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    move-result-object v0

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    iget-object v1, p0, Lcom/narvii/wallet/AdsService;->context:Lcom/narvii/app/NVContext;

    .line 140
    .line 141
    const-string v2, "api"

    .line 142
    .line 143
    .line 144
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 146
    .line 147
    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 148
    .line 149
    new-instance v2, Lcom/narvii/wallet/AdsService$1;

    .line 150
    .line 151
    const-class v4, Lcom/narvii/model/api/ApiResponse;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, p0, v4, v3}, Lcom/narvii/wallet/AdsService$1;-><init>(Lcom/narvii/wallet/AdsService;Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0, v2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 158
    return v7
.end method
