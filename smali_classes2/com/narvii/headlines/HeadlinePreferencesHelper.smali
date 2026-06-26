.class public Lcom/narvii/headlines/HeadlinePreferencesHelper;
.super Ljava/lang/Object;
.source "HeadlinePreferencesHelper.java"


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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->context:Lcom/narvii/app/NVContext;

    const-string v0, "prefs"

    .line 26
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v0, "account"

    .line 27
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 28
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getLastCheckTime()J
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 56
    :cond_0
    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_CHECK_TIME:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastHeadLineTime()J
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 33
    :cond_0
    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_TIME:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastHeadLinendcId()I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 44
    :cond_0
    sget-object v2, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_NDCID:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLastTimeHeadlineFeedId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_ID_PRE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveLastCheckTime(J)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_CHECK_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveLastHeadLineTime(J)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_TIME:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveLastHeadLinendcId(I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_NDCID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastReadHeadlineFeedId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/narvii/headlines/HeadlinePreferencesHelper;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/narvii/headlines/HeadlinePreferencesHelper;->KEY_HEAD_LINE_LAST_FEED_ID_PRE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
