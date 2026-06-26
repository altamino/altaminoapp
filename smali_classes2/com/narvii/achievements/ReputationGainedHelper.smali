.class public Lcom/narvii/achievements/ReputationGainedHelper;
.super Ljava/lang/Object;
.source "ReputationGainedHelper.java"


# static fields
.field public static final KEY_LAST_RP:Ljava/lang/String; = "last_rp"

.field public static final KEY_LAST_RP_GAINED_SHOW_TIME:Ljava/lang/String; = "last_rp_gained_show_time"

.field private static final NOT_ACTIVE_INTERVAL:J = 0xdbba00L

.field private static final NOT_ACTIVE_INTERVAL_DEBUG:J = 0x3a980L

.field private static final SHOW_INTERVAL:J = 0x5265c00L

.field private static final SHOW_INTERVAL_DEBUG:J = 0xdbba0L


# instance fields
.field private final account:Lcom/narvii/account/AccountService;

.field communityId:I

.field mNVContext:Lcom/narvii/app/NVContext;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 32
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    const-string v0, "config"

    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 34
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result p1

    iput p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 35
    iget-object p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public canShowNow()Z
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_rp_gained_show_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/narvii/achievements/ReputationGainedHelper;->show()V

    return v4

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_1

    const-wide/32 v0, 0xdbba0

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x5265c00

    :goto_0
    const/4 v5, 0x1

    cmp-long v6, v2, v0

    if-lez v6, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return v4

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    const-string v1, "_communityActiveHelper"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/community/CommunityActiveHelper;

    if-nez v0, :cond_4

    return v4

    .line 52
    :cond_4
    iget-object v1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    const-string v2, "config"

    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 53
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityActiveHelper;->getLastActiveTime(I)J

    move-result-wide v0

    sub-long/2addr v2, v0

    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_5

    const-wide/32 v0, 0x3a980

    goto :goto_2

    :cond_5
    const-wide/32 v0, 0xdbba00

    :goto_2
    cmp-long v6, v2, v0

    if-lez v6, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_7

    return v4

    :cond_7
    return v5
.end method

.method public getGainedRP()I
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last_rp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    return v1

    .line 70
    :cond_1
    iget v0, v0, Lcom/narvii/model/User;->reputation:I

    sub-int/2addr v0, v2

    return v0
.end method

.method public getLastRP()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_rp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public show()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last_rp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/narvii/model/User;->reputation:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_rp_gained_show_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
