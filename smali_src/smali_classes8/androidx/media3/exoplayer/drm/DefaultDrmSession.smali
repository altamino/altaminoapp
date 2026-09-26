.class Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;,
        Landroidx/media3/exoplayer/drm/DefaultDrmSession$UnexpectedDrmSessionException;
    }
.end annotation


# static fields
.field private static final MAX_LICENSE_DURATION_TO_RENEW_SECONDS:I = 0x3c

.field private static final MSG_KEYS:I = 0x1

.field private static final MSG_PROVISION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSession"


# instance fields
.field private final callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

.field private cryptoConfig:Landroidx/media3/decoder/CryptoConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/CopyOnWriteMultiset<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
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

.field private lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

.field private final mode:I

.field private offlineLicenseKeySetId:[B

.field private final playClearSamplesWithoutKeys:Z

.field private final playbackLooper:Landroid/os/Looper;

.field private final playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private final provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

.field private referenceCount:I

.field private final referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

.field private requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private requestHandlerThread:Landroid/os/HandlerThread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

.field public final schemeDatas:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private state:I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/ExoMediaDrm;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;Ljava/util/List;IZZ[BLjava/util/HashMap;Landroidx/media3/exoplayer/drm/MediaDrmCallback;Landroid/os/Looper;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/analytics/PlayerId;)V
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
            "Landroidx/media3/exoplayer/drm/ExoMediaDrm;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;",
            "Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;",
            "Ljava/util/List<",
            "Landroidx/media3/common/DrmInitData$SchemeData;",
            ">;IZZ[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/media3/exoplayer/drm/MediaDrmCallback;",
            "Landroid/os/Looper;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    const/4 v0, 0x3

    if-ne p6, v0, :cond_1

    .line 2
    :cond_0
    invoke-static {p9}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    iput-object p4, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    iput p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    if-eqz p9, :cond_2

    iput-object p9, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    :goto_0
    iput-object p10, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    iput-object p11, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    .line 4
    new-instance p1, Landroidx/media3/common/util/CopyOnWriteMultiset;

    invoke-direct {p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    iput-object p13, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p14, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    iput-object p12, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    invoke-direct {p1, p0, p12}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    return-void
.end method

.method private C(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 3
    .line 4
    if-ne p1, v0, :cond_2

    .line 5
    .line 6
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 7
    const/4 v0, 0x2

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

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
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 20
    .line 21
    instance-of p1, p2, Ljava/lang/Exception;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 26
    .line 27
    check-cast p2, Ljava/lang/Exception;

    .line 28
    const/4 v0, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;Z)V

    .line 32
    return-void

    .line 33
    .line 34
    :cond_1
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 35
    .line 36
    check-cast p2, [B

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->onProvisionCompleted()V

    .line 45
    return-void

    .line 46
    :catch_0
    move-exception p1

    .line 47
    .line 48
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 49
    const/4 v0, 0x1

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->a(Ljava/lang/Exception;Z)V

    .line 53
    :cond_2
    :goto_0
    return-void
.end method

.method private D()Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

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
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->openSession()[B

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v0, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->f([BLandroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->c([B)Landroidx/media3/decoder/CryptoConfig;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 34
    const/4 v0, 0x3

    .line 35
    .line 36
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 37
    .line 38
    new-instance v2, Landroidx/media3/exoplayer/drm/b;

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/drm/b;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/Consumer;)V

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Exception;I)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :catch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

    .line 61
    :goto_0
    const/4 v0, 0x0

    .line 62
    return v0
.end method

.method private E([BIZ)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->schemeDatas:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->keyRequestParameters:Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, p1, v2, p2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->e([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->b(ILjava/lang/Object;Z)V
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
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Exception;Z)V

    .line 36
    :goto_0
    return-void
.end method

.method private G()Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->restoreKeys([B[B)V
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
    invoke-direct {p0, v1, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Exception;I)V

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method private H()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v1, "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "\nExpected thread: "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playbackLooper:Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 61
    .line 62
    const-string v2, "DefaultDrmSession"

    .line 63
    .line 64
    .line 65
    invoke-static {v2, v0, v1}, Landroidx/media3/common/util/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static synthetic g(Ljava/lang/Exception;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->t(Ljava/lang/Exception;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method

.method public static synthetic h(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->u(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method

.method static synthetic i(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->C(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic j(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method static synthetic k(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Ljava/util/UUID;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 3
    return-object p0
.end method

.method static synthetic l(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/MediaDrmCallback;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->callback:Landroidx/media3/exoplayer/drm/MediaDrmCallback;

    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 3
    return-object p0
.end method

.method static synthetic n(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    .line 3
    return-object p0
.end method

.method private o(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/CopyOnWriteMultiset;->o()Ljava/util/Set;

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
    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private p(Z)V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->isPlaceholderSession:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, [B

    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

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
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v1, v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->G()Z

    .line 52
    move-result v1

    .line 53
    .line 54
    if-eqz v1, :cond_9

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-direct {p0, v0, v3, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 61
    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

    .line 66
    goto :goto_0

    .line 67
    .line 68
    :cond_5
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 69
    const/4 v2, 0x4

    .line 70
    .line 71
    if-eq v1, v2, :cond_6

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->G()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_9

    .line 78
    .line 79
    .line 80
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->q()J

    .line 81
    move-result-wide v4

    .line 82
    .line 83
    iget v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

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
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0, v0, v3, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->E([BIZ)V

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
    new-instance p1, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/KeysExpiredException;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Exception;I)V

    .line 132
    goto :goto_0

    .line 133
    .line 134
    :cond_8
    iput v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 135
    .line 136
    new-instance p1, Landroidx/media3/exoplayer/drm/c;

    .line 137
    .line 138
    .line 139
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/c;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/Consumer;)V

    .line 143
    :cond_9
    :goto_0
    return-void
.end method

.method private q()J
    .locals 5

    .line 1
    .line 2
    sget-object v0, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

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
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/WidevineUtil;->b(Landroidx/media3/exoplayer/drm/DrmSession;)Landroid/util/Pair;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private s()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

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

.method private static synthetic t(Ljava/lang/Exception;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->l(Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method private static synthetic u(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->k(I)V

    .line 4
    return-void
.end method

.method private v(Ljava/lang/Exception;I)V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/drm/DrmUtil;->a(Ljava/lang/Exception;I)I

    .line 6
    move-result p2

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 12
    .line 13
    const-string p2, "DefaultDrmSession"

    .line 14
    .line 15
    const-string v0, "DRM session error"

    .line 16
    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    new-instance p2, Landroidx/media3/exoplayer/drm/a;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/drm/a;-><init>(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/Consumer;)V

    .line 27
    .line 28
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 29
    const/4 p2, 0x4

    .line 30
    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 35
    :cond_0
    return-void
.end method

.method private w(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 3
    .line 4
    if-ne p1, v0, :cond_5

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

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
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

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
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Exception;Z)V

    .line 25
    return-void

    .line 26
    .line 27
    :cond_1
    :try_start_0
    check-cast p2, [B

    .line 28
    .line 29
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    .line 30
    const/4 v0, 0x3

    .line 31
    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    .line 42
    check-cast v0, [B

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0, p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 46
    .line 47
    new-instance p1, Landroidx/media3/exoplayer/drm/d;

    .line 48
    .line 49
    .line 50
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/d;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/Consumer;)V

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
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v0, p2}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->provideKeyResponse([B[B)[B

    .line 64
    move-result-object p1

    .line 65
    .line 66
    iget p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

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
    iget-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

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
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->offlineLicenseKeySetId:[B

    .line 83
    :cond_4
    const/4 p1, 0x4

    .line 84
    .line 85
    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 86
    .line 87
    new-instance p1, Landroidx/media3/exoplayer/drm/e;

    .line 88
    .line 89
    .line 90
    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/e;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->o(Landroidx/media3/common/util/Consumer;)V
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
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->x(Ljava/lang/Exception;Z)V

    .line 99
    :cond_5
    :goto_1
    return-void
.end method

.method private x(Ljava/lang/Exception;Z)V
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->provisioningManager:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ProvisioningManager;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V

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
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Exception;I)V

    .line 19
    :goto_1
    return-void
.end method

.method private y()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mode:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 7
    const/4 v1, 0x4

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 19
    :cond_0
    return-void
.end method


# virtual methods
.method A()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->D()Z

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
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 11
    :cond_0
    return-void
.end method

.method B(Ljava/lang/Exception;Z)V
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
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->v(Ljava/lang/Exception;I)V

    .line 9
    return-void
.end method

.method F()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->getProvisionRequest()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 19
    .line 20
    .line 21
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->b(ILjava/lang/Object;Z)V

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->playClearSamplesWithoutKeys:Z

    .line 6
    return v0
.end method

.method public final b()Landroidx/media3/decoder/CryptoConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 6
    return-object v0
.end method

.method public final c()Ljava/util/UUID;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    .line 6
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, [B

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1, p1}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->d([BLjava/lang/String;)Z

    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public e(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 3
    .param p1    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const-string p1, "DefaultDrmSession"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "release() called on a session that\'s already fully released."

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    .line 18
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    const/4 v0, 0x0

    .line 24
    .line 25
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->responseHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;

    .line 34
    const/4 v1, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    check-cast v0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;->c()V

    .line 49
    .line 50
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    check-cast v0, Landroid/os/HandlerThread;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 62
    .line 63
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 64
    .line 65
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->cryptoConfig:Landroidx/media3/decoder/CryptoConfig;

    .line 66
    .line 67
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 68
    .line 69
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentKeyRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;

    .line 70
    .line 71
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->currentProvisionRequest:Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;

    .line 72
    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 78
    .line 79
    .line 80
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->closeSession([B)V

    .line 81
    .line 82
    iput-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 83
    .line 84
    :cond_1
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->c(Ljava/lang/Object;)V

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->b(Ljava/lang/Object;)I

    .line 95
    move-result v0

    .line 96
    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->m()V

    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    .line 103
    .line 104
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 108
    return-void
.end method

.method public f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 3
    .param p1    # Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    const-string v2, "Session reference count less than zero: "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    iget v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    const-string v2, "DefaultDrmSession"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    iput v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 35
    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->a(Ljava/lang/Object;)V

    .line 42
    .line 43
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 44
    const/4 v2, 0x1

    .line 45
    add-int/2addr v0, v2

    .line 46
    .line 47
    iput v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 48
    .line 49
    if-ne v0, v2, :cond_3

    .line 50
    .line 51
    iget p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 52
    const/4 v0, 0x2

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    move v1, v2

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 59
    .line 60
    new-instance p1, Landroid/os/HandlerThread;

    .line 61
    .line 62
    const-string v0, "ExoPlayer:DrmRequestHandler"

    .line 63
    .line 64
    .line 65
    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 71
    .line 72
    new-instance p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandlerThread:Landroid/os/HandlerThread;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-direct {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V

    .line 82
    .line 83
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->requestHandler:Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestHandler;

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->D()Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->p(Z)V

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_3
    if-eqz p1, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->s()Z

    .line 99
    move-result v0

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->eventDispatchers:Landroidx/media3/common/util/CopyOnWriteMultiset;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/CopyOnWriteMultiset;->b(Ljava/lang/Object;)I

    .line 107
    move-result v0

    .line 108
    .line 109
    if-ne v0, v2, :cond_4

    .line 110
    .line 111
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->k(I)V

    .line 115
    .line 116
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCountListener:Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;

    .line 117
    .line 118
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->referenceCount:I

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, p0, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ReferenceCountListener;->a(Landroidx/media3/exoplayer/drm/DefaultDrmSession;I)V

    .line 122
    return-void
.end method

.method public final getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 6
    const/4 v1, 0x1

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lastException:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->state:I

    .line 6
    return v0
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
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->mediaDrm:Landroidx/media3/exoplayer/drm/ExoMediaDrm;

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/drm/ExoMediaDrm;->queryKeyStatus([B)Ljava/util/Map;

    .line 15
    move-result-object v0

    .line 16
    :goto_0
    return-object v0
.end method

.method public r([B)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->H()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->sessionId:[B

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method z(I)V
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
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->y()V

    .line 8
    :goto_0
    return-void
.end method
