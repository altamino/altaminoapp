.class final Lcom/google/android/exoplayer2/mediacodec/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/google/android/exoplayer2/mediacodec/l$a;Lcom/google/android/exoplayer2/analytics/t1;)V
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/analytics/t1;->a()Landroid/media/metrics/LogSessionId;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroidx/media3/exoplayer/g1;->a()Landroid/media/metrics/LogSessionId;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/v;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/l$a;->mediaFormat:Landroid/media/MediaFormat;

    .line 17
    .line 18
    const-string v0, "log-session-id"

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/k;->a(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
