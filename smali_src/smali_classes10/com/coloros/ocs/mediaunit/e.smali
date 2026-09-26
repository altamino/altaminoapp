.class public final Lcom/coloros/ocs/mediaunit/e;
.super Lcom/coloros/ocs/base/common/api/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/ocs/base/common/api/c<",
        "Ljava/lang/Object;",
        "Lcom/coloros/ocs/mediaunit/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final API:Lcom/coloros/ocs/base/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final BIND_SERVICE_ACTION:Ljava/lang/String; = "com.coloros.opencapabilityservice"

.field private static final BIND_SERVICE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"

.field private static final BIND_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.ocs.opencapabilityservice"

.field private static final CLIENT_BUILDER:Lcom/coloros/ocs/base/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a$a<",
            "Lcom/coloros/ocs/mediaunit/b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/coloros/ocs/base/common/api/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/ocs/base/common/api/a$f<",
            "Lcom/coloros/ocs/mediaunit/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaUnitClientImpl"

.field private static sMediaUnitClient:Lcom/coloros/ocs/mediaunit/e;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;

.field private mService:Lcom/coloros/ocs/mediaunit/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/coloros/ocs/base/common/api/a$f;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/coloros/ocs/base/common/api/a$f;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/coloros/ocs/mediaunit/e;->CLIENT_KEY:Lcom/coloros/ocs/base/common/api/a$f;

    .line 8
    .line 9
    new-instance v1, Lcom/coloros/ocs/mediaunit/c;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/coloros/ocs/mediaunit/c;-><init>()V

    .line 13
    .line 14
    sput-object v1, Lcom/coloros/ocs/mediaunit/e;->CLIENT_BUILDER:Lcom/coloros/ocs/base/common/api/a$a;

    .line 15
    .line 16
    new-instance v2, Lcom/coloros/ocs/base/common/api/a;

    .line 17
    .line 18
    const-string v3, "MediaClient.API"

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3, v1, v0}, Lcom/coloros/ocs/base/common/api/a;-><init>(Ljava/lang/String;Lcom/coloros/ocs/base/common/api/a$a;Lcom/coloros/ocs/base/common/api/a$f;)V

    .line 22
    .line 23
    sput-object v2, Lcom/coloros/ocs/mediaunit/e;->API:Lcom/coloros/ocs/base/common/api/a;

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/mediaunit/e;->API:Lcom/coloros/ocs/base/common/api/a;

    .line 3
    .line 4
    new-instance v1, Lf1/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    new-instance v3, Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const/4 v4, 0x1

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2, v4, v3}, Lf1/a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 18
    const/4 v2, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/coloros/ocs/base/common/api/c;-><init>(Landroid/content/Context;Lcom/coloros/ocs/base/common/api/a;Lcom/coloros/ocs/base/common/api/a$c;Lf1/a;)V

    .line 22
    .line 23
    new-instance v0, Landroid/os/Binder;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 27
    .line 28
    iput-object v0, p0, Lcom/coloros/ocs/mediaunit/e;->mICallBack:Landroid/os/IBinder;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/e;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/coloros/ocs/mediaunit/e;->o()V

    .line 34
    return-void
.end method

.method static synthetic g(Lcom/coloros/ocs/mediaunit/e;)Lcom/coloros/ocs/mediaunit/a;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/e;->mService:Lcom/coloros/ocs/mediaunit/a;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/coloros/ocs/mediaunit/e;Lcom/coloros/ocs/mediaunit/a;)Lcom/coloros/ocs/mediaunit/a;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/coloros/ocs/mediaunit/e;->mService:Lcom/coloros/ocs/mediaunit/a;

    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/coloros/ocs/mediaunit/e;)Landroid/os/IBinder;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/e;->mICallBack:Landroid/os/IBinder;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/coloros/ocs/mediaunit/e;)Landroid/content/Context;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/coloros/ocs/mediaunit/e;->mContext:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/coloros/ocs/mediaunit/e;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/coloros/ocs/mediaunit/e;->l()V

    .line 4
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lcom/coloros/ocs/mediaunit/e$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/e$a;-><init>(Lcom/coloros/ocs/mediaunit/e;)V

    .line 6
    .line 7
    iput-object v0, p0, Lcom/coloros/ocs/mediaunit/e;->mConnection:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    const-string v1, "com.coloros.opencapabilityservice"

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    new-instance v1, Landroid/content/ComponentName;

    .line 17
    .line 18
    const-string v2, "com.coloros.ocs.opencapabilityservice.capability.karaoke.KaraokeService"

    .line 19
    .line 20
    const-string v3, "com.coloros.ocs.opencapabilityservice"

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/e;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/coloros/ocs/mediaunit/e;->mConnection:Landroid/content/ServiceConnection;

    .line 31
    const/4 v3, 0x1

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 35
    return-void
.end method

.method private static m(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/e;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    sput-object v0, Lcom/coloros/ocs/mediaunit/e;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/e;

    .line 8
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/coloros/ocs/mediaunit/e;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/e;->mConnection:Landroid/content/ServiceConnection;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8
    return-void
.end method

.method protected static declared-synchronized p(Landroid/content/Context;)Lcom/coloros/ocs/mediaunit/e;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-class v0, Lcom/coloros/ocs/mediaunit/e;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/coloros/ocs/mediaunit/e;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/coloros/ocs/mediaunit/e;->m(Landroid/content/Context;)V

    .line 13
    .line 14
    sget-object p0, Lcom/coloros/ocs/mediaunit/e;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit v0

    .line 16
    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public static q()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/coloros/ocs/mediaunit/e;->sMediaUnitClient:Lcom/coloros/ocs/mediaunit/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/coloros/ocs/mediaunit/e;->n()V

    .line 6
    return-void
.end method


# virtual methods
.method public f()I
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/coloros/ocs/mediaunit/e$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/e$d;-><init>(Lcom/coloros/ocs/mediaunit/e;)V

    .line 6
    .line 7
    new-instance v1, Lcom/coloros/ocs/mediaunit/e$e;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/coloros/ocs/mediaunit/e$e;-><init>(Lcom/coloros/ocs/mediaunit/e;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/base/common/api/c;->c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/g$b;Lcom/coloros/ocs/base/common/api/g$a;)Lg1/a;

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method protected o()V
    .locals 0

    .line 1
    return-void
.end method

.method public r()I
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "requestAudioLoopback "

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/coloros/ocs/mediaunit/e;->mICallBack:Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    const-string v1, "MediaUnitClientImpl"

    .line 23
    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    new-instance v0, Lcom/coloros/ocs/mediaunit/e$b;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/coloros/ocs/mediaunit/e$b;-><init>(Lcom/coloros/ocs/mediaunit/e;)V

    .line 31
    .line 32
    new-instance v1, Lcom/coloros/ocs/mediaunit/e$c;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/coloros/ocs/mediaunit/e$c;-><init>(Lcom/coloros/ocs/mediaunit/e;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v2, v0, v1}, Lcom/coloros/ocs/base/common/api/c;->c(Landroid/os/Looper;Lcom/coloros/ocs/base/common/api/g$b;Lcom/coloros/ocs/base/common/api/g$a;)Lg1/a;

    .line 43
    const/4 v0, 0x0

    .line 44
    return v0
.end method
