.class Lcom/google/android/exoplayer2/audio/c0$n$a;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/c0$n;-><init>(Lcom/google/android/exoplayer2/audio/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/exoplayer2/audio/c0$n;

.field final synthetic val$this$0:Lcom/google/android/exoplayer2/audio/c0;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/c0$n;Lcom/google/android/exoplayer2/audio/c0;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->val$this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 3
    .line 4
    iget-object p2, p2, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Lcom/google/android/exoplayer2/audio/c0;->t(Lcom/google/android/exoplayer2/audio/c0;)Landroid/media/AudioTrack;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->o(Lcom/google/android/exoplayer2/audio/c0;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/v$c;->d()V

    .line 47
    :cond_1
    return-void
.end method

.method public onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c0;->t(Lcom/google/android/exoplayer2/audio/c0;)Landroid/media/AudioTrack;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    return-void

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 23
    move-result-object p1

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->o(Lcom/google/android/exoplayer2/audio/c0;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$n$a;->this$1:Lcom/google/android/exoplayer2/audio/c0$n;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/exoplayer2/audio/c0$n;->this$0:Lcom/google/android/exoplayer2/audio/c0;

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lcom/google/android/exoplayer2/audio/c0;->u(Lcom/google/android/exoplayer2/audio/c0;)Lcom/google/android/exoplayer2/audio/v$c;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/v$c;->d()V

    .line 47
    :cond_1
    return-void
.end method
