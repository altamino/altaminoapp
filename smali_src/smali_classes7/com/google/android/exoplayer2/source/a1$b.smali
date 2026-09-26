.class final Lcom/google/android/exoplayer2/source/a1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# static fields
.field private static final STREAM_STATE_END_OF_STREAM:I = 0x2

.field private static final STREAM_STATE_SEND_FORMAT:I = 0x0

.field private static final STREAM_STATE_SEND_SAMPLE:I = 0x1


# instance fields
.field private notifiedDownstreamFormat:Z

.field private streamState:I

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/a1;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/a1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/a1;Lcom/google/android/exoplayer2/source/a1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/a1$b;-><init>(Lcom/google/android/exoplayer2/source/a1;)V

    return-void
.end method

.method private b()V
    .locals 8

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->notifiedDownstreamFormat:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/a1;->a(Lcom/google/android/exoplayer2/source/a1;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/x;->i(Ljava/lang/String;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    .line 28
    const-wide/16 v6, 0x0

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/h0$a;->h(ILcom/google/android/exoplayer2/a2;ILjava/lang/Object;J)V

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->notifiedDownstreamFormat:Z

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a1$b;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 8
    const/4 v2, 0x2

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/a1;->sampleData:[B

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    iput v2, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 17
    .line 18
    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 19
    const/4 v4, -0x4

    .line 20
    .line 21
    if-ne v3, v2, :cond_1

    .line 22
    const/4 p1, 0x4

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 26
    return v4

    .line 27
    .line 28
    :cond_1
    and-int/lit8 v5, p3, 0x2

    .line 29
    const/4 v6, 0x1

    .line 30
    .line 31
    if-nez v5, :cond_6

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    if-nez v1, :cond_3

    .line 37
    const/4 p1, -0x3

    .line 38
    return p1

    .line 39
    .line 40
    :cond_3
    iget-object p1, v0, Lcom/google/android/exoplayer2/source/a1;->sampleData:[B

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v6}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 47
    .line 48
    const-wide/16 v0, 0x0

    .line 49
    .line 50
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 51
    .line 52
    and-int/lit8 p1, p3, 0x4

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 57
    .line 58
    iget p1, p1, Lcom/google/android/exoplayer2/source/a1;->sampleSize:I

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/g;->n(I)V

    .line 62
    .line 63
    iget-object p1, p2, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 64
    .line 65
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 66
    .line 67
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/a1;->sampleData:[B

    .line 68
    const/4 v1, 0x0

    .line 69
    .line 70
    iget p2, p2, Lcom/google/android/exoplayer2/source/a1;->sampleSize:I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    :cond_4
    and-int/lit8 p1, p3, 0x1

    .line 76
    .line 77
    if-nez p1, :cond_5

    .line 78
    .line 79
    iput v2, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 80
    :cond_5
    return v4

    .line 81
    .line 82
    :cond_6
    :goto_0
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/a1;->format:Lcom/google/android/exoplayer2/a2;

    .line 83
    .line 84
    iput-object p2, p1, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 85
    .line 86
    iput v6, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 87
    const/4 p1, -0x5

    .line 88
    return p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/a1;->loadingFinished:Z

    .line 5
    return v0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a1$b;->this$0:Lcom/google/android/exoplayer2/source/a1;

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/a1;->treatLoadErrorsAsEndOfStream:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/a1;->loader:Lcom/google/android/exoplayer2/upstream/g0;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/g0;->j()V

    .line 12
    :cond_0
    return-void
.end method

.method public skipData(J)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a1$b;->b()V

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p1, p1, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget p1, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 12
    const/4 p2, 0x2

    .line 13
    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    iput p2, p0, Lcom/google/android/exoplayer2/source/a1$b;->streamState:I

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method
