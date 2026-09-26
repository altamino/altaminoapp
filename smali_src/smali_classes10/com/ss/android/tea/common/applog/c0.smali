.class public Lcom/ss/android/tea/common/applog/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/android/tea/common/applog/c0;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-string v0, "applog_stats"

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    const-string v0, "last_wifi_bssid"

    .line 19
    const/4 v1, 0x0

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/c0;->b:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "last_check_bssid_time"

    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 33
    move-result-wide v0

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/ss/android/tea/common/applog/c0;->c:J

    .line 36
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 8

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c0;->a:Landroid/content/Context;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    move-result-wide v2

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/ss/android/tea/common/applog/c0;->c:J

    .line 13
    .line 14
    sub-long v4, v2, v4

    .line 15
    .line 16
    .line 17
    const-wide/32 v6, 0x1b7740

    .line 18
    .line 19
    cmp-long v0, v4, v6

    .line 20
    .line 21
    if-gez v0, :cond_1

    .line 22
    return v1

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c0;->a:Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/NetworkUtils;->a(Landroid/content/Context;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    return v1

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/tea/common/applog/c0;->c()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    iget-object v4, p0, Lcom/ss/android/tea/common/applog/c0;->b:Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result v4

    .line 48
    .line 49
    if-nez v4, :cond_3

    .line 50
    const/4 v1, 0x1

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/ss/android/tea/common/applog/c0;->d:Z

    .line 53
    .line 54
    iput-object v0, p0, Lcom/ss/android/tea/common/applog/c0;->e:Ljava/lang/String;

    .line 55
    .line 56
    iput-wide v2, p0, Lcom/ss/android/tea/common/applog/c0;->f:J

    .line 57
    :cond_3
    return v1
.end method

.method public b()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/ss/android/tea/common/applog/c0;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/android/tea/common/applog/c0;->d:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/c0;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v1, p0, Lcom/ss/android/tea/common/applog/c0;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/ss/android/tea/common/applog/c0;->f:J

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/ss/android/tea/common/applog/c0;->c:J

    .line 16
    .line 17
    iget-object v1, p0, Lcom/ss/android/tea/common/applog/c0;->a:Landroid/content/Context;

    .line 18
    .line 19
    const-string v2, "applog_stats"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v1, "last_wifi_bssid"

    .line 30
    .line 31
    iget-object v2, p0, Lcom/ss/android/tea/common/applog/c0;->b:Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    const-string v1, "last_check_bssid_time"

    .line 37
    .line 38
    iget-wide v2, p0, Lcom/ss/android/tea/common/applog/c0;->c:J

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/tea/common/utility/c/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 45
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/ss/android/tea/common/applog/c0;->a:Landroid/content/Context;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    .line 9
    :cond_0
    const-string/jumbo v2, "wifi"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    return-object v1

    .line 19
    .line 20
    .line 21
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v0

    .line 30
    :catch_0
    :cond_2
    return-object v1
.end method
