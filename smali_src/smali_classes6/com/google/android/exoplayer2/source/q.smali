.class public final Lcom/google/android/exoplayer2/source/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q$b;,
        Lcom/google/android/exoplayer2/source/q$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMediaSourceFactory"


# instance fields
.field private adViewProvider:Lcom/google/android/exoplayer2/ui/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private adsLoaderProvider:Lx2/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final delegateFactoryLoader:Lcom/google/android/exoplayer2/source/q$a;

.field private liveMaxOffsetMs:J

.field private liveMaxSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinSpeed:F

.field private liveTargetOffsetMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplayer2/source/b0$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useProgressiveMediaSourceForSubtitles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/s$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/s$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/r;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/s$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/s$a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/extractor/i;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/q;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/source/q$a;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/q$a;-><init>(Lcom/google/android/exoplayer2/extractor/r;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/q$a;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q$a;->m(Lcom/google/android/exoplayer2/upstream/k$a;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q;->liveTargetOffsetMs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q;->liveMinOffsetMs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q;->liveMaxOffsetMs:J

    const p1, -0x800001

    iput p1, p0, Lcom/google/android/exoplayer2/source/q;->liveMinSpeed:F

    iput p1, p0, Lcom/google/android/exoplayer2/source/q;->liveMaxSpeed:F

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/a2;)[Lcom/google/android/exoplayer2/extractor/l;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/q;->g(Lcom/google/android/exoplayer2/a2;)[Lcom/google/android/exoplayer2/extractor/l;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/q;->j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/b0$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/q;->k(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/b0$a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic g(Lcom/google/android/exoplayer2/a2;)[Lcom/google/android/exoplayer2/extractor/l;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/l;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/exoplayer2/text/l;->DEFAULT:Lcom/google/android/exoplayer2/text/l;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/text/l;->a(Lcom/google/android/exoplayer2/a2;)Z

    .line 9
    move-result v2

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/exoplayer2/text/m;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/text/l;->b(Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/text/j;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v1, p0}, Lcom/google/android/exoplayer2/text/m;-><init>(Lcom/google/android/exoplayer2/text/j;Lcom/google/android/exoplayer2/a2;)V

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v2, Lcom/google/android/exoplayer2/source/q$b;

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/google/android/exoplayer2/source/q$b;-><init>(Lcom/google/android/exoplayer2/a2;)V

    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    .line 29
    aput-object v2, v0, p0

    .line 30
    return-object v0
.end method

.method private static h(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 3
    .line 4
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 5
    .line 6
    const-wide/16 v3, 0x0

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-wide v1, v0, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 13
    .line 14
    const-wide/high16 v3, -0x8000000000000000L

    .line 15
    .line 16
    cmp-long v1, v1, v3

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/e;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 28
    .line 29
    iget-wide v1, v1, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 33
    move-result-wide v3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 36
    .line 37
    iget-wide v1, v1, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/o0;->w0(J)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    iget-object p0, p0, Lcom/google/android/exoplayer2/i2;->clippingConfiguration:Lcom/google/android/exoplayer2/i2$d;

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    .line 46
    .line 47
    xor-int/lit8 v7, v1, 0x1

    .line 48
    .line 49
    iget-boolean v8, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    .line 50
    .line 51
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    .line 52
    move-object v1, v0

    .line 53
    move-object v2, p1

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/e;-><init>(Lcom/google/android/exoplayer2/source/b0;JJZZZ)V

    .line 57
    return-object v0
.end method

.method private i(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$h;->adsConfiguration:Lcom/google/android/exoplayer2/i2$b;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    return-object p2

    .line 13
    .line 14
    :cond_0
    const-string p1, "DMediaSourceFactory"

    .line 15
    .line 16
    const-string v0, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p2
.end method

.method private static j(Ljava/lang/Class;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/source/b0$a;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/b0$a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    move-result-object p0

    .line 8
    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    check-cast p0, Lcom/google/android/exoplayer2/source/b0$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    throw v0
.end method

.method private static k(Ljava/lang/Class;Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/source/b0$a;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/k$a;",
            ")",
            "Lcom/google/android/exoplayer2/source/b0$a;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 4
    .line 5
    const-class v2, Lcom/google/android/exoplayer2/upstream/k$a;

    .line 6
    const/4 v3, 0x0

    .line 7
    .line 8
    aput-object v2, v1, v3

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object p1, v0, v3

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    .line 22
    check-cast p0, Lcom/google/android/exoplayer2/source/b0$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 30
    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q;->l(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q;->m(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/q;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/b0;
    .locals 8

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v1, "ssai"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplayer2/source/b0$a;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    check-cast v0, Lcom/google/android/exoplayer2/source/b0$a;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/b0$a;->c(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/b0;

    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    .line 38
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$h;->uri:Landroid/net/Uri;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2$h;->mimeType:Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/o0;->k0(Landroid/net/Uri;Ljava/lang/String;)I

    .line 46
    move-result v0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/q$a;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/q$a;->f(I)Lcom/google/android/exoplayer2/source/b0$a;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    const-string v3, "No suitable media source factory found for content type: "

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    .line 71
    .line 72
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$g;->b()Lcom/google/android/exoplayer2/i2$g$a;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 81
    .line 82
    iget-wide v2, v2, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    cmp-long v2, v2, v4

    .line 90
    .line 91
    if-nez v2, :cond_1

    .line 92
    .line 93
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/q;->liveTargetOffsetMs:J

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/i2$g$a;->k(J)Lcom/google/android/exoplayer2/i2$g$a;

    .line 97
    .line 98
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 99
    .line 100
    iget v2, v2, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    .line 101
    .line 102
    .line 103
    const v3, -0x800001

    .line 104
    .line 105
    cmpl-float v2, v2, v3

    .line 106
    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    iget v2, p0, Lcom/google/android/exoplayer2/source/q;->liveMinSpeed:F

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2$g$a;->j(F)Lcom/google/android/exoplayer2/i2$g$a;

    .line 113
    .line 114
    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 115
    .line 116
    iget v2, v2, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    .line 117
    .line 118
    cmpl-float v2, v2, v3

    .line 119
    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    iget v2, p0, Lcom/google/android/exoplayer2/source/q;->liveMaxSpeed:F

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2$g$a;->h(F)Lcom/google/android/exoplayer2/i2$g$a;

    .line 126
    .line 127
    :cond_3
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 128
    .line 129
    iget-wide v2, v2, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    .line 130
    .line 131
    cmp-long v2, v2, v4

    .line 132
    .line 133
    if-nez v2, :cond_4

    .line 134
    .line 135
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/q;->liveMinOffsetMs:J

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/i2$g$a;->i(J)Lcom/google/android/exoplayer2/i2$g$a;

    .line 139
    .line 140
    :cond_4
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 141
    .line 142
    iget-wide v2, v2, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    .line 143
    .line 144
    cmp-long v2, v2, v4

    .line 145
    .line 146
    if-nez v2, :cond_5

    .line 147
    .line 148
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/q;->liveMaxOffsetMs:J

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/i2$g$a;->g(J)Lcom/google/android/exoplayer2/i2$g$a;

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i2$g$a;->f()Lcom/google/android/exoplayer2/i2$g;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2;->liveConfiguration:Lcom/google/android/exoplayer2/i2$g;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/i2$g;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v2

    .line 162
    .line 163
    if-nez v2, :cond_6

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2;->b()Lcom/google/android/exoplayer2/i2$c;

    .line 167
    move-result-object p1

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i2$c;->c(Lcom/google/android/exoplayer2/i2$g;)Lcom/google/android/exoplayer2/i2$c;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 175
    move-result-object p1

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-interface {v1, p1}, Lcom/google/android/exoplayer2/source/b0$a;->c(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/b0;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    iget-object v1, p1, Lcom/google/android/exoplayer2/i2;->localConfiguration:Lcom/google/android/exoplayer2/i2$h;

    .line 182
    .line 183
    .line 184
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    check-cast v1, Lcom/google/android/exoplayer2/i2$h;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/google/android/exoplayer2/i2$h;->subtitleConfigurations:Lcom/google/common/collect/a0;

    .line 190
    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 193
    move-result v2

    .line 194
    .line 195
    if-nez v2, :cond_b

    .line 196
    .line 197
    .line 198
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 199
    move-result v2

    .line 200
    .line 201
    add-int/lit8 v2, v2, 0x1

    .line 202
    .line 203
    new-array v2, v2, [Lcom/google/android/exoplayer2/source/b0;

    .line 204
    const/4 v3, 0x0

    .line 205
    .line 206
    aput-object v0, v2, v3

    .line 207
    .line 208
    .line 209
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 210
    move-result v0

    .line 211
    .line 212
    if-ge v3, v0, :cond_a

    .line 213
    .line 214
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/q;->useProgressiveMediaSourceForSubtitles:Z

    .line 215
    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    new-instance v0, Lcom/google/android/exoplayer2/a2$b;

    .line 219
    .line 220
    .line 221
    invoke-direct {v0}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v6

    .line 226
    .line 227
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 228
    .line 229
    iget-object v6, v6, Lcom/google/android/exoplayer2/i2$l;->mimeType:Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 233
    move-result-object v0

    .line 234
    .line 235
    .line 236
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v6

    .line 238
    .line 239
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 240
    .line 241
    iget-object v6, v6, Lcom/google/android/exoplayer2/i2$l;->language:Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    .line 248
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    move-result-object v6

    .line 250
    .line 251
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 252
    .line 253
    iget v6, v6, Lcom/google/android/exoplayer2/i2$l;->selectionFlags:I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    move-result-object v6

    .line 262
    .line 263
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 264
    .line 265
    iget v6, v6, Lcom/google/android/exoplayer2/i2$l;->roleFlags:I

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->c0(I)Lcom/google/android/exoplayer2/a2$b;

    .line 269
    move-result-object v0

    .line 270
    .line 271
    .line 272
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    move-result-object v6

    .line 274
    .line 275
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 276
    .line 277
    iget-object v6, v6, Lcom/google/android/exoplayer2/i2$l;->label:Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 281
    move-result-object v0

    .line 282
    .line 283
    .line 284
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    move-result-object v6

    .line 286
    .line 287
    check-cast v6, Lcom/google/android/exoplayer2/i2$l;

    .line 288
    .line 289
    iget-object v6, v6, Lcom/google/android/exoplayer2/i2$l;->id:Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 293
    move-result-object v0

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 297
    move-result-object v0

    .line 298
    .line 299
    new-instance v6, Lcom/google/android/exoplayer2/source/k;

    .line 300
    .line 301
    .line 302
    invoke-direct {v6, v0}, Lcom/google/android/exoplayer2/source/k;-><init>(Lcom/google/android/exoplayer2/a2;)V

    .line 303
    .line 304
    new-instance v0, Lcom/google/android/exoplayer2/source/r0$b;

    .line 305
    .line 306
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/q;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 307
    .line 308
    .line 309
    invoke-direct {v0, v7, v6}, Lcom/google/android/exoplayer2/source/r0$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V

    .line 310
    .line 311
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 312
    .line 313
    if-eqz v6, :cond_7

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/r0$b;->h(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/r0$b;

    .line 317
    .line 318
    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 319
    .line 320
    .line 321
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 322
    move-result-object v7

    .line 323
    .line 324
    check-cast v7, Lcom/google/android/exoplayer2/i2$l;

    .line 325
    .line 326
    iget-object v7, v7, Lcom/google/android/exoplayer2/i2$l;->uri:Landroid/net/Uri;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 330
    move-result-object v7

    .line 331
    .line 332
    .line 333
    invoke-static {v7}, Lcom/google/android/exoplayer2/i2;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2;

    .line 334
    move-result-object v7

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/r0$b;->e(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/r0;

    .line 338
    move-result-object v0

    .line 339
    .line 340
    aput-object v0, v2, v6

    .line 341
    goto :goto_1

    .line 342
    .line 343
    :cond_8
    new-instance v0, Lcom/google/android/exoplayer2/source/b1$b;

    .line 344
    .line 345
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/b1$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;)V

    .line 349
    .line 350
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/q;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 351
    .line 352
    if-eqz v6, :cond_9

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/b1$b;->b(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/b1$b;

    .line 356
    .line 357
    :cond_9
    add-int/lit8 v6, v3, 0x1

    .line 358
    .line 359
    .line 360
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    move-result-object v7

    .line 362
    .line 363
    check-cast v7, Lcom/google/android/exoplayer2/i2$l;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0, v7, v4, v5}, Lcom/google/android/exoplayer2/source/b1$b;->a(Lcom/google/android/exoplayer2/i2$l;J)Lcom/google/android/exoplayer2/source/b1;

    .line 367
    move-result-object v0

    .line 368
    .line 369
    aput-object v0, v2, v6

    .line 370
    .line 371
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 372
    .line 373
    goto/16 :goto_0

    .line 374
    .line 375
    :cond_a
    new-instance v0, Lcom/google/android/exoplayer2/source/k0;

    .line 376
    .line 377
    .line 378
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/k0;-><init>([Lcom/google/android/exoplayer2/source/b0;)V

    .line 379
    .line 380
    .line 381
    :cond_b
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/source/q;->h(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 382
    move-result-object v0

    .line 383
    .line 384
    .line 385
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/q;->i(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/source/b0;)Lcom/google/android/exoplayer2/source/b0;

    .line 386
    move-result-object p1

    .line 387
    return-object p1
.end method

.method public l(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/q;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/q$a;

    .line 3
    .line 4
    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lcom/google/android/exoplayer2/drm/a0;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q$a;->n(Lcom/google/android/exoplayer2/drm/a0;)V

    .line 14
    return-object p0
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/q;
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/upstream/f0;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/q;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->delegateFactoryLoader:Lcom/google/android/exoplayer2/source/q$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/q$a;->o(Lcom/google/android/exoplayer2/upstream/f0;)V

    .line 16
    return-object p0
.end method
