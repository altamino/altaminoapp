.class public Lcom/narvii/rate/RateAppHelper;
.super Ljava/lang/Object;
.source "RateAppHelper.java"


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/narvii/rate/RateAppHelper$1;

    invoke-direct {v0, p0}, Lcom/narvii/rate/RateAppHelper$1;-><init>(Lcom/narvii/rate/RateAppHelper;)V

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/narvii/rate/RateAppHelper$2;

    invoke-direct {v0, p0}, Lcom/narvii/rate/RateAppHelper$2;-><init>(Lcom/narvii/rate/RateAppHelper;)V

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->neverReminderListener:Landroid/view/View$OnClickListener;

    .line 36
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 37
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "versionPrefs"

    .line 38
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    .line 40
    new-instance v0, Lcom/narvii/rate/RateDialog;

    invoke-direct {v0, p1}, Lcom/narvii/rate/RateDialog;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    .line 41
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    iget-object v1, p0, Lcom/narvii/rate/RateAppHelper;->rateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/rate/RateDialog;->setRateNowListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    iget-object v1, p0, Lcom/narvii/rate/RateAppHelper;->neverReminderListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/narvii/rate/RateDialog;->setNeverReminderListener(Landroid/view/View$OnClickListener;)V

    .line 43
    new-instance v0, Lcom/narvii/util/PackageUtils;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/rate/RateAppHelper;)Lcom/narvii/rate/RateDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    return-object p0
.end method


# virtual methods
.method public canShow()Z
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 89
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isGooglePlayInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 96
    :cond_1
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->packageUtils:Lcom/narvii/util/PackageUtils;

    invoke-virtual {v0}, Lcom/narvii/util/PackageUtils;->isInstalledFromGooglePlay()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 101
    :cond_2
    invoke-virtual {p0}, Lcom/narvii/rate/RateAppHelper;->hasRated()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 105
    :cond_3
    sget-boolean v0, Lcom/narvii/app/NVApplication;->DEBUG:Z

    if-eqz v0, :cond_4

    const-wide/32 v2, 0xea60

    goto :goto_0

    :cond_4
    const-wide/32 v2, 0x36ee80

    .line 106
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v6, 0x0

    const-string v8, "firstLaunchTime"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v6, v2

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    return v1

    .line 110
    :cond_5
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    const-string v2, "launchCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_6

    return v1

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    const-string v2, "rateAppShowCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0

    :cond_8
    :goto_1
    return v1
.end method

.method public hasRated()Z
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "rateAppRated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setOnRateOrFeedbackListener(Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/rate/RateAppHelper;->onRateOrFeedbackListener:Lcom/narvii/rate/RateAppHelper$OnRateOrFeedbackListener;

    return-void
.end method

.method public showRateDialog()Landroid/app/Dialog;
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    invoke-virtual {v0}, Lcom/narvii/app/NVDialog;->show()V

    .line 123
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    const-string v1, "rateAppShowCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 124
    iget-object v2, p0, Lcom/narvii/rate/RateAppHelper;->versionPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    iget-object v0, p0, Lcom/narvii/rate/RateAppHelper;->rateDialog:Lcom/narvii/rate/RateDialog;

    return-object v0
.end method
