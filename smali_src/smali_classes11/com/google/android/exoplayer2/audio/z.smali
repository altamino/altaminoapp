.class public abstract Lcom/google/android/exoplayer2/audio/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/g;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field protected inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private inputEnded:Z

.field protected outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

.field private pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/g$b;
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/z;->c(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->isActive()Z

    .line 12
    move-result p1

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 20
    :goto_0
    return-object p1
.end method

.method protected final b()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected c(Lcom/google/android/exoplayer2/audio/g$a;)Lcom/google/android/exoplayer2/audio/g$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/g$b;
        }
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3
    return-object p1
.end method

.method protected d()V
    .locals 0

    .line 1
    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    return-void
.end method

.method protected f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputEnded:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->d()V

    .line 19
    return-void
.end method

.method protected final g(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 33
    return-object p1
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final queueEndOfStream()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputEnded:Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->e()V

    .line 7
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->flush()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/audio/g;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->buffer:Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/exoplayer2/audio/g$a;->NOT_SET:Lcom/google/android/exoplayer2/audio/g$a;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingInputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->pendingOutputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/z;->outputAudioFormat:Lcom/google/android/exoplayer2/audio/g$a;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/z;->f()V

    .line 21
    return-void
.end method
