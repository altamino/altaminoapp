.class final Lcom/google/android/exoplayer2/audio/g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/v$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/g0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/g0;Lcom/google/android/exoplayer2/audio/g0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/g0$c;-><init>(Lcom/google/android/exoplayer2/audio/g0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecAudioRenderer"

    .line 3
    .line 4
    const-string v1, "Audio sink error"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->Z0(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/audio/t$a;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/t$a;->l(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->Z0(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/audio/t$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/t$a;->B(J)V

    .line 10
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->a1(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/m3$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->a1(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/m3$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m3$a;->a()V

    .line 18
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->a1(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/m3$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->a1(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/m3$a;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/exoplayer2/m3$a;->b()V

    .line 18
    :cond_0
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/g0;->h1()V

    .line 6
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->Z0(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/audio/t$a;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/t$a;->C(Z)V

    .line 10
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/g0$c;->this$0:Lcom/google/android/exoplayer2/audio/g0;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->Z0(Lcom/google/android/exoplayer2/audio/g0;)Lcom/google/android/exoplayer2/audio/t$a;

    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/t$a;->D(IJJ)V

    .line 13
    return-void
.end method
