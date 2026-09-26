.class final Lcom/google/android/exoplayer2/k1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/k1;Z)Lcom/google/android/exoplayer2/analytics/t1;
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/exoplayer2/analytics/r1;->A0(Landroid/content/Context;)Lcom/google/android/exoplayer2/analytics/r1;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "ExoPlayerImpl"

    .line 9
    .line 10
    const-string p1, "MediaMetricsService unavailable."

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    new-instance p0, Lcom/google/android/exoplayer2/analytics/t1;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroidx/media3/exoplayer/g1;->a()Landroid/media/metrics/LogSessionId;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/t1;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 23
    return-object p0

    .line 24
    .line 25
    :cond_0
    if-eqz p2, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/k1;->R0(Lcom/google/android/exoplayer2/analytics/c;)V

    .line 29
    .line 30
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/analytics/t1;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/analytics/r1;->H0()Landroid/media/metrics/LogSessionId;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/analytics/t1;-><init>(Landroid/media/metrics/LogSessionId;)V

    .line 38
    return-object p1
.end method
