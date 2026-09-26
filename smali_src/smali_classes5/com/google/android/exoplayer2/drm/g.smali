.class Lcom/google/android/exoplayer2/drm/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/g$d;,
        Lcom/google/android/exoplayer2/drm/g$c;,
        Lcom/google/android/exoplayer2/drm/g$e;,
        Lcom/google/android/exoplayer2/drm/g$b;,
        Lcom/google/android/exoplayer2/drm/g$a;,
        Lcom/google/android/exoplayer2/drm/g$f;
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field final callback:Lcom/google/android/exoplayer2/drm/m0;

.field private cryptoConfig:Lcom/google/android/exoplayer2/decoder/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eventDispatchers:Lcom/google/android/exoplayer2/util/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/i<",
            "Lcom/google/android/exoplayer2/drm/v$a;",
            ">;"
        }
    .end annotation
.end field

.field private final isPlaceholderSession:Z

.field private final keyRequestParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastException:Lcom/google/android/exoplayer2/drm/n$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private final mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playerId:Lcom/google/android/exoplayer2/analytics/t1;

.field private final provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

.field private referenceCount:I

.field private final referenceCountListener:Lcom/google/android/exoplayer2/drm/g$b;

.field private requestHandler:Lcom/google/android/exoplayer2/drm/g$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final responseHandler:Lcom/google/android/exoplayer2/drm/g$e;

.field public final schemeDatas:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private state:I

.field final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/g$a;Lcom/google/android/exoplayer2/drm/g$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/m0;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 1
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/f0;",
            "Lcom/google/android/exoplayer2/drm/g$a;",
            "Lcom/google/android/exoplayer2/drm/g$b;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/m0;",
            "Landroid/os/Looper;",
            "Lcom/google/android/exoplayer2/upstream/f0;",
            "Lcom/google/android/exoplayer2/analytics/t1;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    if-eq p6, v0, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    .line 9
    if-ne p6, v0, :cond_1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p9}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->uuid:Ljava/util/UUID;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCountListener:Lcom/google/android/exoplayer2/drm/g$b;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 21
    .line 22
    iput p6, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 23
    .line 24
    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/g;->playClearSamplesWithoutKeys:Z

    .line 25
    .line 26
    iput-boolean p8, p0, Lcom/google/android/exoplayer2/drm/g;->isPlaceholderSession:Z

    .line 27
    .line 28
    if-eqz p9, :cond_2

    .line 29
    .line 30
    iput-object p9, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 31
    const/4 p1, 0x0

    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->schemeDatas:Ljava/util/List;

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->schemeDatas:Ljava/util/List;

    .line 47
    .line 48
    :goto_0
    iput-object p10, p0, Lcom/google/android/exoplayer2/drm/g;->keyRequestParameters:Ljava/util/HashMap;

    .line 49
    .line 50
    iput-object p11, p0, Lcom/google/android/exoplayer2/drm/g;->callback:Lcom/google/android/exoplayer2/drm/m0;

    .line 51
    .line 52
    new-instance p1, Lcom/google/android/exoplayer2/util/i;

    .line 53
    .line 54
    .line 55
    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/i;-><init>()V

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 58
    .line 59
    iput-object p13, p0, Lcom/google/android/exoplayer2/drm/g;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 60
    .line 61
    iput-object p14, p0, Lcom/google/android/exoplayer2/drm/g;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 62
    const/4 p1, 0x2

    .line 63
    .line 64
    iput p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 65
    .line 66
    new-instance p1, Lcom/google/android/exoplayer2/drm/g$e;

    .line 67
    .line 68
    .line 69
    invoke-direct {p1, p0, p12}, Lcom/google/android/exoplayer2/drm/g$e;-><init>(Lcom/google/android/exoplayer2/drm/g;Landroid/os/Looper;)V

    .line 70
    .line 71
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->responseHandler:Lcom/google/android/exoplayer2/drm/g$e;

    .line 72
    return-void
.end method

.method private A()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->p()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->openSession()[B

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/g;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/drm/f0;->g([BLcom/google/android/exoplayer2/analytics/t1;)V

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/f0;->c([B)Lcom/google/android/exoplayer2/decoder/b;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/b;

    .line 34
    const/4 v0, 0x3

    .line 35
    .line 36
    iput v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 37
    .line 38
    new-instance v2, Lcom/google/android/exoplayer2/drm/d;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/drm/d;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/g;->l(Lcom/google/android/exoplayer2/util/h;)V

    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/drm/g;->s(Ljava/lang/Exception;I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :catch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/drm/g$a;->b(Lcom/google/android/exoplayer2/drm/g;)V

    .line 61
    :goto_0
    const/4 v0, 0x0

    .line 62
    return v0
.end method

.method private B([BIZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/g;->schemeDatas:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/g;->keyRequestParameters:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p1, v2, p2, v3}, Lcom/google/android/exoplayer2/drm/f0;->e([BLjava/util/List;ILjava/util/HashMap;)Lcom/google/android/exoplayer2/drm/f0$b;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandler:Lcom/google/android/exoplayer2/drm/g$c;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Lcom/google/android/exoplayer2/drm/g$c;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/g;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/exoplayer2/drm/g$c;->b(ILjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/drm/g;->u(Ljava/lang/Exception;Z)V

    .line 36
    :goto_0
    return-void
.end method

.method private D()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/drm/f0;->restoreKeys([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/drm/g;->s(Ljava/lang/Exception;I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public static synthetic g(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/g;->q(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/v$a;)V

    return-void
.end method

.method public static synthetic h(ILcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/drm/g;->r(ILcom/google/android/exoplayer2/drm/v$a;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/drm/g;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->z(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/drm/g;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->t(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/drm/g;)Lcom/google/android/exoplayer2/upstream/f0;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/g;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 3
    return-object p0
.end method

.method private l(Lcom/google/android/exoplayer2/util/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/h<",
            "Lcom/google/android/exoplayer2/drm/v$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/i;->o()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/exoplayer2/drm/v$a;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/util/h;->accept(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private m(Z)V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/g;->isPlaceholderSession:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    if-eq v1, v3, :cond_2

    .line 24
    const/4 v0, 0x3

    .line 25
    .line 26
    if-eq v1, v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/exoplayer2/drm/g;->B([BIZ)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->D()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_9

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/g;->B([BIZ)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 61
    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/drm/g;->B([BIZ)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 69
    const/4 v2, 0x4

    .line 70
    .line 71
    if-eq v1, v2, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->D()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_9

    .line 78
    .line 79
    .line 80
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->n()J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    iget v1, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 84
    .line 85
    if-nez v1, :cond_7

    .line 86
    .line 87
    const-wide/16 v6, 0x3c

    .line 88
    .line 89
    cmp-long v1, v4, v6

    .line 90
    .line 91
    if-gtz v1, :cond_7

    .line 92
    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v2, "Offline license has expired or will expire soon. Remaining seconds: "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    .line 110
    const-string v2, "DefaultDrmSession"

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0, v3, p1}, Lcom/google/android/exoplayer2/drm/g;->B([BIZ)V

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_7
    const-wide/16 v0, 0x0

    .line 120
    .line 121
    cmp-long p1, v4, v0

    .line 122
    .line 123
    if-gtz p1, :cond_8

    .line 124
    .line 125
    new-instance p1, Lcom/google/android/exoplayer2/drm/l0;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/l0;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/drm/g;->s(Ljava/lang/Exception;I)V

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_8
    iput v2, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 135
    .line 136
    new-instance p1, Lcom/google/android/exoplayer2/drm/f;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/f;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/g;->l(Lcom/google/android/exoplayer2/util/h;)V

    .line 143
    :cond_9
    :goto_0
    return-void
.end method

.method private n()J
    .locals 5

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/i;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->uuid:Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v0, 0x7fffffffffffffffL

    .line 16
    return-wide v0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/p0;->b(Lcom/google/android/exoplayer2/drm/n;)Landroid/util/Pair;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroid/util/Pair;

    .line 27
    .line 28
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 46
    move-result-wide v0

    .line 47
    return-wide v0
.end method

.method private p()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static synthetic q(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/v$a;->l(Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method private static synthetic r(ILcom/google/android/exoplayer2/drm/v$a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/drm/v$a;->k(I)V

    .line 4
    return-void
.end method

.method private s(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/drm/n$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/drm/b0;->a(Ljava/lang/Exception;I)I

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/n$a;-><init>(Ljava/lang/Throwable;I)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->lastException:Lcom/google/android/exoplayer2/drm/n$a;

    .line 12
    .line 13
    const-string p2, "DefaultDrmSession"

    .line 14
    .line 15
    const-string v0, "DRM session error"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    new-instance p2, Lcom/google/android/exoplayer2/drm/e;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/drm/e;-><init>(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/drm/g;->l(Lcom/google/android/exoplayer2/util/h;)V

    .line 27
    .line 28
    iget p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 29
    const/4 p2, 0x4

    .line 30
    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 35
    :cond_0
    return-void
.end method

.method private t(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;

    .line 3
    .line 4
    if-ne p1, v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->p()Z

    .line 8
    move-result p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;

    .line 15
    .line 16
    instance-of p1, p2, Ljava/lang/Exception;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    check-cast p2, Ljava/lang/Exception;

    .line 21
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/drm/g;->u(Ljava/lang/Exception;Z)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 28
    .line 29
    iget p1, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, [B

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/f0;->provideKeyResponse([B[B)[B

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/exoplayer2/drm/b;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/b;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/g;->l(Lcom/google/android/exoplayer2/util/h;)V

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto :goto_0

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/drm/f0;->provideKeyResponse([B[B)[B

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget p2, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 67
    const/4 v0, 0x2

    .line 68
    .line 69
    if-eq p2, v0, :cond_3

    .line 70
    .line 71
    if-nez p2, :cond_4

    .line 72
    .line 73
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 74
    .line 75
    if-eqz p2, :cond_4

    .line 76
    .line 77
    :cond_3
    if-eqz p1, :cond_4

    .line 78
    array-length p2, p1

    .line 79
    .line 80
    if-eqz p2, :cond_4

    .line 81
    .line 82
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->offlineLicenseKeySetId:[B

    .line 83
    :cond_4
    const/4 p1, 0x4

    .line 84
    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 86
    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/drm/c;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/c;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/g;->l(Lcom/google/android/exoplayer2/util/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 95
    :goto_0
    const/4 p2, 0x1

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->u(Ljava/lang/Exception;Z)V

    .line 99
    :cond_5
    :goto_1
    return-void
.end method

.method private u(Ljava/lang/Exception;Z)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/drm/g$a;->b(Lcom/google/android/exoplayer2/drm/g;)V

    .line 10
    goto :goto_1

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_1

    .line 13
    const/4 p2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p2, 0x2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->s(Ljava/lang/Exception;I)V

    .line 19
    :goto_1
    return-void
.end method

.method private v()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->mode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/g;->m(Z)V

    .line 19
    :cond_0
    return-void
.end method

.method private z(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;

    .line 3
    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->p()Z

    .line 13
    move-result p1

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;

    .line 20
    .line 21
    instance-of p1, p2, Ljava/lang/Exception;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 26
    .line 27
    check-cast p2, Ljava/lang/Exception;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/drm/g$a;->a(Ljava/lang/Exception;Z)V

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 35
    .line 36
    check-cast p2, [B

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/f0;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/g$a;->onProvisionCompleted()V

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    .line 48
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/g;->provisioningManager:Lcom/google/android/exoplayer2/drm/g$a;

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/drm/g$a;->a(Ljava/lang/Exception;Z)V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public C()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->getProvisionRequest()Lcom/google/android/exoplayer2/drm/f0$e;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandler:Lcom/google/android/exoplayer2/drm/g$c;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/exoplayer2/drm/g$c;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/drm/g$c;->b(ILjava/lang/Object;Z)V

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/drm/g;->playClearSamplesWithoutKeys:Z

    return v0
.end method

.method public final b()Lcom/google/android/exoplayer2/decoder/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/b;

    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, [B

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/f0;->d([BLjava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public e(Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    const-string p1, "DefaultDrmSession"

    .line 7
    .line 8
    const-string v0, "release() called on a session that\'s already fully released."

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->responseHandler:Lcom/google/android/exoplayer2/drm/g$e;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/exoplayer2/drm/g$e;

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandler:Lcom/google/android/exoplayer2/drm/g$c;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    check-cast v0, Lcom/google/android/exoplayer2/drm/g$c;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/drm/g$c;->c()V

    .line 45
    .line 46
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandler:Lcom/google/android/exoplayer2/drm/g$c;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroid/os/HandlerThread;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 58
    .line 59
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->cryptoConfig:Lcom/google/android/exoplayer2/decoder/b;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->lastException:Lcom/google/android/exoplayer2/drm/n$a;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->currentKeyRequest:Lcom/google/android/exoplayer2/drm/f0$b;

    .line 66
    .line 67
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->currentProvisionRequest:Lcom/google/android/exoplayer2/drm/f0$e;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 70
    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 74
    .line 75
    .line 76
    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/drm/f0;->closeSession([B)V

    .line 77
    .line 78
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 79
    .line 80
    :cond_1
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->c(Ljava/lang/Object;)V

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/Object;)I

    .line 91
    move-result v0

    .line 92
    .line 93
    if-nez v0, :cond_2

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->m()V

    .line 97
    .line 98
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCountListener:Lcom/google/android/exoplayer2/drm/g$b;

    .line 99
    .line 100
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/g$b;->a(Lcom/google/android/exoplayer2/drm/g;I)V

    .line 104
    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 3
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    const-string v2, "Session reference count less than zero: "

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    const-string v2, "DefaultDrmSession"

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    iput v1, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 32
    .line 33
    :cond_0
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->a(Ljava/lang/Object;)V

    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 41
    const/4 v2, 0x1

    .line 42
    add-int/2addr v0, v2

    .line 43
    .line 44
    iput v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 45
    .line 46
    if-ne v0, v2, :cond_3

    .line 47
    .line 48
    iget p1, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 49
    const/4 v0, 0x2

    .line 50
    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    move v1, v2

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 56
    .line 57
    new-instance p1, Landroid/os/HandlerThread;

    .line 58
    .line 59
    const-string v0, "ExoPlayer:DrmRequestHandler"

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 68
    .line 69
    new-instance p1, Lcom/google/android/exoplayer2/drm/g$c;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/g$c;-><init>(Lcom/google/android/exoplayer2/drm/g;Landroid/os/Looper;)V

    .line 79
    .line 80
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->requestHandler:Lcom/google/android/exoplayer2/drm/g$c;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->A()Z

    .line 84
    move-result p1

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/drm/g;->m(Z)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_3
    if-eqz p1, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->p()Z

    .line 96
    move-result v0

    .line 97
    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->eventDispatchers:Lcom/google/android/exoplayer2/util/i;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/i;->b(Ljava/lang/Object;)I

    .line 104
    move-result v0

    .line 105
    .line 106
    if-ne v0, v2, :cond_4

    .line 107
    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/drm/v$a;->k(I)V

    .line 112
    .line 113
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCountListener:Lcom/google/android/exoplayer2/drm/g$b;

    .line 114
    .line 115
    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->referenceCount:I

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/drm/g$b;->b(Lcom/google/android/exoplayer2/drm/g;I)V

    .line 119
    return-void
.end method

.method public final getError()Lcom/google/android/exoplayer2/drm/n$a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->lastException:Lcom/google/android/exoplayer2/drm/n$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/drm/g;->state:I

    return v0
.end method

.method public o([B)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/g;->sessionId:[B

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/g;->mediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/drm/f0;->queryKeyStatus([B)Ljava/util/Map;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public w(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->v()V

    .line 8
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/g;->A()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/drm/g;->m(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method public y(Ljava/lang/Exception;Z)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    const/4 p2, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p2, 0x3

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/g;->s(Ljava/lang/Exception;I)V

    .line 9
    return-void
.end method
