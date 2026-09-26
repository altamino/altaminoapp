.class public Lcom/narvii/util/googleplay/GooglePlayService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PUBLISH_CHANGED:Ljava/lang/String; = "com.narvii.action.GOOGLE_PLAY_PUBLISH_CHANGED"


# instance fields
.field private context:Lcom/narvii/app/NVContext;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/util/googleplay/GooglePlayService;)Lcom/narvii/app/NVContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/util/googleplay/GooglePlayService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public getLatestVersion()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-string v1, "latestGooglePlayVersion"

    .line 5
    .line 6
    const-string v2, "1.0.0"

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public update(J)V
    .locals 6

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v2, p1, v0

    .line 5
    .line 6
    const-string v3, "lastGooglePlayCheckTime"

    .line 7
    .line 8
    if-lez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v4

    .line 19
    .line 20
    cmp-long v2, v4, v0

    .line 21
    .line 22
    if-lez v2, :cond_0

    .line 23
    add-long/2addr v0, p1

    .line 24
    .line 25
    cmp-long p1, v4, v0

    .line 26
    .line 27
    if-gez p1, :cond_0

    .line 28
    return-void

    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->prefs:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    .line 47
    iget-object p1, p0, Lcom/narvii/util/googleplay/GooglePlayService;->context:Lcom/narvii/app/NVContext;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    .line 57
    new-instance p2, Lcom/narvii/util/googleplay/GooglePlayService$1;

    .line 58
    .line 59
    const-string v0, "googleplay"

    .line 60
    .line 61
    .line 62
    invoke-direct {p2, p0, v0, p1}, Lcom/narvii/util/googleplay/GooglePlayService$1;-><init>(Lcom/narvii/util/googleplay/GooglePlayService;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method
