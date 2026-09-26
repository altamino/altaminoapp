.class public Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;
    }
.end annotation


# instance fields
.field private final listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final windowIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p3    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;",
            ">;I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->n(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->o(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->k(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->m(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->j(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->l(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method private synthetic j(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->D(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 8
    return-void
.end method

.method private synthetic k(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->B(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 8
    return-void
.end method

.method private synthetic l(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->V(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 8
    return-void
.end method

.method private synthetic m(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    .line 2
    iget v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    move-object v0, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    .line 11
    .line 12
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 13
    return-void
.end method

.method private synthetic n(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0, v1, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->L(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 8
    return-void
.end method

.method private synthetic o(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->windowIndex:I

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->I(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 6
    return-void
.end method


# virtual methods
.method public A(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Landroidx/media3/exoplayer/source/t;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media3/exoplayer/source/t;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public B(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public C(IJJ)V
    .locals 11

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x0

    .line 7
    .line 8
    .line 9
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 10
    move-result-wide v6

    .line 11
    .line 12
    .line 13
    invoke-static/range {p4 .. p5}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 14
    move-result-wide v8

    .line 15
    move-object v0, v10

    .line 16
    move v2, p1

    .line 17
    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 20
    move-object v0, p0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->D(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 24
    return-void
.end method

.method public D(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v4, Landroidx/media3/exoplayer/source/s;

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, p0, v3, v0, p1}, Landroidx/media3/exoplayer/source/s;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v4}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public E(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 2
    .param p2    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 8
    return-object v0
.end method

.method public g(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method

.method public h(ILandroidx/media3/common/Format;ILjava/lang/Object;J)V
    .locals 11
    .param p2    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static/range {p5 .. p6}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 7
    move-result-wide v6

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    move-object v0, v10

    .line 14
    move v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    .line 19
    .line 20
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 21
    move-object v0, p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->i(Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 25
    return-void
.end method

.method public i(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Landroidx/media3/exoplayer/source/p;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1}, Landroidx/media3/exoplayer/source/p;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public p(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->q(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 21
    return-void
.end method

.method public q(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    .line 4
    .line 5
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 6
    move-result-wide v6

    .line 7
    .line 8
    .line 9
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->r(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 27
    return-void
.end method

.method public r(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Landroidx/media3/exoplayer/source/q;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media3/exoplayer/source/q;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public s(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->t(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 21
    return-void
.end method

.method public t(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    .line 4
    .line 5
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 6
    move-result-wide v6

    .line 7
    .line 8
    .line 9
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->u(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 27
    return-void
.end method

.method public u(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v3, Landroidx/media3/exoplayer/source/u;

    .line 25
    .line 26
    .line 27
    invoke-direct {v3, p0, v2, p1, p2}, Landroidx/media3/exoplayer/source/u;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public v(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    .line 4
    .line 5
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 6
    move-result-wide v6

    .line 7
    .line 8
    .line 9
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    move-object/from16 v2, p11

    .line 26
    .line 27
    move/from16 v3, p12

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v10, v2, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->x(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 31
    return-void
.end method

.method public w(Landroidx/media3/exoplayer/source/LoadEventInfo;ILjava/io/IOException;Z)V
    .locals 13

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    .line 19
    move-object/from16 v11, p3

    .line 20
    .line 21
    move/from16 v12, p4

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->v(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 25
    return-void
.end method

.method public x(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->listenerAndHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 19
    .line 20
    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->listener:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->handler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance v9, Landroidx/media3/exoplayer/source/r;

    .line 25
    move-object v2, v9

    .line 26
    move-object v3, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-object v7, p3

    .line 30
    move v8, p4

    .line 31
    .line 32
    .line 33
    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/source/r;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v9}, Landroidx/media3/common/util/Util;->T0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public y(Landroidx/media3/exoplayer/source/LoadEventInfo;I)V
    .locals 11

    .line 1
    const/4 v3, -0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->z(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 21
    return-void
.end method

.method public z(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V
    .locals 11
    .param p4    # Landroidx/media3/common/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v10, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 3
    .line 4
    .line 5
    invoke-static/range {p7 .. p8}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 6
    move-result-wide v6

    .line 7
    .line 8
    .line 9
    invoke-static/range {p9 .. p10}, Landroidx/media3/common/util/Util;->q1(J)J

    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    .line 16
    move/from16 v4, p5

    .line 17
    .line 18
    move-object/from16 v5, p6

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, v10}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->A(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    .line 27
    return-void
.end method
