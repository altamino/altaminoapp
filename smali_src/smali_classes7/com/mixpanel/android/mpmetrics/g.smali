.class public Lcom/mixpanel/android/mpmetrics/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/g$e;,
        Lcom/mixpanel/android/mpmetrics/g$c;,
        Lcom/mixpanel/android/mpmetrics/g$d;
    }
.end annotation


# static fields
.field private static final APP_LINKS_LOGTAG:Ljava/lang/String; = "MixpanelAPI.AL"

.field private static final ENGAGE_DATE_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI.API"

.field public static final VERSION:Ljava/lang/String; = "7.5.2"

.field private static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/mixpanel/android/mpmetrics/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPrefsLoader:Lcom/mixpanel/android/mpmetrics/k;

.field private static sReferrerPrefs:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfig:Lcom/mixpanel/android/mpmetrics/d;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTimings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceName:Ljava/lang/String;

.field private final mMessages:Lcom/mixpanel/android/mpmetrics/a;

.field private mMixpanelActivityLifecycleCallbacks:Lcom/mixpanel/android/mpmetrics/h;

.field private final mPeople:Lcom/mixpanel/android/mpmetrics/g$e;

.field private final mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

.field private final mSessionMetadata:Lcom/mixpanel/android/mpmetrics/j;

.field private final mToken:Ljava/lang/String;

.field private final mTrackAutomaticEvents:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/mixpanel/android/mpmetrics/g;->sInstanceMap:Ljava/util/Map;

    .line 8
    .line 9
    new-instance v0, Lcom/mixpanel/android/mpmetrics/k;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/k;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/mixpanel/android/mpmetrics/g;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/k;

    .line 15
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;ZLorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/mixpanel/android/mpmetrics/d;",
            "Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "$android_app_version_code"

    const-string v1, "$android_app_version"

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    iput-object p7, p0, Lcom/mixpanel/android/mpmetrics/g;->mInstanceName:Ljava/lang/String;

    .line 3
    new-instance v2, Lcom/mixpanel/android/mpmetrics/g$e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mixpanel/android/mpmetrics/g$e;-><init>(Lcom/mixpanel/android/mpmetrics/g;Lcom/mixpanel/android/mpmetrics/f;)V

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPeople:Lcom/mixpanel/android/mpmetrics/g$e;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mGroups:Ljava/util/Map;

    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 5
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    .line 6
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p8, "$android_lib_version"

    const-string v2, "7.5.2"

    .line 7
    invoke-interface {p4, p8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p8, "$android_os"

    const-string v2, "Android"

    .line 8
    invoke-interface {p4, p8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "UNKNOWN"

    if-nez p8, :cond_0

    move-object p8, v2

    :cond_0
    const-string v4, "$android_os_version"

    invoke-interface {p4, v4, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object p8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez p8, :cond_1

    move-object p8, v2

    :cond_1
    const-string v4, "$android_manufacturer"

    invoke-interface {p4, v4, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object p8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez p8, :cond_2

    move-object p8, v2

    :cond_2
    const-string v4, "$android_brand"

    invoke-interface {p4, v4, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object p8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p8, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p8

    :goto_0
    const-string p8, "$android_model"

    invoke-interface {p4, p8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p8

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p8, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p8

    .line 15
    iget-object v2, p8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget p8, p8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p8

    invoke-interface {p4, v0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p8

    const-string v2, "MixpanelAPI.API"

    const-string v4, "Exception getting app version name"

    .line 17
    invoke-static {v2, v4, p8}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_1
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p8

    iput-object p8, p0, Lcom/mixpanel/android/mpmetrics/g;->mDeviceInfo:Ljava/util/Map;

    .line 19
    new-instance p8, Lcom/mixpanel/android/mpmetrics/j;

    invoke-direct {p8}, Lcom/mixpanel/android/mpmetrics/j;-><init>()V

    iput-object p8, p0, Lcom/mixpanel/android/mpmetrics/g;->mSessionMetadata:Lcom/mixpanel/android/mpmetrics/j;

    .line 20
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->j()Lcom/mixpanel/android/mpmetrics/a;

    move-result-object p8

    iput-object p8, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 21
    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/mixpanel/android/mpmetrics/g;->p(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/i;

    move-result-object p1

    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 22
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/i;->q()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    if-eqz p5, :cond_5

    .line 23
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1, p3}, Lcom/mixpanel/android/mpmetrics/i;->r(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->x()V

    :cond_5
    if-eqz p6, :cond_6

    .line 25
    invoke-virtual {p0, p6}, Lcom/mixpanel/android/mpmetrics/g;->C(Lorg/json/JSONObject;)V

    :cond_6
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 26
    invoke-static {p2, p3}, Lcom/mixpanel/android/mpmetrics/e;->r(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mixpanel/android/mpmetrics/e;->p()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    .line 27
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->B()V

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p2, p3}, Lcom/mixpanel/android/mpmetrics/i;->s(ZLjava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "$ae_first_open"

    .line 29
    invoke-virtual {p0, p2, v3, p3}, Lcom/mixpanel/android/mpmetrics/g;->H(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/i;->D(Ljava/lang/String;)V

    .line 31
    :cond_7
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->E()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "$app_open"

    .line 32
    invoke-virtual {p0, p2, v3}, Lcom/mixpanel/android/mpmetrics/g;->G(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    :cond_8
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/i;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 34
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "$ae_updated_version"

    .line 35
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "$ae_updated"

    .line 36
    invoke-virtual {p0, p2, p1, p3}, Lcom/mixpanel/android/mpmetrics/g;->H(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_9
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 37
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->d()Z

    move-result p1

    if-nez p1, :cond_a

    .line 38
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/c;->a()V

    :cond_a
    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 39
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/d;->s()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 40
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mixpanel/android/mpmetrics/a;->o(Ljava/io/File;)V

    :cond_b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v1, p1

    move-object v7, p6

    .line 1
    invoke-static {p1, p6}, Lcom/mixpanel/android/mpmetrics/d;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/d;

    move-result-object v4

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/mixpanel/android/mpmetrics/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/d;ZLorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method

.method private static A(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/g;)V
    .locals 10

    .line 1
    .line 2
    const-string v0, "To enable App Links tracking, add implementation \'androidx.localbroadcastmanager:localbroadcastmanager:1.0.0\': "

    .line 3
    .line 4
    const-string v1, "MixpanelAPI.AL"

    .line 5
    .line 6
    :try_start_0
    const-class v2, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 7
    .line 8
    sget v3, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->a:I

    .line 9
    .line 10
    const-string v3, "getInstance"

    .line 11
    const/4 v4, 0x1

    .line 12
    .line 13
    new-array v5, v4, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v6, Landroid/content/Context;

    .line 16
    const/4 v7, 0x0

    .line 17
    .line 18
    aput-object v6, v5, v7

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    const-string v5, "registerReceiver"

    .line 25
    const/4 v6, 0x2

    .line 26
    .line 27
    new-array v8, v6, [Ljava/lang/Class;

    .line 28
    .line 29
    const-class v9, Landroid/content/BroadcastReceiver;

    .line 30
    .line 31
    aput-object v9, v8, v7

    .line 32
    .line 33
    const-class v9, Landroid/content/IntentFilter;

    .line 34
    .line 35
    aput-object v9, v8, v4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    new-array v5, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    aput-object p0, v5, v7

    .line 44
    const/4 p0, 0x0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 49
    .line 50
    new-array v3, v6, [Ljava/lang/Object;

    .line 51
    .line 52
    new-instance v5, Lcom/mixpanel/android/mpmetrics/g$b;

    .line 53
    .line 54
    .line 55
    invoke-direct {v5, p1}, Lcom/mixpanel/android/mpmetrics/g$b;-><init>(Lcom/mixpanel/android/mpmetrics/g;)V

    .line 56
    .line 57
    aput-object v5, v3, v7

    .line 58
    .line 59
    new-instance p1, Landroid/content/IntentFilter;

    .line 60
    .line 61
    const-string v5, "com.parse.bolts.measurement_event"

    .line 62
    .line 63
    .line 64
    invoke-direct {p1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    aput-object p1, v3, v4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_4

    .line 71
    :catch_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p0

    .line 74
    goto :goto_1

    .line 75
    :catch_2
    move-exception p0

    .line 76
    goto :goto_2

    .line 77
    :catch_3
    move-exception p0

    .line 78
    goto :goto_3

    .line 79
    .line 80
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    const-string v0, "App Links tracking will not be enabled due to this exception: "

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    .line 102
    invoke-static {v1, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_4

    .line 104
    .line 105
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 123
    .line 124
    .line 125
    invoke-static {v1, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    goto :goto_4

    .line 127
    .line 128
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    move-result-object p0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    .line 147
    .line 148
    invoke-static {v1, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    goto :goto_4

    .line 150
    .line 151
    :goto_3
    const-string p1, "Failed to invoke LocalBroadcastManager.registerReceiver() -- App Links tracking will not be enabled due to this exception"

    .line 152
    .line 153
    .line 154
    invoke-static {v1, p1, p0}, Lcom/mixpanel/android/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :goto_4
    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/j;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/g;->mSessionMetadata:Lcom/mixpanel/android/mpmetrics/j;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/mixpanel/android/mpmetrics/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/g;->y(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic c(Lcom/mixpanel/android/mpmetrics/g;)Lcom/mixpanel/android/mpmetrics/i;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/mixpanel/android/mpmetrics/g;)Ljava/util/Map;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/g;->mDeviceInfo:Ljava/util/Map;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/mixpanel/android/mpmetrics/g;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/g;->z(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method static synthetic f(Lcom/mixpanel/android/mpmetrics/g;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method static g(Lcom/mixpanel/android/mpmetrics/g$c;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/mixpanel/android/mpmetrics/g;->sInstanceMap:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 27
    move-result-object v2

    .line 28
    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    .line 43
    check-cast v3, Lcom/mixpanel/android/mpmetrics/g;

    .line 44
    .line 45
    .line 46
    invoke-interface {p0, v3}, Lcom/mixpanel/android/mpmetrics/g$c;->a(Lcom/mixpanel/android/mpmetrics/g;)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 10

    .line 1
    .line 2
    const-string v0, "Please install the Bolts library >= 1.1.2 to track App Links: "

    .line 3
    .line 4
    instance-of v1, p0, Landroid/app/Activity;

    .line 5
    .line 6
    const-string v2, "MixpanelAPI.AL"

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v1, "bolts.AppLinks"

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 15
    move-object v3, p0

    .line 16
    .line 17
    check-cast v3, Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    const-string v4, "getTargetUrlFromInboundIntent"

    .line 24
    const/4 v5, 0x2

    .line 25
    .line 26
    new-array v6, v5, [Ljava/lang/Class;

    .line 27
    .line 28
    const-class v7, Landroid/content/Context;

    .line 29
    const/4 v8, 0x0

    .line 30
    .line 31
    aput-object v7, v6, v8

    .line 32
    .line 33
    const-class v7, Landroid/content/Intent;

    .line 34
    const/4 v9, 0x1

    .line 35
    .line 36
    aput-object v7, v6, v9

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    move-result-object v1

    .line 41
    .line 42
    new-array v4, v5, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object p0, v4, v8

    .line 45
    .line 46
    aput-object v3, v4, v9

    .line 47
    const/4 p0, 0x0

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_4

    .line 52
    :catch_0
    move-exception p0

    .line 53
    goto :goto_0

    .line 54
    :catch_1
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_2
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :catch_3
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    .line 61
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    const-string v1, "Unable to detect inbound App Links: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 73
    move-result-object p0

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    .line 82
    .line 83
    invoke-static {v2, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    goto :goto_4

    .line 85
    .line 86
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    .line 105
    .line 106
    invoke-static {v2, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    goto :goto_4

    .line 108
    .line 109
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    .line 128
    .line 129
    invoke-static {v2, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    goto :goto_4

    .line 131
    .line 132
    :goto_3
    const-string v0, "Failed to invoke bolts.AppLinks.getTargetUrlFromInboundIntent() -- Unable to detect inbound App Links"

    .line 133
    .line 134
    .line 135
    invoke-static {v2, v0, p0}, Lcom/mixpanel/android/util/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    goto :goto_4

    .line 137
    .line 138
    :cond_0
    const-string p0, "Context is not an instance of Activity. To detect inbound App Links, pass an instance of an Activity to getInstance."

    .line 139
    .line 140
    .line 141
    invoke-static {v2, p0}, Lcom/mixpanel/android/util/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_4
    return-void
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;Z)Lcom/mixpanel/android/mpmetrics/g;
    .locals 6

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v5, p2

    .line 7
    .line 8
    .line 9
    invoke-static/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/g;->n(Landroid/content/Context;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Z)Lcom/mixpanel/android/mpmetrics/g;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Z)Lcom/mixpanel/android/mpmetrics/g;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-eqz p1, :cond_5

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    goto :goto_3

    .line 8
    .line 9
    :cond_0
    sget-object v10, Lcom/mixpanel/android/mpmetrics/g;->sInstanceMap:Ljava/util/Map;

    .line 10
    monitor-enter v10

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    move-result-object v11

    .line 15
    .line 16
    sget-object v2, Lcom/mixpanel/android/mpmetrics/g;->sReferrerPrefs:Ljava/util/concurrent/Future;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    sget-object v2, Lcom/mixpanel/android/mpmetrics/g;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/k;

    .line 21
    .line 22
    const-string v3, "com.mixpanel.android.mpmetrics.ReferralInfo"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p0, v3, v1}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/k$b;)Ljava/util/concurrent/Future;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    sput-object v1, Lcom/mixpanel/android/mpmetrics/g;->sReferrerPrefs:Ljava/util/concurrent/Future;

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 34
    .line 35
    move-object/from16 v1, p4

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move-object v1, p1

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    check-cast v2, Ljava/util/Map;

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    new-instance v2, Ljava/util/HashMap;

    .line 48
    .line 49
    .line 50
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_3
    move-object v1, v2

    .line 55
    .line 56
    .line 57
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, Lcom/mixpanel/android/mpmetrics/g;

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    .line 65
    invoke-static {v11}, Lcom/mixpanel/android/mpmetrics/b;->a(Landroid/content/Context;)Z

    .line 66
    move-result v3

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    new-instance v12, Lcom/mixpanel/android/mpmetrics/g;

    .line 71
    .line 72
    sget-object v4, Lcom/mixpanel/android/mpmetrics/g;->sReferrerPrefs:Ljava/util/concurrent/Future;

    .line 73
    move-object v2, v12

    .line 74
    move-object v3, v11

    .line 75
    move-object v5, p1

    .line 76
    move v6, p2

    .line 77
    .line 78
    move-object/from16 v7, p3

    .line 79
    .line 80
    move-object/from16 v8, p4

    .line 81
    .line 82
    move/from16 v9, p5

    .line 83
    .line 84
    .line 85
    invoke-direct/range {v2 .. v9}, Lcom/mixpanel/android/mpmetrics/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;ZLorg/json/JSONObject;Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v12}, Lcom/mixpanel/android/mpmetrics/g;->A(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/g;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v1, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-object v2, v12

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-static {p0}, Lcom/mixpanel/android/mpmetrics/g;->h(Landroid/content/Context;)V

    .line 96
    monitor-exit v10

    .line 97
    return-object v2

    .line 98
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw v0

    .line 100
    :cond_5
    :goto_3
    return-object v1
.end method

.method private y(Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 3
    .line 4
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$f;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, p1, v2}, Lcom/mixpanel/android/mpmetrics/a$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->n(Lcom/mixpanel/android/mpmetrics/a$f;)V

    .line 13
    return-void
.end method

.method private z(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 10
    .line 11
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$e;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, p1, v2}, Lcom/mixpanel/android/mpmetrics/a$e;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->l(Lcom/mixpanel/android/mpmetrics/a$e;)V

    .line 20
    return-void
.end method


# virtual methods
.method B()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    instance-of v0, v0, Landroid/app/Application;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/app/Application;

    .line 19
    .line 20
    new-instance v1, Lcom/mixpanel/android/mpmetrics/h;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, p0, v2}, Lcom/mixpanel/android/mpmetrics/h;-><init>(Lcom/mixpanel/android/mpmetrics/g;Lcom/mixpanel/android/mpmetrics/d;)V

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mMixpanelActivityLifecycleCallbacks:Lcom/mixpanel/android/mpmetrics/h;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 31
    goto :goto_0

    .line 32
    .line 33
    :cond_0
    const-string v0, "MixpanelAPI.API"

    .line 34
    .line 35
    const-string v1, "Context is not an Application, Mixpanel won\'t be able to automatically flush on an app background."

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/mixpanel/android/util/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method public C(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/i;->z(Lorg/json/JSONObject;)V

    .line 13
    return-void
.end method

.method public D()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->e()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->j()Lcom/mixpanel/android/mpmetrics/a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$c;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/mixpanel/android/mpmetrics/a$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->c(Lcom/mixpanel/android/mpmetrics/a$c;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->l()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/g;->u(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->i()V

    .line 31
    return-void
.end method

.method E()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/d;->c()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public F(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/g;->G(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    return-void
.end method

.method public G(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lcom/mixpanel/android/mpmetrics/g;->H(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    .line 12
    return-void
.end method

.method protected H(Ljava/lang/String;Lorg/json/JSONObject;Z)V
    .locals 12

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    .line 21
    monitor-enter v0

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Long;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, p1}, Lcom/mixpanel/android/mpmetrics/i;->A(Ljava/lang/String;)V

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->o()Ljava/util/Map;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object v0

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v2

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    .line 71
    check-cast v2, Ljava/util/Map$Entry;

    .line 72
    .line 73
    .line 74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    check-cast v3, Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p2

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v5}, Lcom/mixpanel/android/mpmetrics/i;->d(Lorg/json/JSONObject;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 99
    move-result-wide v2

    .line 100
    long-to-double v2, v2

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 106
    div-double/2addr v2, v6

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->l()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->k()Ljava/lang/String;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->r()Ljava/lang/String;

    .line 118
    move-result-object v8

    .line 119
    .line 120
    const-string v9, "time"

    .line 121
    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    move-result-wide v10

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    .line 129
    const-string v9, "distinct_id"

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    const-string v0, "$had_persisted_distinct_id"

    .line 135
    .line 136
    iget-object v9, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Lcom/mixpanel/android/mpmetrics/i;->k()Z

    .line 140
    move-result v9

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    const-string v0, "$device_id"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    :cond_2
    if-eqz v8, :cond_3

    .line 153
    .line 154
    const-string v0, "$user_id"

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    :cond_3
    if-eqz v1, :cond_4

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 163
    move-result-wide v0

    .line 164
    long-to-double v0, v0

    .line 165
    div-double/2addr v0, v6

    .line 166
    sub-double/2addr v2, v0

    .line 167
    .line 168
    const-string v0, "$duration"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 172
    .line 173
    :cond_4
    if-eqz p2, :cond_5

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 177
    move-result-object v0

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    move-result v1

    .line 182
    .line 183
    if-eqz v1, :cond_5

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    check-cast v1, Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    move-result-object v2

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    goto :goto_1

    .line 198
    .line 199
    :cond_5
    new-instance p2, Lcom/mixpanel/android/mpmetrics/a$a;

    .line 200
    .line 201
    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 202
    .line 203
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mSessionMetadata:Lcom/mixpanel/android/mpmetrics/j;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/j;->a()Lorg/json/JSONObject;

    .line 207
    move-result-object v8

    .line 208
    move-object v3, p2

    .line 209
    move-object v4, p1

    .line 210
    move v7, p3

    .line 211
    .line 212
    .line 213
    invoke-direct/range {v3 .. v8}, Lcom/mixpanel/android/mpmetrics/a$a;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZLorg/json/JSONObject;)V

    .line 214
    .line 215
    iget-object p3, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p3, p2}, Lcom/mixpanel/android/mpmetrics/a;->f(Lcom/mixpanel/android/mpmetrics/a$a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    goto :goto_3

    .line 220
    .line 221
    :goto_2
    const-string p3, "MixpanelAPI.API"

    .line 222
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    const-string v1, "Exception tracking event "

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    .line 240
    .line 241
    invoke-static {p3, p1, p2}, Lcom/mixpanel/android/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_3
    return-void

    .line 243
    :catchall_0
    move-exception p1

    .line 244
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    throw p1

    .line 246
    :cond_6
    :goto_4
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mMessages:Lcom/mixpanel/android/mpmetrics/a;

    .line 10
    .line 11
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$c;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lcom/mixpanel/android/mpmetrics/a$c;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->m(Lcom/mixpanel/android/mpmetrics/a$c;)V

    .line 20
    return-void
.end method

.method j()Lcom/mixpanel/android/mpmetrics/a;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->g(Landroid/content/Context;Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/a;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->h()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->i()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o()Lcom/mixpanel/android/mpmetrics/g$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPeople:Lcom/mixpanel/android/mpmetrics/g$e;

    return-object v0
.end method

.method p(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mixpanel/android/mpmetrics/i;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/mixpanel/android/mpmetrics/g$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/mixpanel/android/mpmetrics/g$a;-><init>(Lcom/mixpanel/android/mpmetrics/g;)V

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    move-object p3, p4

    .line 9
    .line 10
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v1, "com.mixpanel.android.mpmetrics.MixpanelAPI_"

    .line 16
    .line 17
    .line 18
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    sget-object v1, Lcom/mixpanel/android/mpmetrics/g;->sPrefsLoader:Lcom/mixpanel/android/mpmetrics/k;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1, p4, v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/k$b;)Ljava/util/concurrent/Future;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    const-string v2, "com.mixpanel.android.mpmetrics.MixpanelAPI.TimeEvents_"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p3

    .line 49
    const/4 v0, 0x0

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, p1, p3, v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/k$b;)Ljava/util/concurrent/Future;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    const-string v2, "com.mixpanel.android.mpmetrics.Mixpanel"

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1, v2, v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/k$b;)Ljava/util/concurrent/Future;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    new-instance v0, Lcom/mixpanel/android/mpmetrics/i;

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, p2, p4, p3, p1}, Lcom/mixpanel/android/mpmetrics/i;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    .line 65
    return-object v0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mTrackAutomaticEvents:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->j()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public s()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/i;->l(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/mixpanel/android/mpmetrics/g;->u(Ljava/lang/String;Z)V

    .line 5
    return-void
.end method

.method public u(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->s()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-string p1, "MixpanelAPI.API"

    .line 12
    .line 13
    const-string p2, "Can\'t identify with null distinct_id."

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 20
    monitor-enter v0

    .line 21
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/i;->i()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    const-string v2, "$device:"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string p1, "MixpanelAPI.API"

    .line 43
    .line 44
    const-string p2, "Can\'t identify with \'$device:\' distinct_id."

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    .line 53
    :cond_2
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Lcom/mixpanel/android/mpmetrics/i;->C(Ljava/lang/String;)V

    .line 57
    .line 58
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/mixpanel/android/mpmetrics/i;->B(Ljava/lang/String;)V

    .line 62
    .line 63
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/i;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .line 73
    const-string v3, "$anon_distinct_id"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    const-string v1, "$identify"

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1, v2}, Lcom/mixpanel/android/mpmetrics/g;->G(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :catch_0
    :try_start_2
    const-string v1, "MixpanelAPI.API"

    .line 85
    .line 86
    const-string v2, "Could not track $identify event"

    .line 87
    .line 88
    .line 89
    invoke-static {v1, v2}, Lcom/mixpanel/android/util/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 92
    .line 93
    iget-object p2, p0, Lcom/mixpanel/android/mpmetrics/g;->mPeople:Lcom/mixpanel/android/mpmetrics/g$e;

    .line 94
    .line 95
    .line 96
    invoke-static {p2, p1}, Lcom/mixpanel/android/mpmetrics/g$e;->f(Lcom/mixpanel/android/mpmetrics/g$e;Ljava/lang/String;)V

    .line 97
    :cond_4
    monitor-exit v0

    .line 98
    return-void

    .line 99
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p1
.end method

.method v()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mConfig:Lcom/mixpanel/android/mpmetrics/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/d;->i()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->i()V

    .line 12
    :cond_0
    return-void
.end method

.method w()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mSessionMetadata:Lcom/mixpanel/android/mpmetrics/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/j;->d()V

    .line 6
    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->j()Lcom/mixpanel/android/mpmetrics/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Lcom/mixpanel/android/mpmetrics/a$c;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/mixpanel/android/mpmetrics/a$c;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/a;->e(Lcom/mixpanel/android/mpmetrics/a$c;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/g$d;->c()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/g$d;->b()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/g;->o()Lcom/mixpanel/android/mpmetrics/g$d;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Lcom/mixpanel/android/mpmetrics/g$d;->a()V

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->e()V

    .line 44
    .line 45
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    .line 46
    monitor-enter v0

    .line 47
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mEventTimings:Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 52
    .line 53
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/i;->g()V

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/i;->f()V

    .line 63
    .line 64
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/g;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/i;

    .line 65
    const/4 v1, 0x1

    .line 66
    .line 67
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/g;->mToken:Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/i;->E(ZLjava/lang/String;)V

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v1

    .line 73
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw v1
.end method
