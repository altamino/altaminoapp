.class public Lcom/google/android/exoplayer2/mediacodec/m;
.super Lcom/google/android/exoplayer2/decoder/f;
.source "SourceFile"


# instance fields
.field public final codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final diagnosticInfo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/mediacodec/n;)V
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/mediacodec/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Decoder failed: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    move-object v2, v1

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v2, p2, Lcom/google/android/exoplayer2/mediacodec/n;->name:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/decoder/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/m;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/n;

    .line 30
    .line 31
    sget p2, Lcom/google/android/exoplayer2/util/o0;->SDK_INT:I

    .line 32
    .line 33
    const/16 v0, 0x15

    .line 34
    .line 35
    if-lt p2, v0, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/google/android/exoplayer2/mediacodec/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/m;->diagnosticInfo:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method
