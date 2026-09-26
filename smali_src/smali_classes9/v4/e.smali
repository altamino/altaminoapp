.class public Lv4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_ATTRIBUTE_KEY_LENGTH:I = 0x28

.field private static final MAX_ATTRIBUTE_VALUE_LENGTH:I = 0x64

.field private static final MAX_TRACE_CUSTOM_ATTRIBUTES:I = 0x5

.field public static final MAX_TRACE_NAME_LENGTH:I = 0x64

.field private static final logger:Ly4/a;


# instance fields
.field private final configResolver:Lcom/google/firebase/perf/config/a;

.field private final firebaseApp:Lcom/google/firebase/f;

.field private final firebaseInstallationsApi:Lcom/google/firebase/installations/h;

.field private final firebaseRemoteConfigProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataBundle:Lcom/google/firebase/perf/util/f;

.field private mPerformanceCollectionForceEnabledState:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final transportFactoryProvider:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lf2/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ly4/a;->e()Ly4/a;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sput-object v0, Lv4/e;->logger:Ly4/a;

    .line 7
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/f;Lo4/b;Lcom/google/firebase/installations/h;Lo4/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lo4/b<",
            "Lcom/google/firebase/remoteconfig/c;",
            ">;",
            "Lcom/google/firebase/installations/h;",
            "Lo4/b<",
            "Lf2/g;",
            ">;",
            "Lcom/google/firebase/perf/config/RemoteConfigManager;",
            "Lcom/google/firebase/perf/config/a;",
            "Lcom/google/firebase/perf/session/SessionManager;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lv4/e;->mCustomAttributes:Ljava/util/Map;

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    iput-object v0, p0, Lv4/e;->mPerformanceCollectionForceEnabledState:Ljava/lang/Boolean;

    .line 14
    .line 15
    iput-object p1, p0, Lv4/e;->firebaseApp:Lcom/google/firebase/f;

    .line 16
    .line 17
    iput-object p2, p0, Lv4/e;->firebaseRemoteConfigProvider:Lo4/b;

    .line 18
    .line 19
    iput-object p3, p0, Lv4/e;->firebaseInstallationsApi:Lcom/google/firebase/installations/h;

    .line 20
    .line 21
    iput-object p4, p0, Lv4/e;->transportFactoryProvider:Lo4/b;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    iput-object p1, p0, Lv4/e;->mPerformanceCollectionForceEnabledState:Ljava/lang/Boolean;

    .line 28
    .line 29
    iput-object p6, p0, Lv4/e;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 30
    .line 31
    new-instance p1, Lcom/google/firebase/perf/util/f;

    .line 32
    .line 33
    new-instance p2, Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/google/firebase/perf/util/f;-><init>(Landroid/os/Bundle;)V

    .line 40
    .line 41
    iput-object p1, p0, Lv4/e;->mMetadataBundle:Lcom/google/firebase/perf/util/f;

    .line 42
    return-void

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-static {}, Lcom/google/firebase/perf/transport/k;->k()Lcom/google/firebase/perf/transport/k;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1, p3, p4}, Lcom/google/firebase/perf/transport/k;->r(Lcom/google/firebase/f;Lcom/google/firebase/installations/h;Lo4/b;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 53
    move-result-object p3

    .line 54
    .line 55
    .line 56
    invoke-static {p3}, Lv4/e;->a(Landroid/content/Context;)Lcom/google/firebase/perf/util/f;

    .line 57
    move-result-object p4

    .line 58
    .line 59
    iput-object p4, p0, Lv4/e;->mMetadataBundle:Lcom/google/firebase/perf/util/f;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p5, p2}, Lcom/google/firebase/perf/config/RemoteConfigManager;->setFirebaseRemoteConfigProvider(Lo4/b;)V

    .line 63
    .line 64
    iput-object p6, p0, Lv4/e;->configResolver:Lcom/google/firebase/perf/config/a;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p6, p4}, Lcom/google/firebase/perf/config/a;->P(Lcom/google/firebase/perf/util/f;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p6, p3}, Lcom/google/firebase/perf/config/a;->O(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p7, p3}, Lcom/google/firebase/perf/session/SessionManager;->setApplicationContext(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p6}, Lcom/google/firebase/perf/config/a;->j()Ljava/lang/Boolean;

    .line 77
    move-result-object p2

    .line 78
    .line 79
    iput-object p2, p0, Lv4/e;->mPerformanceCollectionForceEnabledState:Ljava/lang/Boolean;

    .line 80
    .line 81
    sget-object p2, Lv4/e;->logger:Ly4/a;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ly4/a;->h()Z

    .line 85
    move-result p4

    .line 86
    .line 87
    if-eqz p4, :cond_1

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lv4/e;->d()Z

    .line 91
    move-result p4

    .line 92
    .line 93
    if-eqz p4, :cond_1

    .line 94
    const/4 p4, 0x1

    .line 95
    .line 96
    new-array p4, p4, [Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/google/firebase/n;->e()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p3}, Ly4/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    const/4 p3, 0x0

    .line 114
    .line 115
    aput-object p1, p4, p3

    .line 116
    .line 117
    const-string p1, "Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s"

    .line 118
    .line 119
    .line 120
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, p1}, Ly4/a;->f(Ljava/lang/String;)V

    .line 125
    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/firebase/perf/util/f;
    .locals 2

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    const/16 v1, 0x80

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p0

    .line 21
    .line 22
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    const-string v1, "No perf enable meta data found "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    .line 43
    const-string v0, "isEnabled"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 p0, 0x0

    .line 48
    .line 49
    :goto_1
    new-instance v0, Lcom/google/firebase/perf/util/f;

    .line 50
    .line 51
    if-eqz p0, :cond_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/google/firebase/perf/util/f;-><init>(Landroid/os/Bundle;)V

    .line 55
    goto :goto_2

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-direct {v0}, Lcom/google/firebase/perf/util/f;-><init>()V

    .line 59
    :goto_2
    return-object v0
.end method

.method public static c()Lv4/e;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-class v1, Lv4/e;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Lv4/e;

    .line 13
    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    new-instance v0, Ljava/util/HashMap;

    .line 3
    .line 4
    iget-object v1, p0, Lv4/e;->mCustomAttributes:Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 8
    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lv4/e;->mPerformanceCollectionForceEnabledState:Ljava/lang/Boolean;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/firebase/f;->t()Z

    .line 17
    move-result v0

    .line 18
    :goto_0
    return v0
.end method
