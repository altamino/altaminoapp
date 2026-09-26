.class public final Lcom/google/android/exoplayer2/audio/c0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

.field audioOffloadListener:Lcom/google/android/exoplayer2/s$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

.field private enableAudioTrackPlaybackParams:Z

.field private enableFloatOutput:Z

.field private offloadMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/exoplayer2/audio/f;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplayer2/audio/f;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput v0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->offloadMode:I

    .line 11
    .line 12
    sget-object v0, Lcom/google/android/exoplayer2/audio/c0$f;->DEFAULT:Lcom/google/android/exoplayer2/audio/c0$f;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioTrackBufferSizeProvider:Lcom/google/android/exoplayer2/audio/c0$f;

    .line 15
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/c0$g;)Lcom/google/android/exoplayer2/audio/f;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/c0$g;)Lcom/google/android/exoplayer2/audio/h;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/c0$g;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->enableFloatOutput:Z

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/c0$g;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->enableAudioTrackPlaybackParams:Z

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/c0$g;)I
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->offloadMode:I

    .line 3
    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/audio/c0;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$i;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/g;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/c0$i;-><init>([Lcom/google/android/exoplayer2/audio/g;)V

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/c0;-><init>(Lcom/google/android/exoplayer2/audio/c0$g;Lcom/google/android/exoplayer2/audio/c0$a;)V

    .line 21
    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioCapabilities:Lcom/google/android/exoplayer2/audio/f;

    .line 6
    return-object p0
.end method

.method public h(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/c0$g;->audioProcessorChain:Lcom/google/android/exoplayer2/audio/h;

    .line 6
    return-object p0
.end method

.method public i([Lcom/google/android/exoplayer2/audio/g;)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/audio/c0$i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/audio/c0$i;-><init>([Lcom/google/android/exoplayer2/audio/g;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/c0$g;->h(Lcom/google/android/exoplayer2/audio/h;)Lcom/google/android/exoplayer2/audio/c0$g;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public j(Z)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c0$g;->enableAudioTrackPlaybackParams:Z

    return-object p0
.end method

.method public k(Z)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/c0$g;->enableFloatOutput:Z

    return-object p0
.end method

.method public l(I)Lcom/google/android/exoplayer2/audio/c0$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/audio/c0$g;->offloadMode:I

    return-object p0
.end method
