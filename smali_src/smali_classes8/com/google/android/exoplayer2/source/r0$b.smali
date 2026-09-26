.class public final Lcom/google/android/exoplayer2/source/r0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/a0;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

.field private tag:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/i;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/i;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/r0$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/extractor/r;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/s0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/s0;-><init>(Lcom/google/android/exoplayer2/extractor/r;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/r0$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;)V
    .locals 6

    .line 3
    new-instance v3, Lcom/google/android/exoplayer2/drm/l;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/l;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/r0$b;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/a0;Lcom/google/android/exoplayer2/upstream/f0;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/a0;Lcom/google/android/exoplayer2/upstream/f0;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r0$b;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/r0$b;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/r0$b;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/a0;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/r0$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    iput p5, p0, Lcom/google/android/exoplayer2/source/r0$b;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/extractor/r;Lcom/google/android/exoplayer2/analytics/t1;)Lcom/google/android/exoplayer2/source/l0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/r0$b;->f(Lcom/google/android/exoplayer2/extractor/r;Lcom/google/android/exoplayer2/analytics/t1;)Lcom/google/android/exoplayer2/source/l0;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/extractor/r;Lcom/google/android/exoplayer2/analytics/t1;)Lcom/google/android/exoplayer2/source/l0;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/source/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/c;-><init>(Lcom/google/android/exoplayer2/extractor/r;)V

    .line 6
    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/b0$a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/r0$b;->g(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/r0$b;

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
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/r0$b;->h(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/r0$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/b0;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/r0$b;->e(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/r0;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/source/r0;
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
    iget-object v1, v0, Lcom/google/android/exoplayer2/i2$h;->tag:Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/r0$b;->tag:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    .line 22
    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/i2$h;->customCacheKey:Ljava/lang/String;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->customCacheKey:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    move v2, v3

    .line 30
    .line 31
    :cond_1
    if-eqz v1, :cond_3

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2;->b()Lcom/google/android/exoplayer2/i2$c;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->tag:Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i2$c;->f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/i2$c;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->customCacheKey:Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i2$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 53
    move-result-object p1

    .line 54
    :cond_2
    :goto_1
    move-object v1, p1

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_3
    if-eqz v1, :cond_4

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2;->b()Lcom/google/android/exoplayer2/i2$c;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->tag:Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i2$c;->f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/i2$c;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_4
    if-eqz v2, :cond_2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2;->b()Lcom/google/android/exoplayer2/i2$c;

    .line 78
    move-result-object p1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->customCacheKey:Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/i2$c;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    .line 84
    move-result-object p1

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    .line 88
    move-result-object p1

    .line 89
    goto :goto_1

    .line 90
    .line 91
    :goto_2
    new-instance p1, Lcom/google/android/exoplayer2/source/r0;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/r0$b;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 94
    .line 95
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/r0$b;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/l0$a;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/r0$b;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/a0;

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/a0;->a(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/drm/x;

    .line 101
    move-result-object v4

    .line 102
    .line 103
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/r0$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 104
    .line 105
    iget v6, p0, Lcom/google/android/exoplayer2/source/r0$b;->continueLoadingCheckIntervalBytes:I

    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v0, p1

    .line 108
    .line 109
    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/r0;-><init>(Lcom/google/android/exoplayer2/i2;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/l0$a;Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/upstream/f0;ILcom/google/android/exoplayer2/source/r0$a;)V

    .line 111
    return-object p1
.end method

.method public g(Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/source/r0$b;
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/drm/a0;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r0$b;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/a0;

    .line 11
    return-object p0
.end method

.method public h(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/source/r0$b;
    .locals 1

    .line 1
    .line 2
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/upstream/f0;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/r0$b;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 11
    return-object p0
.end method
