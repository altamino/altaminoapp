.class public final Lcom/google/android/exoplayer2/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/g<",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/analytics/a;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Lcom/google/android/exoplayer2/audio/e;

.field bandwidthMeterSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Lcom/google/android/exoplayer2/util/d;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

.field loadControlSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/g2;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/source/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field priorityTaskManager:Lcom/google/android/exoplayer2/util/e0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/q3;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Lcom/google/android/exoplayer2/r3;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/trackselection/b0;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/t;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/t;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/c0;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/c0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/q3;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/h0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/h0;-><init>(Lcom/google/android/exoplayer2/q3;)V

    new-instance v1, Lcom/google/android/exoplayer2/i0;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/q3;Lcom/google/android/exoplayer2/source/b0$a;)V
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/f0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/f0;-><init>(Lcom/google/android/exoplayer2/q3;)V

    new-instance v1, Lcom/google/android/exoplayer2/g0;

    invoke-direct {v1, p3}, Lcom/google/android/exoplayer2/g0;-><init>(Lcom/google/android/exoplayer2/source/b0$a;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 7
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/q3;Lcom/google/android/exoplayer2/source/b0$a;Lcom/google/android/exoplayer2/trackselection/b0;Lcom/google/android/exoplayer2/g2;Lcom/google/android/exoplayer2/upstream/e;Lcom/google/android/exoplayer2/analytics/a;)V
    .locals 8

    .line 9
    new-instance v2, Lcom/google/android/exoplayer2/j0;

    invoke-direct {v2, p2}, Lcom/google/android/exoplayer2/j0;-><init>(Lcom/google/android/exoplayer2/q3;)V

    new-instance v3, Lcom/google/android/exoplayer2/k0;

    invoke-direct {v3, p3}, Lcom/google/android/exoplayer2/k0;-><init>(Lcom/google/android/exoplayer2/source/b0$a;)V

    new-instance v4, Lcom/google/android/exoplayer2/u;

    invoke-direct {v4, p4}, Lcom/google/android/exoplayer2/u;-><init>(Lcom/google/android/exoplayer2/trackselection/b0;)V

    new-instance v5, Lcom/google/android/exoplayer2/v;

    invoke-direct {v5, p5}, Lcom/google/android/exoplayer2/v;-><init>(Lcom/google/android/exoplayer2/g2;)V

    new-instance v6, Lcom/google/android/exoplayer2/w;

    invoke-direct {v6, p6}, Lcom/google/android/exoplayer2/w;-><init>(Lcom/google/android/exoplayer2/upstream/e;)V

    new-instance v7, Lcom/google/android/exoplayer2/x;

    invoke-direct {v7, p7}, Lcom/google/android/exoplayer2/x;-><init>(Lcom/google/android/exoplayer2/analytics/a;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V

    .line 10
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p4}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {p7}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/b0$a;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/d0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/d0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/e0;

    invoke-direct {v1, p2}, Lcom/google/android/exoplayer2/e0;-><init>(Lcom/google/android/exoplayer2/source/b0$a;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V

    .line 5
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/q3;",
            ">;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/source/b0$a;",
            ">;)V"
        }
    .end annotation

    .line 15
    new-instance v4, Lcom/google/android/exoplayer2/y;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/y;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/exoplayer2/z;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/z;-><init>()V

    new-instance v6, Lcom/google/android/exoplayer2/a0;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/a0;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/exoplayer2/b0;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/b0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/s$b;-><init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/u;Lcom/google/common/base/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/q3;",
            ">;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/source/b0$a;",
            ">;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/trackselection/b0;",
            ">;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/g2;",
            ">;",
            "Lcom/google/common/base/u<",
            "Lcom/google/android/exoplayer2/upstream/e;",
            ">;",
            "Lcom/google/common/base/g<",
            "Lcom/google/android/exoplayer2/util/d;",
            "Lcom/google/android/exoplayer2/analytics/a;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/exoplayer2/s$b;->renderersFactorySupplier:Lcom/google/common/base/u;

    iput-object p3, p0, Lcom/google/android/exoplayer2/s$b;->mediaSourceFactorySupplier:Lcom/google/common/base/u;

    iput-object p4, p0, Lcom/google/android/exoplayer2/s$b;->trackSelectorSupplier:Lcom/google/common/base/u;

    iput-object p5, p0, Lcom/google/android/exoplayer2/s$b;->loadControlSupplier:Lcom/google/common/base/u;

    iput-object p6, p0, Lcom/google/android/exoplayer2/s$b;->bandwidthMeterSupplier:Lcom/google/common/base/u;

    iput-object p7, p0, Lcom/google/android/exoplayer2/s$b;->analyticsCollectorFunction:Lcom/google/common/base/g;

    .line 18
    invoke-static {}, Lcom/google/android/exoplayer2/util/o0;->K()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->looper:Landroid/os/Looper;

    .line 19
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->DEFAULT:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->audioAttributes:Lcom/google/android/exoplayer2/audio/e;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/s$b;->wakeMode:I

    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/exoplayer2/s$b;->videoScalingMode:I

    iput p1, p0, Lcom/google/android/exoplayer2/s$b;->videoChangeFrameRateStrategy:I

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/s$b;->useLazyPreparation:Z

    .line 20
    sget-object p1, Lcom/google/android/exoplayer2/r3;->DEFAULT:Lcom/google/android/exoplayer2/r3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->seekParameters:Lcom/google/android/exoplayer2/r3;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Lcom/google/android/exoplayer2/s$b;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Lcom/google/android/exoplayer2/s$b;->seekForwardIncrementMs:J

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/j$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/j$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/j$b;->a()Lcom/google/android/exoplayer2/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->livePlaybackSpeedControl:Lcom/google/android/exoplayer2/f2;

    .line 22
    sget-object p1, Lcom/google/android/exoplayer2/util/d;->DEFAULT:Lcom/google/android/exoplayer2/util/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->clock:Lcom/google/android/exoplayer2/util/d;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Lcom/google/android/exoplayer2/s$b;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Lcom/google/android/exoplayer2/s$b;->detachSurfaceTimeoutMs:J

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/s$b;->usePlatformDiagnostics:Z

    return-void
.end method

.method private static synthetic A(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/q;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/i;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/i;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/q;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/r;)V

    .line 11
    return-object v0
.end method

.method private static synthetic B(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/m;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic C(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic D(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic E(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic F(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic G(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->D(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/analytics/a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/s$b;->w(Lcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/analytics/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->A(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->y(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/g2;)Lcom/google/android/exoplayer2/g2;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->u(Lcom/google/android/exoplayer2/g2;)Lcom/google/android/exoplayer2/g2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->E(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->r(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->G(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->x(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->F(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->B(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->s(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/google/android/exoplayer2/trackselection/b0;)Lcom/google/android/exoplayer2/trackselection/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->t(Lcom/google/android/exoplayer2/trackselection/b0;)Lcom/google/android/exoplayer2/trackselection/b0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->v(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/upstream/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->z(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/s$b;->C(Lcom/google/android/exoplayer2/source/b0$a;)Lcom/google/android/exoplayer2/source/b0$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic r(Landroid/content/Context;)Lcom/google/android/exoplayer2/q3;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/m;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic s(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/q;

    .line 3
    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/i;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/i;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/q;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/r;)V

    .line 11
    return-object v0
.end method

.method private static synthetic t(Lcom/google/android/exoplayer2/trackselection/b0;)Lcom/google/android/exoplayer2/trackselection/b0;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic u(Lcom/google/android/exoplayer2/g2;)Lcom/google/android/exoplayer2/g2;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic v(Lcom/google/android/exoplayer2/upstream/e;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic w(Lcom/google/android/exoplayer2/analytics/a;Lcom/google/android/exoplayer2/util/d;)Lcom/google/android/exoplayer2/analytics/a;
    .locals 0

    .line 1
    return-object p0
.end method

.method private static synthetic x(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/b0;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/m;-><init>(Landroid/content/Context;)V

    .line 6
    return-object v0
.end method

.method private static synthetic y(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/r;->l(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/r;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic z(Lcom/google/android/exoplayer2/q3;)Lcom/google/android/exoplayer2/q3;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public H(Landroid/os/Looper;)Lcom/google/android/exoplayer2/s$b;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/s$b;->buildCalled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/s$b;->looper:Landroid/os/Looper;

    .line 13
    return-object p0
.end method

.method public I(Z)Lcom/google/android/exoplayer2/s$b;
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/s$b;->buildCalled:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/s$b;->pauseAtEndOfMediaItems:Z

    .line 10
    return-object p0
.end method

.method public q()Lcom/google/android/exoplayer2/s;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/s$b;->buildCalled:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/s$b;->buildCalled:Z

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/k1;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/k1;-><init>(Lcom/google/android/exoplayer2/s$b;Lcom/google/android/exoplayer2/d3;)V

    .line 16
    return-object v0
.end method
