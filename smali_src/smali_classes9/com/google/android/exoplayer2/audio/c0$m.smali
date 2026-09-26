.class final Lcom/google/android/exoplayer2/audio/c0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "m"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/c0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/c0;Lcom/google/android/exoplayer2/audio/c0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/c0$m;-><init>(Lcom/google/android/exoplayer2/audio/c0;)V

    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/v$c;->b(J)V

    .line 18
    :cond_0
    return-void
.end method

.method public onInvalidLatency(J)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Ignoring impossibly large audio latency: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    const-string p2, "DefaultAudioSink"

    .line 20
    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onPositionFramesMismatch(JJJJ)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, ", "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/c0;->p(Lcom/google/android/exoplayer2/audio/c0;)J

    .line 42
    move-result-wide p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->q(Lcom/google/android/exoplayer2/audio/c0;)J

    .line 54
    move-result-wide p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    sget-boolean p2, Lcom/google/android/exoplayer2/audio/c0;->failOnSpuriousAudioTimestamp:Z

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    const-string p2, "DefaultAudioSink"

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 72
    .line 73
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/audio/c0$j;

    .line 74
    const/4 p3, 0x0

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/audio/c0$j;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/c0$a;)V

    .line 78
    throw p2
.end method

.method public onSystemTimeUsMismatch(JJJJ)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p1, ", "

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 39
    .line 40
    .line 41
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/c0;->p(Lcom/google/android/exoplayer2/audio/c0;)J

    .line 42
    move-result-wide p2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->q(Lcom/google/android/exoplayer2/audio/c0;)J

    .line 54
    move-result-wide p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    sget-boolean p2, Lcom/google/android/exoplayer2/audio/c0;->failOnSpuriousAudioTimestamp:Z

    .line 64
    .line 65
    if-nez p2, :cond_0

    .line 66
    .line 67
    const-string p2, "DefaultAudioSink"

    .line 68
    .line 69
    .line 70
    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/util/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 72
    .line 73
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/audio/c0$j;

    .line 74
    const/4 p3, 0x0

    .line 75
    .line 76
    .line 77
    invoke-direct {p2, p1, p3}, Lcom/google/android/exoplayer2/audio/c0$j;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/audio/c0$a;)V

    .line 78
    throw p2
.end method

.method public onUnderrun(IJ)V
    .locals 10

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/c0;->r(Lcom/google/android/exoplayer2/audio/c0;)J

    .line 18
    move-result-wide v2

    .line 19
    .line 20
    sub-long v8, v0, v2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$m;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 26
    move-result-object v4

    .line 27
    move v5, p1

    .line 28
    move-wide v6, p2

    .line 29
    .line 30
    .line 31
    invoke-interface/range {v4 .. v9}, Lcom/google/android/exoplayer2/audio/v$c;->onUnderrun(IJJ)V

    .line 32
    :cond_0
    return-void
.end method
