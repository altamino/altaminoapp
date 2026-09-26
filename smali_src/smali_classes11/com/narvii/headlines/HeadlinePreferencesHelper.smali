.class public Lcom/narvii/headlines/HeadlinePreferencesHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static KEY_HEAD_LINE_LAST_CHECK_TIME:Ljava/lang/String; = "key_headline_last_check_time"

.field public static KEY_HEAD_LINE_LAST_FEED_ID_PRE:Ljava/lang/String; = "channel_"

.field public static KEY_HEAD_LINE_LAST_FEED_NDCID:Ljava/lang/String; = "key_headline_last_feed_ndcid"

.field public static KEY_HEAD_LINE_LAST_FEED_TIME:Ljava/lang/String; = "key_headline_last_feed_time"


# instance fields
.field context:Lcom/narvii/app/NVContext;

.field prefs:Landroid/content/SharedPreferences;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->context:Lcom/narvii/app/NVContext;

    .line 6
    .line 7
    const-string v0, "prefs"

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    const-string v0, "account"

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    check-cast p1, Lcom/narvii/account/AccountService;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    iput-object p1, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method


# virtual methods
.method public getLastCheckTime()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-wide v1

    .line 8
    .line 9
    :cond_0
    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_CHECK_TIME:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getLastHeadLineTime()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-wide v1

    .line 8
    .line 9
    :cond_0
    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_TIME:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getLastHeadLinendcId()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    sget-object v2, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_NDCID:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public getLastTimeHeadlineFeedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_ID_PRE:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public saveLastCheckTime(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_CHECK_TIME:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    return-void
.end method

.method public saveLastHeadLineTime(J)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_TIME:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 19
    return-void
.end method

.method public saveLastHeadLinendcId(I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_NDCID:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    return-void
.end method

.method public saveLastReadHeadlineFeedId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    sget-object v2, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_ID_PRE:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method
