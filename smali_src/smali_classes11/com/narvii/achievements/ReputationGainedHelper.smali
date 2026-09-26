.class public Lcom/narvii/achievements/ReputationGainedHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "account"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    .line 16
    .line 17
    const-string v1, "config"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/config/ConfigService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 27
    move-result p1

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iput-object p1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method


# virtual methods
.method public canShowNow()Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "last_rp_gained_show_time_"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 27
    move-result-wide v0

    .line 28
    .line 29
    cmp-long v2, v0, v2

    .line 30
    const/4 v3, 0x0

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/narvii/achievements/ReputationGainedHelper;->show()V

    .line 36
    return v3

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    move-result-wide v4

    .line 41
    sub-long/2addr v4, v0

    .line 42
    .line 43
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    .line 48
    const-wide/32 v0, 0xdbba0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_1
    const-wide/32 v0, 0x5265c00

    .line 53
    .line 54
    :goto_0
    cmp-long v0, v4, v0

    .line 55
    .line 56
    if-lez v0, :cond_4

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    .line 59
    .line 60
    const-string v1, "_communityActiveHelper"

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/community/CommunityActiveHelper;

    .line 67
    .line 68
    if-nez v0, :cond_2

    .line 69
    return v3

    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->mNVContext:Lcom/narvii/app/NVContext;

    .line 72
    .line 73
    const-string v2, "config"

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    check-cast v1, Lcom/narvii/config/ConfigService;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 83
    move-result v1

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    move-result-wide v4

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityActiveHelper;->getLastActiveTime(I)J

    .line 91
    move-result-wide v0

    .line 92
    sub-long/2addr v4, v0

    .line 93
    .line 94
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    .line 99
    const-wide/32 v0, 0x3a980

    .line 100
    goto :goto_1

    .line 101
    .line 102
    .line 103
    :cond_3
    const-wide/32 v0, 0xdbba00

    .line 104
    .line 105
    :goto_1
    cmp-long v0, v4, v0

    .line 106
    .line 107
    if-lez v0, :cond_4

    .line 108
    const/4 v0, 0x1

    .line 109
    return v0

    .line 110
    :cond_4
    return v3
.end method

.method public getGainedRP()I
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    .line 12
    :cond_0
    iget-object v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v4, "last_rp_"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    iget v4, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    const/high16 v4, -0x80000000

    .line 34
    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 37
    move-result v2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    return v1

    .line 41
    .line 42
    :cond_1
    iget v0, v0, Lcom/narvii/model/User;->reputation:I

    .line 43
    sub-int/2addr v0, v2

    .line 44
    return v0
.end method

.method public getLastRP()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    const-string v2, "last_rp_"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    const/high16 v2, -0x80000000

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 27
    move-result v0

    .line 28
    return v0
.end method

.method public show()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserProfile()Lcom/narvii/model/User;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    const-string v3, "last_rp_"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    iget v3, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    iget v0, v0, Lcom/narvii/model/User;->reputation:I

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/narvii/achievements/ReputationGainedHelper;->prefs:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    const-string v2, "last_rp_gained_show_time_"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget v2, p0, Lcom/narvii/achievements/ReputationGainedHelper;->communityId:I

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    move-result-wide v2

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 76
    move-result-object v0

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    return-void
.end method
