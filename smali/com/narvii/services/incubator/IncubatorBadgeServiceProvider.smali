.class public Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;
.super Lcom/narvii/util/badge/BaseBadgeServiceProvider;
.source "IncubatorBadgeServiceProvider.java"


# instance fields
.field lastFullCheckTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V
    .locals 6

    .line 21
    invoke-super {p0, p1, p2}, Lcom/narvii/util/badge/BaseBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    .line 22
    invoke-virtual {p2}, Lcom/narvii/util/badge/BadgeService;->isBadgeAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "account"

    .line 23
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 24
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;->lastFullCheckTime:J

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 27
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    const-string v3, "/reminder/full-check"

    invoke-virtual {v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v2

    const-string v3, "api"

    .line 28
    invoke-interface {p1, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/http/ApiService;

    .line 29
    new-instance v3, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;

    const-class v4, Lcom/narvii/notice/ReminderFullCheckResponse;

    invoke-direct {v3, p0, v4, p2}, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider$1;-><init>(Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;Ljava/lang/Class;Lcom/narvii/util/badge/BadgeService;)V

    invoke-virtual {p1, v2, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    .line 35
    iput-wide v0, p0, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;->lastFullCheckTime:J

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p2, p1}, Lcom/narvii/util/badge/BadgeService;->setBadge(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic pause(Lcom/narvii/app/NVContext;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lcom/narvii/util/badge/BadgeService;

    invoke-virtual {p0, p1, p2}, Lcom/narvii/services/incubator/IncubatorBadgeServiceProvider;->pause(Lcom/narvii/app/NVContext;Lcom/narvii/util/badge/BadgeService;)V

    return-void
.end method
