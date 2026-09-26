.class public final Lcom/google/android/exoplayer2/metadata/a;
.super Lcom/google/android/exoplayer2/f;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_INVOKE_RENDERER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MetadataRenderer"


# instance fields
.field private final buffer:Lr2/d;

.field private decoder:Lr2/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final decoderFactory:Lr2/c;

.field private inputStreamEnded:Z

.field private final output:Lr2/e;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputMetadataEarly:Z

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Lr2/e;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lr2/c;->DEFAULT:Lr2/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/a;-><init>(Lr2/e;Landroid/os/Looper;Lr2/c;)V

    return-void
.end method

.method public constructor <init>(Lr2/e;Landroid/os/Looper;Lr2/c;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/metadata/a;-><init>(Lr2/e;Landroid/os/Looper;Lr2/c;Z)V

    return-void
.end method

.method public constructor <init>(Lr2/e;Landroid/os/Looper;Lr2/c;Z)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->output:Lr2/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/o0;->t(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->outputHandler:Landroid/os/Handler;

    .line 6
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr2/c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->decoderFactory:Lr2/c;

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/metadata/a;->outputMetadataEarly:Z

    .line 7
    new-instance p1, Lr2/d;

    invoke-direct {p1}, Lr2/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    return-void
.end method

.method private A(J)J
    .locals 7

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    .line 20
    .line 21
    cmp-long v0, v5, v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    move v3, v4

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 28
    .line 29
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method private B(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->outputHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->C(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 17
    :goto_0
    return-void
.end method

.method private C(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->output:Lr2/e;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lr2/e;->n(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 6
    return-void
.end method

.method private D(J)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/metadata/a;->outputMetadataEarly:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-wide v2, v0, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/a;->A(J)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    cmp-long p1, v2, p1

    .line 18
    .line 19
    if-gtz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->B(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 28
    move p1, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    .line 32
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/a;->inputStreamEnded:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamEnded:Z

    .line 41
    :cond_2
    return p1
.end method

.method private E()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->inputStreamEnded:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->k()Lcom/google/android/exoplayer2/b2;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->w(Lcom/google/android/exoplayer2/b2;Lcom/google/android/exoplayer2/decoder/g;I)I

    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x4

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->inputStreamEnded:Z

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 42
    .line 43
    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/a;->subsampleOffsetUs:J

    .line 44
    .line 45
    iput-wide v1, v0, Lr2/d;->subsampleOffsetUs:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->o()V

    .line 49
    .line 50
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->decoder:Lr2/b;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Lr2/b;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Lr2/b;->a(Lr2/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/a;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 87
    .line 88
    iget-wide v2, v2, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/metadata/a;->A(J)J

    .line 92
    move-result-wide v2

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(JLjava/util/List;)V

    .line 96
    .line 97
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, -0x5

    .line 100
    .line 101
    if-ne v1, v2, :cond_2

    .line 102
    .line 103
    iget-object v0, v0, Lcom/google/android/exoplayer2/b2;->format:Lcom/google/android/exoplayer2/a2;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Lcom/google/android/exoplayer2/a2;

    .line 110
    .line 111
    iget-wide v0, v0, Lcom/google/android/exoplayer2/a2;->subsampleOffsetUs:J

    .line 112
    .line 113
    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->subsampleOffsetUs:J

    .line 114
    :cond_2
    :goto_0
    return-void
.end method

.method private z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->h()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->r()Lcom/google/android/exoplayer2/a2;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->decoderFactory:Lr2/c;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v1}, Lr2/c;->a(Lcom/google/android/exoplayer2/a2;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->decoderFactory:Lr2/c;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Lr2/c;->b(Lcom/google/android/exoplayer2/a2;)Lr2/b;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->q()[B

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, [B

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 51
    .line 52
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 53
    array-length v4, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/g;->n(I)V

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/g;->o()V

    .line 75
    .line 76
    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/a;->buffer:Lr2/d;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2}, Lr2/b;->a(Lr2/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/a;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->g(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/a2;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->decoderFactory:Lr2/c;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lr2/c;->a(Lcom/google/android/exoplayer2/a2;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget p1, p1, Lcom/google/android/exoplayer2/a2;->cryptoType:I

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/n3;->a(I)I

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/google/android/exoplayer2/n3;->a(I)I

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/a;->C(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected p()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/a;->decoder:Lr2/b;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    return-void
.end method

.method protected r(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->inputStreamEnded:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamEnded:Z

    return-void
.end method

.method public render(JJ)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    .line 3
    :goto_0
    if-eqz p3, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/a;->E()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/a;->D(J)Z

    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method protected v([Lcom/google/android/exoplayer2/a2;JJ)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/a;->decoderFactory:Lr2/c;

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    aget-object p1, p1, p3

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Lr2/c;->b(Lcom/google/android/exoplayer2/a2;)Lr2/b;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->decoder:Lr2/b;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-wide p2, p1, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    .line 18
    .line 19
    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    .line 20
    add-long/2addr p2, v0

    .line 21
    sub-long/2addr p2, p4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/Metadata;->e(J)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/a;->pendingMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 28
    .line 29
    :cond_0
    iput-wide p4, p0, Lcom/google/android/exoplayer2/metadata/a;->outputStreamOffsetUs:J

    .line 30
    return-void
.end method
