.class public Lcom/huawei/multimedia/audiokit/interfaces/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audiokit/interfaces/d$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_FEATURE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine.HwAudioEngineService"

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.HwAudioKit"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

.field private mIHwAudioEngine:Lcom/huawei/multimedia/audioengine/a;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    sput-object v0, Lcom/huawei/multimedia/audiokit/interfaces/d;->DEFAULT_FEATURE_LIST:Ljava/util/List;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/multimedia/audiokit/interfaces/e;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIHwAudioEngine:Lcom/huawei/multimedia/audioengine/a;

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 12
    .line 13
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mService:Landroid/os/IBinder;

    .line 14
    .line 15
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/d$a;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/d$a;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/d;)V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mConnection:Landroid/content/ServiceConnection;

    .line 21
    .line 22
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/d$b;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/d$b;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/d;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/huawei/multimedia/audiokit/interfaces/b;->d()Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->g(Lcom/huawei/multimedia/audiokit/interfaces/e;)V

    .line 37
    .line 38
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/huawei/multimedia/audiokit/interfaces/d;)Lcom/huawei/multimedia/audioengine/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIHwAudioEngine:Lcom/huawei/multimedia/audioengine/a;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/huawei/multimedia/audiokit/interfaces/d;Lcom/huawei/multimedia/audioengine/a;)Lcom/huawei/multimedia/audioengine/a;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIHwAudioEngine:Lcom/huawei/multimedia/audioengine/a;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/huawei/multimedia/audiokit/interfaces/d;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/huawei/multimedia/audiokit/interfaces/d;)Lcom/huawei/multimedia/audiokit/interfaces/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/huawei/multimedia/audiokit/interfaces/d;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/huawei/multimedia/audiokit/interfaces/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/huawei/multimedia/audiokit/interfaces/d;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/huawei/multimedia/audiokit/interfaces/d;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/d;->p(Landroid/os/IBinder;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/huawei/multimedia/audiokit/interfaces/d;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/huawei/multimedia/audiokit/interfaces/d;)Landroid/os/IBinder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mService:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/huawei/multimedia/audiokit/interfaces/d;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mService:Landroid/os/IBinder;

    .line 3
    return-object p1
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-string v1, "HwAudioKit.HwAudioKit"

    .line 15
    .line 16
    const-string v2, "bindService, mIsServiceConnected = {}"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mConnection:Landroid/content/ServiceConnection;

    .line 30
    .line 31
    const-string v2, "com.huawei.multimedia.audioengine.HwAudioEngineService"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "serviceInit"

    .line 3
    .line 4
    const-string v1, "HwAudioKit.HwAudioKit"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIHwAudioEngine:Lcom/huawei/multimedia/audioengine/a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Lcom/huawei/multimedia/audioengine/a;->r0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string p2, "isFeatureSupported,RemoteException ex : {}"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, p2, p1}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_0
    :goto_0
    return-void
.end method

.method private p(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mService:Landroid/os/IBinder;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :catch_0
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 14
    const/4 v0, 0x5

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 18
    .line 19
    const-string p1, "HwAudioKit.HwAudioKit"

    .line 20
    .line 21
    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v0}, Lm5/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public l(Lcom/huawei/multimedia/audiokit/interfaces/d$c;)Lcom/huawei/multimedia/audiokit/interfaces/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/huawei/multimedia/audiokit/interfaces/a;",
            ">(",
            "Lcom/huawei/multimedia/audiokit/interfaces/d$c;",
            ")TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/d$c;->a()I

    .line 6
    move-result p1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->b(ILandroid/content/Context;)Lcom/huawei/multimedia/audiokit/interfaces/a;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public m()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-string v1, "HwAudioKit.HwAudioKit"

    .line 15
    .line 16
    const-string v3, "destroy, mIsServiceConnected = {}"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3, v0}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mIsServiceConnected:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mConnection:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->h(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 35
    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    .line 2
    const-string v0, "initialize"

    .line 3
    .line 4
    const-string v1, "HwAudioKit.HwAudioKit"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "mContext is null"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 19
    const/4 v1, 0x7

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 23
    return-void

    .line 24
    .line 25
    :cond_0
    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->e(Landroid/content/Context;)Z

    .line 29
    move-result v0

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "not install AudioKitEngine"

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 39
    const/4 v1, 0x2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/d;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0}, Lcom/huawei/multimedia/audiokit/interfaces/d;->k(Landroid/content/Context;)V

    .line 49
    return-void
.end method
