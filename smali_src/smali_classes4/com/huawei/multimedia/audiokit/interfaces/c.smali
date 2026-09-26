.class public Lcom/huawei/multimedia/audiokit/interfaces/c;
.super Lcom/huawei/multimedia/audiokit/interfaces/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/multimedia/audiokit/interfaces/c$c;
    }
.end annotation


# static fields
.field private static final ENGINE_CLASS_NAME:Ljava/lang/String; = "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService"

.field private static final TAG:Ljava/lang/String; = "HwAudioKit.HwAudioKaraokeFeatureKit"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

.field private mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

.field private mIsServiceConnected:Z

.field private mService:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/huawei/multimedia/audiokit/interfaces/a;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 10
    .line 11
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mService:Landroid/os/IBinder;

    .line 12
    .line 13
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/c$a;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/c$a;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/c;)V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mConnection:Landroid/content/ServiceConnection;

    .line 19
    .line 20
    new-instance v0, Lcom/huawei/multimedia/audiokit/interfaces/c$b;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/huawei/multimedia/audiokit/interfaces/c$b;-><init>(Lcom/huawei/multimedia/audiokit/interfaces/c;)V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/huawei/multimedia/audiokit/interfaces/b;->d()Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    iput-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audioengine/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/huawei/multimedia/audiokit/interfaces/c;Lcom/huawei/multimedia/audioengine/b;)Lcom/huawei/multimedia/audioengine/b;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/huawei/multimedia/audiokit/interfaces/c;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 3
    return p1
.end method

.method static synthetic d(Lcom/huawei/multimedia/audiokit/interfaces/c;)Lcom/huawei/multimedia/audiokit/interfaces/b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/huawei/multimedia/audiokit/interfaces/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->q(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/huawei/multimedia/audiokit/interfaces/c;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->r(Landroid/os/IBinder;)V

    .line 4
    return-void
.end method

.method static synthetic h(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/huawei/multimedia/audiokit/interfaces/c;)Landroid/os/IBinder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mService:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/huawei/multimedia/audiokit/interfaces/c;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mService:Landroid/os/IBinder;

    .line 3
    return-object p1
.end method

.method private k(Landroid/content/Context;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 3
    .line 4
    const-string v1, "bindService"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mConnection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    const-string v2, "com.huawei.multimedia.audioengine.HwAudioKaraokeFeatureService"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->a(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 23
    :cond_0
    return-void
.end method

.method private q(Ljava/lang/String;)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/huawei/multimedia/audioengine/b;->S(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 24
    .line 25
    const-string v1, "isFeatureSupported,RemoteException ex : {}"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, p1}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method private r(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    .line 2
    iput-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mService:Landroid/os/IBinder;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

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
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 14
    .line 15
    const/16 v0, 0x3ea

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 19
    .line 20
    const-string p1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 21
    .line 22
    const-string v0, "serviceLinkToDeath, RemoteException"

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Lm5/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public l()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

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
    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 15
    .line 16
    const-string v3, "destroy, mIsServiceConnected = {}"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3, v0}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iput-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 26
    .line 27
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mConnection:Landroid/content/ServiceConnection;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/huawei/multimedia/audiokit/interfaces/b;->h(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 35
    :cond_0
    return-void
.end method

.method public m(Z)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Boolean;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    aput-object v2, v0, v1

    .line 11
    .line 12
    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 13
    .line 14
    const-string v2, "enableKaraokeFeature, enable = {}"

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2, v0}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/huawei/multimedia/audioengine/b;->x0(Z)I

    .line 29
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p1

    .line 31
    :catch_0
    move-exception p1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    .line 41
    const-string v0, "enableKaraokeFeature,RemoteException ex : {}"

    .line 42
    .line 43
    .line 44
    invoke-static {v1, v0, p1}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_0
    const/4 p1, -0x2

    .line 46
    return p1
.end method

.method public n()I
    .locals 3

    .line 1
    .line 2
    const-string v0, "getKaraokeLatency"

    .line 3
    .line 4
    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/huawei/multimedia/audioengine/b;->X0()I

    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v2, "getKaraokeLatency,RemoteException ex : {}"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    const/4 v0, -0x1

    .line 36
    return v0
.end method

.method protected o(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "initialize"

    .line 3
    .line 4
    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "initialize, context is null"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, p1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/b;->e(Landroid/content/Context;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mFeatureKitManager:Lcom/huawei/multimedia/audiokit/interfaces/b;

    .line 26
    const/4 v0, 0x2

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/huawei/multimedia/audiokit/interfaces/b;->f(I)V

    .line 30
    .line 31
    const-string p1, "initialize, not install AudioEngine"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, p1}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/multimedia/audiokit/interfaces/c;->k(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public p()Z
    .locals 3

    .line 1
    .line 2
    const-string v0, "isKaraokeFeatureSupport"

    .line 3
    .line 4
    const-string v1, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Lm5/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/huawei/multimedia/audioengine/b;->Y0()Z

    .line 19
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    const-string v2, "isFeatureSupported,RemoteException ex : {}"

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v2, v0}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method public s(Lcom/huawei/multimedia/audiokit/interfaces/c$c;I)I
    .locals 5

    .line 1
    .line 2
    const-string v0, "HwAudioKit.HwAudioKaraokeFeatureKit"

    .line 3
    .line 4
    :try_start_0
    const-string v1, "parame.getParameName() = {}, parameValue = {}"

    .line 5
    const/4 v2, 0x2

    .line 6
    .line 7
    new-array v2, v2, [Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->a()Ljava/lang/String;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x1

    .line 20
    .line 21
    aput-object v3, v2, v4

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Lm5/a;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    iget-object v1, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIHwAudioKaraokeFeatureAidl:Lcom/huawei/multimedia/audioengine/b;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    iget-boolean v2, p0, Lcom/huawei/multimedia/audiokit/interfaces/c;->mIsServiceConnected:Z

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/huawei/multimedia/audiokit/interfaces/c$c;->a()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, p1, p2}, Lcom/huawei/multimedia/audioengine/b;->G0(Ljava/lang/String;I)I

    .line 40
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return p1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    const-string p2, "setParameter,RemoteException ex : {}"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p2, p1}, Lm5/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_0
    const/4 p1, -0x2

    .line 57
    return p1
.end method
