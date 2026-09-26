.class public Lcom/huawei/multimedia/audiokit/interfaces/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static final ENGINE_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine"

.field private static final NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

.field private static final PACKAGE_INFO_FLAG:I = 0x0

.field private static final SET_CALL_BACK_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.FeatureKitManager"

.field private static final UNBIND_SERVICE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/huawei/multimedia/audiokit/interfaces/b;


# instance fields
.field private mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/e;


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
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/b;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/e;

    .line 7
    return-void
.end method

.method protected static d()Lcom/huawei/multimedia/audiokit/interfaces/b;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->NEW_FEATUREMANAGER_LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/b;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;-><init>()V

    .line 13
    .line 14
    sput-object v1, Lcom/huawei/multimedia/audiokit/interfaces/b;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/b;

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
    sget-object v1, Lcom/huawei/multimedia/audiokit/interfaces/b;->sInstance:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->BIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 15
    .line 16
    const-string v2, "com.huawei.multimedia.audioengine"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 p3, 0x1

    .line 21
    .line 22
    :try_start_1
    const-string v2, "HwAudioKit.FeatureKitManager"

    .line 23
    .line 24
    const-string v3, "bindService"

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    .line 34
    :try_start_2
    const-string p2, "HwAudioKit.FeatureKitManager"

    .line 35
    .line 36
    const-string v1, "bindService, SecurityException, {}"

    .line 37
    .line 38
    new-array p3, p3, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const/4 v2, 0x0

    .line 44
    .line 45
    aput-object p1, p3, v2

    .line 46
    .line 47
    .line 48
    invoke-static {p2, v1, p3}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw p1
.end method

.method protected b(ILandroid/content/Context;)Lcom/huawei/multimedia/audiokit/interfaces/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/audiokit/interfaces/a;",
            ">(I",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v1, v0, [Ljava/lang/Integer;

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    .line 10
    aput-object v3, v1, v2

    .line 11
    .line 12
    const-string v2, "HwAudioKit.FeatureKitManager"

    .line 13
    .line 14
    const-string v3, "createFeatureKit, type = {}"

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3, v1}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    return-object v1

    .line 22
    .line 23
    :cond_0
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const-string p1, "createFeatureKit, type error"

    .line 26
    .line 27
    .line 28
    invoke-static {v2, p1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-object v1

    .line 30
    .line 31
    :cond_1
    new-instance p1, Lcom/huawei/multimedia/audiokit/interfaces/c;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/c;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/c;->o(Landroid/content/Context;)V

    .line 38
    return-object p1
.end method

.method protected c()Lcom/huawei/multimedia/audiokit/interfaces/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/b;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/e;

    return-object v0
.end method

.method protected e(Landroid/content/Context;)Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "HwAudioKit.FeatureKitManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    :try_start_0
    const-string v2, "com.huawei.multimedia.audioengine"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p1, "packageInfo is null"

    .line 23
    .line 24
    .line 25
    invoke-static {v0, p1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return v1

    .line 27
    .line 28
    :catch_0
    const-string p1, "isMediaKitSupport ,NameNotFoundException"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p1}, Lm5/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return v1

    .line 33
    :cond_1
    const/4 p1, 0x1

    .line 34
    return p1
.end method

.method protected f(I)V
    .locals 5

    .line 1
    .line 2
    const-string v0, "HwAudioKit.FeatureKitManager"

    .line 3
    .line 4
    const-string v1, "onCallBack, result = {}"

    .line 5
    const/4 v2, 0x1

    .line 6
    .line 7
    new-array v2, v2, [Ljava/lang/Integer;

    .line 8
    const/4 v3, 0x0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v4

    .line 13
    .line 14
    aput-object v4, v2, v3

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->SET_CALL_BACK_LOCK:Ljava/lang/Object;

    .line 20
    monitor-enter v0

    .line 21
    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->c()Lcom/huawei/multimedia/audiokit/interfaces/e;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->c()Lcom/huawei/multimedia/audiokit/interfaces/e;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, p1}, Lcom/huawei/multimedia/audiokit/interfaces/e;->onResult(I)V

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method protected g(Lcom/huawei/multimedia/audiokit/interfaces/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/b;->mCallBack:Lcom/huawei/multimedia/audiokit/interfaces/e;

    return-void
.end method

.method protected h(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "HwAudioKit.FeatureKitManager"

    .line 3
    .line 4
    const-string v1, "unbindService"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/multimedia/audiokit/interfaces/b;->UNBIND_SERVICE_LOCK:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
