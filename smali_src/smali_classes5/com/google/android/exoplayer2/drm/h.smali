.class public Lcom/google/android/exoplayer2/drm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/x;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/h$f;,
        Lcom/google/android/exoplayer2/drm/h$c;,
        Lcom/google/android/exoplayer2/drm/h$h;,
        Lcom/google/android/exoplayer2/drm/h$g;,
        Lcom/google/android/exoplayer2/drm/h$d;,
        Lcom/google/android/exoplayer2/drm/h$e;,
        Lcom/google/android/exoplayer2/drm/h$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_KEEPALIVE_MS:J = 0x493e0L

.field public static final INITIAL_DRM_REQUEST_RETRY_COUNT:I = 0x3

.field public static final MODE_DOWNLOAD:I = 0x2

.field public static final MODE_PLAYBACK:I = 0x0

.field public static final MODE_QUERY:I = 0x1

.field public static final MODE_RELEASE:I = 0x3

.field public static final PLAYREADY_CUSTOM_DATA_KEY:Ljava/lang/String; = "PRCustomData"

.field private static final TAG:Ljava/lang/String; = "DefaultDrmSessionMgr"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/drm/m0;

.field private exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

.field private final keepaliveSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/g;",
            ">;"
        }
    .end annotation
.end field

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

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field volatile mediaDrmHandler:Lcom/google/android/exoplayer2/drm/h$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mode:I

.field private final multiSession:Z

.field private noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private offlineLicenseKeySetId:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final playClearSamplesWithoutKeys:Z

.field private playbackHandler:Landroid/os/Handler;

.field private playbackLooper:Landroid/os/Looper;

.field private playerId:Lcom/google/android/exoplayer2/analytics/t1;

.field private final preacquiredSessionReferences:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/drm/h$f;",
            ">;"
        }
    .end annotation
.end field

.field private prepareCallsCount:I

.field private final provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/h$g;

.field private final referenceCountListener:Lcom/google/android/exoplayer2/drm/h$h;

.field private final sessionKeepaliveMs:J

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/g;",
            ">;"
        }
    .end annotation
.end field

.field private final useDrmSessionsForClearContentTrackTypes:[I

.field private final uuid:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/f0$d;",
            "Lcom/google/android/exoplayer2/drm/m0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lcom/google/android/exoplayer2/upstream/f0;",
            "J)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/google/android/exoplayer2/i;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/h;->callback:Lcom/google/android/exoplayer2/drm/m0;

    iput-object p4, p0, Lcom/google/android/exoplayer2/drm/h;->keyRequestParameters:Ljava/util/HashMap;

    iput-boolean p5, p0, Lcom/google/android/exoplayer2/drm/h;->multiSession:Z

    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/h;->useDrmSessionsForClearContentTrackTypes:[I

    iput-boolean p7, p0, Lcom/google/android/exoplayer2/drm/h;->playClearSamplesWithoutKeys:Z

    iput-object p8, p0, Lcom/google/android/exoplayer2/drm/h;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 12
    new-instance p1, Lcom/google/android/exoplayer2/drm/h$g;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/drm/h$g;-><init>(Lcom/google/android/exoplayer2/drm/h;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/h$g;

    .line 13
    new-instance p1, Lcom/google/android/exoplayer2/drm/h$h;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/drm/h$h;-><init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/h$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->referenceCountListener:Lcom/google/android/exoplayer2/drm/h$h;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/drm/h;->mode:I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 15
    invoke-static {}, Lcom/google/common/collect/f1;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->preacquiredSessionReferences:Ljava/util/Set;

    .line 16
    invoke-static {}, Lcom/google/common/collect/f1;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->keepaliveSessions:Ljava/util/Set;

    iput-wide p9, p0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;JLcom/google/android/exoplayer2/drm/h$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/drm/h;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;)V
    .locals 7
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/f0;",
            "Lcom/google/android/exoplayer2/drm/m0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/h;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z)V
    .locals 7
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/f0;",
            "Lcom/google/android/exoplayer2/drm/m0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v4, p4

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/drm/h;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;ZI)V
    .locals 11
    .param p4    # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/android/exoplayer2/drm/f0;",
            "Lcom/google/android/exoplayer2/drm/m0;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    new-instance v2, Lcom/google/android/exoplayer2/drm/f0$a;

    move-object v0, p2

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/drm/f0$a;-><init>(Lcom/google/android/exoplayer2/drm/f0;)V

    if-nez p4, :cond_0

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    const/4 v0, 0x0

    new-array v6, v0, [I

    const/4 v7, 0x0

    new-instance v8, Lcom/google/android/exoplayer2/upstream/w;

    move/from16 v0, p6

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/upstream/w;-><init>(I)V

    const-wide/32 v9, 0x493e0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move/from16 v5, p5

    .line 8
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/drm/h;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;Lcom/google/android/exoplayer2/drm/m0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;J)V

    return-void
.end method

.method private A(Landroid/os/Looper;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/h$d;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/drm/h$d;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/h$d;-><init>(Lcom/google/android/exoplayer2/drm/h;Landroid/os/Looper;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->mediaDrmHandler:Lcom/google/android/exoplayer2/drm/h$d;

    .line 12
    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->preacquiredSessionReferences:Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/exoplayer2/drm/f0;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->release()V

    .line 36
    const/4 v0, 0x0

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 39
    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->keepaliveSessions:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/d0;->t(Ljava/util/Collection;)Lcom/google/common/collect/d0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/common/collect/d0;->m()Lcom/google/common/collect/l1;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/n;

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->preacquiredSessionReferences:Ljava/util/Set;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/collect/d0;->t(Ljava/util/Collection;)Lcom/google/common/collect/d0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/common/collect/d0;->m()Lcom/google/common/collect/l1;

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
    check-cast v1, Lcom/google/android/exoplayer2/drm/h$f;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/drm/h$f;->release()V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private F(Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/v$a;)V
    .locals 4
    .param p2    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    cmp-long p2, v0, v2

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    const/4 p2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/drm/n;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 19
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/drm/h;)Lcom/google/android/exoplayer2/drm/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g;)Lcom/google/android/exoplayer2/drm/g;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 3
    return-object p1
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/drm/h;)Lcom/google/android/exoplayer2/drm/h$g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/h$g;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/drm/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->B()V

    .line 4
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/drm/h;)Ljava/util/Set;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->preacquiredSessionReferences:Ljava/util/Set;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/drm/h;)Landroid/os/Looper;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/drm/h;Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;Z)Lcom/google/android/exoplayer2/drm/n;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/drm/h;->s(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;Z)Lcom/google/android/exoplayer2/drm/n;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/drm/h;)Ljava/util/List;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/drm/h;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/drm/h;)Ljava/util/Set;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->keepaliveSessions:Ljava/util/Set;

    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/drm/h;)Landroid/os/Handler;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackHandler:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/drm/h;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 3
    return p0
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/drm/h;)Lcom/google/android/exoplayer2/drm/g;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/h;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/g;)Lcom/google/android/exoplayer2/drm/g;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 3
    return-object p1
.end method

.method private s(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;Z)Lcom/google/android/exoplayer2/drm/n;
    .locals 4
    .param p2    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/h;->A(Landroid/os/Looper;)V

    .line 4
    .line 5
    iget-object p1, p3, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p3, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1, p4}, Lcom/google/android/exoplayer2/drm/h;->z(IZ)Lcom/google/android/exoplayer2/drm/n;

    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    .line 20
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/h;->offlineLicenseKeySetId:[B

    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    if-nez p3, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 31
    .line 32
    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p3, v0}, Lcom/google/android/exoplayer2/drm/h;->x(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p3

    .line 41
    .line 42
    if-eqz p3, :cond_3

    .line 43
    .line 44
    new-instance p1, Lcom/google/android/exoplayer2/drm/h$e;

    .line 45
    .line 46
    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 47
    .line 48
    .line 49
    invoke-direct {p1, p3, v1}, Lcom/google/android/exoplayer2/drm/h$e;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/h$a;)V

    .line 50
    .line 51
    const-string p3, "DefaultDrmSessionMgr"

    .line 52
    .line 53
    const-string p4, "DRM error"

    .line 54
    .line 55
    .line 56
    invoke-static {p3, p4, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/drm/v$a;->l(Ljava/lang/Exception;)V

    .line 62
    .line 63
    :cond_1
    new-instance p2, Lcom/google/android/exoplayer2/drm/d0;

    .line 64
    .line 65
    new-instance p3, Lcom/google/android/exoplayer2/drm/n$a;

    .line 66
    .line 67
    const/16 p4, 0x1773

    .line 68
    .line 69
    .line 70
    invoke-direct {p3, p1, p4}, Lcom/google/android/exoplayer2/drm/n$a;-><init>(Ljava/lang/Throwable;I)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p3}, Lcom/google/android/exoplayer2/drm/d0;-><init>(Lcom/google/android/exoplayer2/drm/n$a;)V

    .line 74
    return-object p2

    .line 75
    :cond_2
    move-object p1, v1

    .line 76
    .line 77
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/drm/h;->multiSession:Z

    .line 78
    .line 79
    if-nez p3, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_4
    iget-object p3, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 85
    .line 86
    .line 87
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object p3

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v2

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    .line 97
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    check-cast v2, Lcom/google/android/exoplayer2/drm/g;

    .line 101
    .line 102
    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/g;->schemeDatas:Ljava/util/List;

    .line 103
    .line 104
    .line 105
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    move-result v3

    .line 107
    .line 108
    if-eqz v3, :cond_5

    .line 109
    move-object v1, v2

    .line 110
    .line 111
    :cond_6
    :goto_0
    if-nez v1, :cond_8

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1, v0, p2, p4}, Lcom/google/android/exoplayer2/drm/h;->w(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;Z)Lcom/google/android/exoplayer2/drm/g;

    .line 115
    move-result-object v1

    .line 116
    .line 117
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/drm/h;->multiSession:Z

    .line 118
    .line 119
    if-nez p1, :cond_7

    .line 120
    .line 121
    iput-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->noMultiSessionDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 122
    .line 123
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    goto :goto_1

    .line 128
    .line 129
    .line 130
    :cond_8
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/drm/g;->f(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 131
    :goto_1
    return-object v1
.end method

.method private static t(Lcom/google/android/exoplayer2/drm/n;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/n;->getState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x13

    .line 12
    .line 13
    if-lt v0, v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/n;->getError()Lcom/google/android/exoplayer2/drm/n$a;

    .line 17
    move-result-object p0

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    .line 23
    check-cast p0, Lcom/google/android/exoplayer2/drm/n$a;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    instance-of p0, p0, Landroid/media/ResourceBusyException;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :cond_1
    :goto_0
    return v1
.end method

.method private u(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->offlineLicenseKeySetId:[B

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/h;->x(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/drm/DrmInitData;->e(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sget-object v3, Lcom/google/android/exoplayer2/i;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c(Ljava/util/UUID;)Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    const-string v3, "DefaultDrmSessionMgr"

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return v2

    .line 62
    .line 63
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz p1, :cond_8

    .line 66
    .line 67
    const-string v0, "cenc"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v0

    .line 72
    .line 73
    if-eqz v0, :cond_3

    .line 74
    goto :goto_3

    .line 75
    .line 76
    :cond_3
    const-string v0, "cbcs"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    sget p1, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 85
    .line 86
    const/16 v0, 0x19

    .line 87
    .line 88
    if-lt p1, v0, :cond_4

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move v1, v2

    .line 91
    :goto_1
    return v1

    .line 92
    .line 93
    :cond_5
    const-string v0, "cbc1"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    const-string v0, "cens"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    return v1

    .line 110
    :cond_7
    :goto_2
    return v2

    .line 111
    :cond_8
    :goto_3
    return v1
.end method

.method private v(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/drm/g;
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplayer2/drm/v$a;",
            ")",
            "Lcom/google/android/exoplayer2/drm/g;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 5
    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/drm/h;->playClearSamplesWithoutKeys:Z

    .line 10
    .line 11
    or-int v9, v1, p2

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/exoplayer2/drm/g;

    .line 14
    .line 15
    iget-object v3, v0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 16
    .line 17
    iget-object v4, v0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 18
    .line 19
    iget-object v5, v0, Lcom/google/android/exoplayer2/drm/h;->provisioningManagerImpl:Lcom/google/android/exoplayer2/drm/h$g;

    .line 20
    .line 21
    iget-object v6, v0, Lcom/google/android/exoplayer2/drm/h;->referenceCountListener:Lcom/google/android/exoplayer2/drm/h$h;

    .line 22
    .line 23
    iget v8, v0, Lcom/google/android/exoplayer2/drm/h;->mode:I

    .line 24
    .line 25
    iget-object v11, v0, Lcom/google/android/exoplayer2/drm/h;->offlineLicenseKeySetId:[B

    .line 26
    .line 27
    iget-object v12, v0, Lcom/google/android/exoplayer2/drm/h;->keyRequestParameters:Ljava/util/HashMap;

    .line 28
    .line 29
    iget-object v13, v0, Lcom/google/android/exoplayer2/drm/h;->callback:Lcom/google/android/exoplayer2/drm/m0;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    move-object v14, v2

    .line 37
    .line 38
    check-cast v14, Landroid/os/Looper;

    .line 39
    .line 40
    iget-object v15, v0, Lcom/google/android/exoplayer2/drm/h;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/h;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    move-object/from16 v16, v2

    .line 49
    .line 50
    check-cast v16, Lcom/google/android/exoplayer2/analytics/t1;

    .line 51
    move-object v2, v1

    .line 52
    .line 53
    move-object/from16 v7, p1

    .line 54
    .line 55
    move/from16 v10, p2

    .line 56
    .line 57
    .line 58
    invoke-direct/range {v2 .. v16}, Lcom/google/android/exoplayer2/drm/g;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0;Lcom/google/android/exoplayer2/drm/g$a;Lcom/google/android/exoplayer2/drm/g$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lcom/google/android/exoplayer2/drm/m0;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/analytics/t1;)V

    .line 59
    .line 60
    move-object/from16 v2, p3

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/drm/g;->f(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 64
    .line 65
    iget-wide v2, v0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    cmp-long v2, v2, v4

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    const/4 v2, 0x0

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/drm/g;->f(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 79
    :cond_0
    return-object v1
.end method

.method private w(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;Z)Lcom/google/android/exoplayer2/drm/g;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;Z",
            "Lcom/google/android/exoplayer2/drm/v$a;",
            "Z)",
            "Lcom/google/android/exoplayer2/drm/g;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/h;->v(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/drm/g;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->t(Lcom/google/android/exoplayer2/drm/n;)Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->keepaliveSessions:Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 16
    move-result v1

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->C()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/drm/h;->F(Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/h;->v(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/drm/g;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/h;->t(Lcom/google/android/exoplayer2/drm/n;)Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-eqz p4, :cond_2

    .line 37
    .line 38
    iget-object p4, p0, Lcom/google/android/exoplayer2/drm/h;->preacquiredSessionReferences:Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 42
    move-result p4

    .line 43
    .line 44
    if-nez p4, :cond_2

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->D()V

    .line 48
    .line 49
    iget-object p4, p0, Lcom/google/android/exoplayer2/drm/h;->keepaliveSessions:Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 53
    move-result p4

    .line 54
    .line 55
    if-nez p4, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->C()V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer2/drm/h;->F(Lcom/google/android/exoplayer2/drm/n;Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/drm/h;->v(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;)Lcom/google/android/exoplayer2/drm/g;

    .line 65
    move-result-object v0

    .line 66
    :cond_2
    return-object v0
.end method

.method private static x(Lcom/google/android/exoplayer2/drm/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    const/4 v1, 0x0

    .line 9
    .line 10
    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeDataCount:I

    .line 11
    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/drm/DrmInitData;->e(I)Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;

    .line 16
    move-result-object v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c(Ljava/util/UUID;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    sget-object v3, Lcom/google/android/exoplayer2/i;->CLEARKEY_UUID:Ljava/util/UUID;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    sget-object v3, Lcom/google/android/exoplayer2/i;->COMMON_PSSH_UUID:Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->c(Ljava/util/UUID;)Z

    .line 36
    move-result v3

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    :cond_0
    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DrmInitData$SchemeData;->data:[B

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-object v0
.end method

.method private declared-synchronized y(Landroid/os/Looper;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackHandler:Landroid/os/Handler;

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    .line 19
    :cond_0
    if-ne v0, p1, :cond_1

    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->playbackHandler:Landroid/os/Handler;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_2
    monitor-exit p0

    .line 34
    throw p1
.end method

.method private z(IZ)Lcom/google/android/exoplayer2/drm/n;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/drm/f0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->b()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    sget-boolean v1, Lcom/google/android/exoplayer2/drm/g0;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->useDrmSessionsForClearContentTrackTypes:[I

    .line 24
    .line 25
    .line 26
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o0;->t0([II)I

    .line 27
    move-result p1

    .line 28
    const/4 v1, -0x1

    .line 29
    .line 30
    if-eq p1, v1, :cond_3

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->b()I

    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1, v0, v3, p2}, Lcom/google/android/exoplayer2/drm/h;->w(Ljava/util/List;ZLcom/google/android/exoplayer2/drm/v$a;Z)Lcom/google/android/exoplayer2/drm/g;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    iget-object p2, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 53
    .line 54
    .line 55
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 58
    goto :goto_0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/drm/g;->f(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/h;->placeholderDrmSession:Lcom/google/android/exoplayer2/drm/g;

    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method public E(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 10
    const/4 v0, 0x1

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    const/4 v0, 0x3

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    iput p1, p0, Lcom/google/android/exoplayer2/drm/h;->mode:I

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/h;->offlineLicenseKeySetId:[B

    .line 23
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/n;
    .locals 2
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/android/exoplayer2/drm/h;->s(Landroid/os/Looper;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;Z)Lcom/google/android/exoplayer2/drm/n;

    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public b(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/x$b;
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/v$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 3
    .line 4
    if-lez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->playbackLooper:Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lcom/google/android/exoplayer2/drm/h$f;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/google/android/exoplayer2/drm/h$f;-><init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/drm/h$f;->c(Lcom/google/android/exoplayer2/a2;)V

    .line 24
    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/a2;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/drm/f0;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/f0;->b()I

    .line 12
    move-result v0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    .line 22
    move-result p1

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->useDrmSessionsForClearContentTrackTypes:[I

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/o0;->t0([II)I

    .line 28
    move-result p1

    .line 29
    const/4 v1, -0x1

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/h;->u(Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/h;->y(Landroid/os/Looper;)V

    .line 4
    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/h;->playerId:Lcom/google/android/exoplayer2/analytics/t1;

    .line 6
    return-void
.end method

.method public final prepare()V
    .locals 6

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 3
    .line 4
    add-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    iput v1, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrmProvider:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h;->uuid:Ljava/util/UUID;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/f0$d;->a(Ljava/util/UUID;)Lcom/google/android/exoplayer2/drm/f0;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/h;->exoMediaDrm:Lcom/google/android/exoplayer2/drm/f0;

    .line 25
    .line 26
    new-instance v2, Lcom/google/android/exoplayer2/drm/h$c;

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplayer2/drm/h$c;-><init>(Lcom/google/android/exoplayer2/drm/h;Lcom/google/android/exoplayer2/drm/h$a;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/drm/f0;->f(Lcom/google/android/exoplayer2/drm/f0$c;)V

    .line 33
    goto :goto_1

    .line 34
    .line 35
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    cmp-long v0, v2, v4

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x0

    .line 46
    .line 47
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 48
    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 51
    move-result v2

    .line 52
    .line 53
    if-ge v0, v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    check-cast v2, Lcom/google/android/exoplayer2/drm/g;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/drm/g;->f(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 65
    .line 66
    add-int/lit8 v0, v0, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 3
    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/drm/h;->prepareCallsCount:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/drm/h;->sessionKeepaliveMs:J

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/h;->sessions:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    const/4 v1, 0x0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    move-result v2

    .line 33
    .line 34
    if-ge v1, v2, :cond_1

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    check-cast v2, Lcom/google/android/exoplayer2/drm/g;

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/drm/g;->e(Lcom/google/android/exoplayer2/drm/v$a;)V

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->D()V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/drm/h;->B()V

    .line 54
    return-void
.end method
