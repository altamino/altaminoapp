.class Lcom/google/android/exoplayer2/drm/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
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
    iget-object p1, p2, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    .line 8
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/d0;

    .line 9
    .line 10
    new-instance p2, Lcom/google/android/exoplayer2/drm/n$a;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/drm/o0;

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/o0;-><init>(I)V

    .line 17
    .line 18
    const/16 v1, 0x1771

    .line 19
    .line 20
    .line 21
    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/drm/n$a;-><init>(Ljava/lang/Throwable;I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/drm/d0;-><init>(Lcom/google/android/exoplayer2/drm/n$a;)V

    .line 25
    return-object p1
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/x$b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/w;->a(Lcom/google/android/exoplayer2/drm/x;Lcom/google/android/exoplayer2/drm/v$a;Lcom/google/android/exoplayer2/a2;)Lcom/google/android/exoplayer2/drm/x$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/android/exoplayer2/a2;)I
    .locals 0

    .line 1
    .line 2
    iget-object p1, p1, Lcom/google/android/exoplayer2/a2;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public d(Landroid/os/Looper;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic prepare()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/w;->b(Lcom/google/android/exoplayer2/drm/x;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/w;->c(Lcom/google/android/exoplayer2/drm/x;)V

    return-void
.end method
