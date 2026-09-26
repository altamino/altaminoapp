.class public final Lcom/google/android/exoplayer2/drm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/a0;


# instance fields
.field private drmConfiguration:Lcom/google/android/exoplayer2/i2$f;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private manager:Lcom/google/android/exoplayer2/drm/x;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private userAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->lock:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/i2$f;)Lcom/google/android/exoplayer2/drm/x;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->drmHttpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/t$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/t$b;-><init>()V

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/l;->userAgent:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/t$b;->e(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/t$b;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/k0;

    .line 19
    .line 20
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2$f;->licenseUri:Landroid/net/Uri;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    const/4 v2, 0x0

    .line 24
    goto :goto_1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    :goto_1
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/i2$f;->forceDefaultLicenseUri:Z

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/drm/k0;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/k$a;)V

    .line 34
    .line 35
    iget-object v0, p1, Lcom/google/android/exoplayer2/i2$f;->licenseRequestHeaders:Lcom/google/common/collect/b0;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/common/collect/b0;->j()Lcom/google/common/collect/d0;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/common/collect/d0;->m()Lcom/google/common/collect/l1;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v2

    .line 54
    .line 55
    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/drm/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    goto :goto_2

    .line 72
    .line 73
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/drm/h$b;

    .line 74
    .line 75
    .line 76
    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/h$b;-><init>()V

    .line 77
    .line 78
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2$f;->scheme:Ljava/util/UUID;

    .line 79
    .line 80
    sget-object v3, Lcom/google/android/exoplayer2/drm/j0;->DEFAULT_PROVIDER:Lcom/google/android/exoplayer2/drm/f0$d;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/drm/h$b;->e(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/f0$d;)Lcom/google/android/exoplayer2/drm/h$b;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/i2$f;->multiSession:Z

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/h$b;->b(Z)Lcom/google/android/exoplayer2/drm/h$b;

    .line 90
    move-result-object v0

    .line 91
    .line 92
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/i2$f;->playClearContentWithoutKey:Z

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/h$b;->c(Z)Lcom/google/android/exoplayer2/drm/h$b;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    iget-object v2, p1, Lcom/google/android/exoplayer2/i2$f;->forcedSessionTrackTypes:Lcom/google/common/collect/a0;

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lcom/google/common/primitives/e;->l(Ljava/util/Collection;)[I

    .line 102
    move-result-object v2

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/h$b;->d([I)Lcom/google/android/exoplayer2/drm/h$b;

    .line 106
    move-result-object v0

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/h$b;->a(Lcom/google/android/exoplayer2/drm/m0;)Lcom/google/android/exoplayer2/drm/h;

    .line 110
    move-result-object v0

    .line 111
    const/4 v1, 0x0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/i2$f;->c()[B

    .line 115
    move-result-object p1

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/h;->E(I[B)V

    .line 119
    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/i2;)Lcom/google/android/exoplayer2/drm/x;
    .locals 2

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
    iget-object p1, p1, Lcom/google/android/exoplayer2/i2$h;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    sget v0, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 14
    .line 15
    const/16 v1, 0x12

    .line 16
    .line 17
    if-ge v0, v1, :cond_0

    .line 18
    goto :goto_2

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/l;->lock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/l;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->drmConfiguration:Lcom/google/android/exoplayer2/i2$f;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/l;->b(Lcom/google/android/exoplayer2/i2$f;)Lcom/google/android/exoplayer2/drm/x;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->manager:Lcom/google/android/exoplayer2/drm/x;

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/l;->manager:Lcom/google/android/exoplayer2/drm/x;

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    check-cast p1, Lcom/google/android/exoplayer2/drm/x;

    .line 49
    monitor-exit v0

    .line 50
    return-object p1

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    .line 54
    :cond_2
    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/drm/x;->DRM_UNSUPPORTED:Lcom/google/android/exoplayer2/drm/x;

    .line 55
    return-object p1
.end method
