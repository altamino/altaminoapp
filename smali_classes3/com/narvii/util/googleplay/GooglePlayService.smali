.class public Lcom/narvii/util/googleplay/GooglePlayService;
.super Ljava/lang/Object;
.source "GooglePlayService.java"


# static fields
.field public static final PUBLISH_CHANGED:Ljava/lang/String; = "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 31
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/util/googleplay/GooglePlayService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/util/googleplay/GooglePlayService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method


# virtual methods
.method public getLatestVersion()Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "latestGooglePlayVersion"

    const-string v2, "1.0.0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(J)V
    .locals 6

    const-string v0, "lastGooglePlayCheckTime"

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    add-long/2addr v1, p1

    cmp-long p1, v3, v1

    if-gez p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    iget-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance p2, Lcom/narvii/util/googleplay/GooglePlayService$1;

    const-string v0, "googleplay"

    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/util/googleplay/GooglePlayService$1;-><init>(Lcom/narvii/util/googleplay/GooglePlayService;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
