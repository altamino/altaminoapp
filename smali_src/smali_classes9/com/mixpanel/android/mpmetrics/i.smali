.class Lcom/mixpanel/android/mpmetrics/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.PIdentity"

.field private static sIsFirstAppLaunch:Ljava/lang/Boolean; = null

.field private static sPreviousVersionCode:Ljava/lang/Integer; = null

.field private static sReferrerPrefsDirty:Z = true

.field private static final sReferrerPrefsLock:Ljava/lang/Object;


# instance fields
.field private mAnonymousId:Ljava/lang/String;

.field private mEventsDistinctId:Ljava/lang/String;

.field private mEventsUserIdPresent:Z

.field private mHadPersistedDistinctId:Z

.field private mIdentitiesLoaded:Z

.field private mIsUserOptOut:Ljava/lang/Boolean;

.field private final mLoadReferrerPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadStoredPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final mMixpanelPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleDistinctId:Ljava/lang/String;

.field private final mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mReferrerPropertiesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperPropertiesCache:Lorg/json/JSONObject;

.field private final mSuperPropsLock:Ljava/lang/Object;

.field private final mTimeEventsPreferences:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropsLock:Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadReferrerPreferences:Ljava/util/concurrent/Future;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/i;->mTimeEventsPreferences:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 19
    const/4 p1, 0x0

    .line 20
    .line 21
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 24
    const/4 p1, 0x0

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 27
    .line 28
    new-instance p1, Lcom/mixpanel/android/mpmetrics/i$a;

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, p0}, Lcom/mixpanel/android/mpmetrics/i$a;-><init>(Lcom/mixpanel/android/mpmetrics/i;)V

    .line 32
    .line 33
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 34
    return-void
.end method

.method private G()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Cannot store superProperties in shared preferences."

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 5
    .line 6
    const-string v2, "MixpanelAPI.PIdentity"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v0, "storeSuperProperties should not be called with uninitialized superPropertiesCache."

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v4, "Storing Super Properties "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v3}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 41
    .line 42
    .line 43
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    check-cast v3, Landroid/content/SharedPreferences;

    .line 47
    .line 48
    .line 49
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 50
    move-result-object v3

    .line 51
    .line 52
    const-string v4, "super_properties"

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    .line 63
    goto :goto_1

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-static {v2, v0, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 71
    move-result-object v1

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v0, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_2
    return-void
.end method

.method private static H(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4
    return-void
.end method

.method private I()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Can\'t write distinct ids to shared preferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    const-string v3, "events_distinct_id"

    .line 19
    .line 20
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    const-string v3, "events_user_id_present"

    .line 26
    .line 27
    iget-boolean v4, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsUserIdPresent:Z

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    const-string v3, "people_distinct_id"

    .line 33
    .line 34
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/i;->mPeopleDistinctId:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    const-string v3, "anonymous_id"

    .line 40
    .line 41
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    const-string v3, "had_persisted_distinct_id"

    .line 47
    .line 48
    iget-boolean v4, p0, Lcom/mixpanel/android/mpmetrics/i;->mHadPersistedDistinctId:Z

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_2

    .line 56
    :catch_0
    move-exception v2

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v2

    .line 59
    goto :goto_1

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_2
    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Can\'t write opt-out shared preferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    const-string v4, "opt_out_"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    .line 42
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {v1, v0, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    goto :goto_2

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_2
    return-void
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/i;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->x()V

    .line 4
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsDirty:Z

    return p0
.end method

.method public static n(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const-string v0, "people_distinct_id"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private p()Lorg/json/JSONObject;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->y()V

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 10
    return-object v0
.end method

.method private v()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "Cannot read distinct ids from sharedPreferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 11
    move-result-object v3

    .line 12
    .line 13
    check-cast v3, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_3

    .line 15
    :catch_0
    move-exception v3

    .line 16
    goto :goto_0

    .line 17
    :catch_1
    move-exception v3

    .line 18
    goto :goto_1

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {v1, v0, v3}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    goto :goto_2

    .line 23
    .line 24
    .line 25
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0, v3}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_2
    move-object v3, v2

    .line 31
    .line 32
    :goto_3
    if-nez v3, :cond_0

    .line 33
    return-void

    .line 34
    .line 35
    :cond_0
    const-string v0, "events_distinct_id"

    .line 36
    .line 37
    .line 38
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "events_user_id_present"

    .line 44
    const/4 v1, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    move-result v0

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsUserIdPresent:Z

    .line 51
    .line 52
    const-string v0, "people_distinct_id"

    .line 53
    .line 54
    .line 55
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mPeopleDistinctId:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "anonymous_id"

    .line 61
    .line 62
    .line 63
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "had_persisted_distinct_id"

    .line 69
    .line 70
    .line 71
    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 72
    move-result v0

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mHadPersistedDistinctId:Z

    .line 75
    .line 76
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    .line 81
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 82
    move-result-object v0

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v2, "$device:"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;

    .line 110
    .line 111
    iput-boolean v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsUserIdPresent:Z

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->I()V

    .line 115
    :cond_1
    const/4 v0, 0x1

    .line 116
    .line 117
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 118
    return-void
.end method

.method private w(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "Cannot read opt out flag from sharedPreferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_3

    .line 14
    :catch_0
    move-exception v2

    .line 15
    goto :goto_0

    .line 16
    :catch_1
    move-exception v2

    .line 17
    goto :goto_1

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    goto :goto_2

    .line 22
    .line 23
    .line 24
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 25
    move-result-object v2

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    :goto_2
    const/4 v2, 0x0

    .line 30
    .line 31
    :goto_3
    if-nez v2, :cond_0

    .line 32
    return-void

    .line 33
    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v1, "opt_out_"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    const/4 v0, 0x0

    .line 51
    .line 52
    .line 53
    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    move-result p1

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 61
    return-void
.end method

.method private x()V
    .locals 6

    .line 1
    .line 2
    const-string v0, "Cannot load referrer properties from shared preferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    new-instance v2, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 12
    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadReferrerPreferences:Ljava/util/concurrent/Future;

    .line 14
    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    check-cast v2, Landroid/content/SharedPreferences;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 25
    .line 26
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 27
    .line 28
    .line 29
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v3

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    check-cast v3, Ljava/util/Map$Entry;

    .line 54
    .line 55
    .line 56
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    check-cast v4, Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    .line 72
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception v2

    .line 77
    goto :goto_2

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    goto :goto_3

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 85
    move-result-object v2

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    :cond_0
    :goto_3
    return-void
.end method

.method private y()V
    .locals 5

    .line 1
    .line 2
    const-string v0, "Cannot load superProperties from SharedPreferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v3, "super_properties"

    .line 15
    .line 16
    .line 17
    const-string/jumbo v4, "{}"

    .line 18
    .line 19
    .line 20
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v4, "Loading Super Properties "

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v3}, Lcom/mixpanel/android/util/d;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    new-instance v3, Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    iput-object v3, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_3

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_4

    .line 52
    :catch_0
    move-exception v2

    .line 53
    goto :goto_1

    .line 54
    :catch_1
    move-exception v2

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :catch_2
    :try_start_1
    const-string v0, "Cannot parse stored superProperties"

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->G()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 66
    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    new-instance v0, Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 73
    .line 74
    :goto_0
    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 75
    goto :goto_3

    .line 76
    .line 77
    .line 78
    :goto_1
    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    .line 80
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 81
    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    new-instance v0, Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    goto :goto_0

    .line 89
    .line 90
    .line 91
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    .line 97
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 98
    .line 99
    if-nez v0, :cond_0

    .line 100
    .line 101
    new-instance v0, Lorg/json/JSONObject;

    .line 102
    .line 103
    .line 104
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    :goto_3
    return-void

    .line 107
    .line 108
    :goto_4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 109
    .line 110
    if-nez v1, :cond_1

    .line 111
    .line 112
    new-instance v1, Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 116
    .line 117
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropertiesCache:Lorg/json/JSONObject;

    .line 118
    :cond_1
    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mTimeEventsPreferences:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_2
    return-void
.end method

.method public declared-synchronized B(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;

    .line 20
    const/4 p1, 0x1

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mHadPersistedDistinctId:Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->I()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public declared-synchronized C(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized D(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "has_launched_"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x1

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_3

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :goto_0
    :try_start_1
    const-string v0, "MixpanelAPI.PIdentity"

    .line 47
    .line 48
    const-string v1, "Couldn\'t write internal Mixpanel shared preferences."

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    goto :goto_2

    .line 53
    .line 54
    :goto_1
    const-string v0, "MixpanelAPI.PIdentity"

    .line 55
    .line 56
    const-string v1, "Couldn\'t write internal Mixpanel shared preferences."

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :goto_2
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :goto_3
    monitor-exit p0

    .line 67
    throw p1
.end method

.method public declared-synchronized E(ZLjava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/mixpanel/android/mpmetrics/i;->J(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized F(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mPeopleDistinctId:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_1
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public d(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->p()Lorg/json/JSONObject;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v3

    .line 35
    .line 36
    :try_start_2
    const-string v4, "MixpanelAPI.PIdentity"

    .line 37
    .line 38
    const-string v5, "Object read from one JSON Object cannot be written to another"

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5, v3}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p1
.end method

.method public declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadStoredPreferences:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->y()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 43
    throw v1

    .line 44
    .line 45
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 49
    move-result-object v0

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_2
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public f()V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mLoadReferrerPreferences:Ljava/util/concurrent/Future;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    check-cast v1, Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_2

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_3

    .line 25
    :catch_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :catch_1
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :goto_0
    :try_start_1
    const-string v2, "MixpanelAPI.PIdentity"

    .line 31
    .line 32
    const-string v3, "Cannot load referrer properties from shared preferences."

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v3, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    goto :goto_2

    .line 37
    .line 38
    :goto_1
    const-string v2, "MixpanelAPI.PIdentity"

    .line 39
    .line 40
    const-string v3, "Cannot load referrer properties from shared preferences."

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3, v1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_2
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw v1
.end method

.method public g()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mTimeEventsPreferences:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroid/content/SharedPreferences;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_2
    return-void
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mAnonymousId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized i()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized j()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsUserIdPresent:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsDistinctId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    const/4 v0, 0x0

    .line 22
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public declared-synchronized k()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mHadPersistedDistinctId:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public declared-synchronized l(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/i;->w(Ljava/lang/String;)V

    .line 9
    .line 10
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/i;->mIsUserOptOut:Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return p1

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public declared-synchronized m()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mPeopleDistinctId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :goto_1
    monitor-exit p0

    .line 17
    throw v0
.end method

.method public o()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsDirty:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->x()V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    sput-boolean v1, Lcom/mixpanel/android/mpmetrics/i;->sReferrerPrefsDirty:Z

    .line 21
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mReferrerPropertiesCache:Ljava/util/Map;

    .line 24
    return-object v0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method public q()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mTimeEventsPreferences:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception v1

    .line 61
    goto :goto_2

    .line 62
    .line 63
    .line 64
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    goto :goto_3

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    :cond_0
    :goto_3
    return-object v0
.end method

.method protected r(Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    const-string v0, "Can\'t read opt-out shared preferences."

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.PIdentity"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    check-cast v2, Landroid/content/SharedPreferences;

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v4, "opt_out_"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 33
    move-result p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    return p1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-static {v1, v0, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v0, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :goto_2
    const/4 p1, 0x0

    .line 51
    return p1
.end method

.method public declared-synchronized s(ZLjava/lang/String;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/content/SharedPreferences;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    const-string v2, "has_launched_"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    sput-object p1, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    .line 46
    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    sput-object p1, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    move-result p1

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p2}, Lcom/mixpanel/android/mpmetrics/i;->D(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    goto :goto_0

    .line 63
    .line 64
    :catch_0
    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    sput-object p1, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :catch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 70
    .line 71
    sput-object p1, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;

    .line 72
    .line 73
    :cond_1
    :goto_0
    sget-object p1, Lcom/mixpanel/android/mpmetrics/i;->sIsFirstAppLaunch:Ljava/lang/Boolean;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return p1

    .line 80
    :goto_1
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public declared-synchronized t(Ljava/lang/String;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    monitor-exit p0

    .line 6
    return v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :try_start_1
    sget-object v1, Lcom/mixpanel/android/mpmetrics/i;->sPreviousVersionCode:Ljava/lang/Integer;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Landroid/content/SharedPreferences;

    .line 23
    .line 24
    const-string v2, "latest_version_code"

    .line 25
    const/4 v3, -0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    sput-object v1, Lcom/mixpanel/android/mpmetrics/i;->sPreviousVersionCode:Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result v1

    .line 40
    .line 41
    if-ne v1, v3, :cond_1

    .line 42
    .line 43
    sput-object p1, Lcom/mixpanel/android/mpmetrics/i;->sPreviousVersionCode:Ljava/lang/Integer;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    check-cast v1, Landroid/content/SharedPreferences;

    .line 52
    .line 53
    .line 54
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    const-string v2, "latest_version_code"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v3

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_2

    .line 75
    .line 76
    :cond_1
    :goto_0
    sget-object v1, Lcom/mixpanel/android/mpmetrics/i;->sPreviousVersionCode:Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    move-result v1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v2

    .line 85
    .line 86
    if-ge v1, v2, :cond_2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/i;->mMixpanelPreferences:Ljava/util/concurrent/Future;

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    check-cast v1, Landroid/content/SharedPreferences;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 98
    move-result-object v1

    .line 99
    .line 100
    const-string v2, "latest_version_code"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result p1

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/i;->H(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    .line 112
    const/4 p1, 0x1

    .line 113
    return p1

    .line 114
    .line 115
    :goto_1
    :try_start_2
    const-string v1, "MixpanelAPI.PIdentity"

    .line 116
    .line 117
    const-string v2, "Couldn\'t write internal Mixpanel from shared preferences."

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    goto :goto_3

    .line 122
    .line 123
    :goto_2
    const-string v1, "MixpanelAPI.PIdentity"

    .line 124
    .line 125
    const-string v2, "Couldn\'t write internal Mixpanel shared preferences."

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 129
    move-result-object p1

    .line 130
    .line 131
    .line 132
    invoke-static {v1, v2, p1}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :cond_2
    :goto_3
    monitor-exit p0

    .line 134
    return v0

    .line 135
    :goto_4
    monitor-exit p0

    .line 136
    throw p1
.end method

.method public declared-synchronized u()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mIdentitiesLoaded:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->v()V

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mEventsUserIdPresent:Z

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit p0

    .line 21
    throw v0
.end method

.method public z(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/i;->mSuperPropsLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->p()Lorg/json/JSONObject;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 11
    move-result-object v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v3

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v3

    .line 35
    .line 36
    :try_start_2
    const-string v4, "MixpanelAPI.PIdentity"

    .line 37
    .line 38
    const-string v5, "Exception registering super property."

    .line 39
    .line 40
    .line 41
    invoke-static {v4, v5, v3}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/i;->G()V

    .line 46
    monitor-exit v0

    .line 47
    return-void

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p1
.end method
