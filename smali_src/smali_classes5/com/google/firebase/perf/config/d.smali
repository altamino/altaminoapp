.class public final Lcom/google/firebase/perf/config/d;
.super Lcom/google/firebase/perf/config/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/v<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/perf/config/v;-><init>()V

    .line 4
    return-void
.end method

.method protected static declared-synchronized e()Lcom/google/firebase/perf/config/d;
    .locals 2

    .line 1
    .line 2
    const-class v0, Lcom/google/firebase/perf/config/d;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/d;->instance:Lcom/google/firebase/perf/config/d;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/google/firebase/perf/config/d;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/firebase/perf/config/d;-><init>()V

    .line 13
    .line 14
    sput-object v1, Lcom/google/firebase/perf/config/d;->instance:Lcom/google/firebase/perf/config/d;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/perf/config/d;->instance:Lcom/google/firebase/perf/config/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.firebase.perf.ExperimentTTID"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "experiment_app_start_ttid"

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "fpr_experiment_app_start_ttid"

    return-object v0
.end method

.method protected d()Ljava/lang/Boolean;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
