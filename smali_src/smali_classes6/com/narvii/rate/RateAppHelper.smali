.class public Lcom/narvii/rate/RateAppHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;
    }
.end annotation


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field private neverReminderListener:Landroid/view/View$OnClickListener;

.field onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

.field packageUtils:Lcom/narvii/util/PackageUtils;

.field prefs:Landroid/content/SharedPreferences;

.field private rateDialog:Lcom/narvii/rate/RateDialog;

.field private rateListener:Landroid/view/View$OnClickListener;

.field versionPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/rate/RateAppHelper$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/rate/RateAppHelper$1;-><init>(Lcom/narvii/rate/RateAppHelper;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateListener:Landroid/view/View$OnClickListener;

    .line 11
    .line 12
    new-instance v0, Lcom/narvii/rate/RateAppHelper$2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/narvii/rate/RateAppHelper$2;-><init>(Lcom/narvii/rate/RateAppHelper;)V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->neverReminderListener:Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    .line 20
    .line 21
    const-string v0, "prefs"

    .line 22
    .line 23
    .line 24
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    check-cast v0, Landroid/content/SharedPreferences;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v0, "versionPrefs"

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/content/SharedPreferences;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 41
    .line 42
    new-instance v0, Lcom/narvii/rate/RateDialog;

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p1}, Lcom/narvii/rate/RateDialog;-><init>(Lcom/narvii/app/NVContext;)V

    .line 46
    .line 47
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/narvii/rate/RateAppHelper;->rateListener:Landroid/view/View$OnClickListener;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/narvii/rate/RateDialog;->setRateNowListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/narvii/rate/RateAppHelper;->neverReminderListener:Landroid/view/View$OnClickListener;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/narvii/rate/RateDialog;->setNeverReminderListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    new-instance v0, Lcom/narvii/util/PackageUtils;

    .line 62
    .line 63
    .line 64
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 71
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    return-object p0
.end method


# virtual methods
.method public canShow()Z
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    .line 3
    .line 4
    const-string v1, "account"

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-eqz v0, :cond_8

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    return v1

    .line 30
    .line 31
    :cond_1
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isInstalledFromGooglePlay()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    return v1

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/rate/RateAppHelper;->hasRated()Z

    .line 46
    move-result v0

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    return v1

    .line 50
    .line 51
    :cond_3
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    .line 56
    const-wide/32 v2, 0xea60

    .line 57
    goto :goto_0

    .line 58
    .line 59
    .line 60
    :cond_4
    const-wide/32 v2, 0x36ee80

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-result-wide v4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 67
    .line 68
    const-string v6, "firstLaunchTime"

    .line 69
    .line 70
    const-wide/16 v7, 0x0

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 74
    move-result-wide v6

    .line 75
    add-long/2addr v6, v2

    .line 76
    .line 77
    cmp-long v0, v4, v6

    .line 78
    .line 79
    if-gez v0, :cond_5

    .line 80
    return v1

    .line 81
    .line 82
    :cond_5
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 83
    .line 84
    const-string v2, "launchCount"

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result v0

    .line 89
    const/4 v2, 0x3

    .line 90
    .line 91
    if-gt v0, v2, :cond_6

    .line 92
    return v1

    .line 93
    .line 94
    :cond_6
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 95
    .line 96
    const-string v2, "rateAppShowCount"

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 100
    move-result v0

    .line 101
    .line 102
    if-lez v0, :cond_7

    .line 103
    return v1

    .line 104
    :cond_7
    const/4 v0, 0x1

    .line 105
    return v0

    .line 106
    :cond_8
    :goto_1
    return v1
.end method

.method public hasRated()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "rateAppRated"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public setOnRateOrFeedbackListener(Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper;->onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

    return-void
.end method

.method public showRateDialog()Landroid/app/Dialog;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    const-string v2, "rateAppShowCount"

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    .line 32
    return-object v0
.end method
