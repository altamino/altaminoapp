.class public final Lcom/google/android/exoplayer2/i2$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private maxOffsetMs:J

.field private maxPlaybackSpeed:F

.field private minOffsetMs:J

.field private minPlaybackSpeed:F

.field private targetOffsetMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxOffsetMs:J

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxPlaybackSpeed:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$g;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->targetOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->targetOffsetMs:J

    .line 5
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->minOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minOffsetMs:J

    .line 6
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$g;->maxOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxOffsetMs:J

    .line 7
    iget v0, p1, Lcom/google/android/exoplayer2/i2$g;->minPlaybackSpeed:F

    iput v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minPlaybackSpeed:F

    .line 8
    iget p1, p1, Lcom/google/android/exoplayer2/i2$g;->maxPlaybackSpeed:F

    iput p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxPlaybackSpeed:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$g;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$g$a;-><init>(Lcom/google/android/exoplayer2/i2$g;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/i2$g$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->targetOffsetMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/i2$g$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minOffsetMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/i2$g$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxOffsetMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/i2$g$a;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/i2$g$a;->minPlaybackSpeed:F

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/i2$g$a;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxPlaybackSpeed:F

    .line 3
    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/i2$g;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$g;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$g;-><init>(Lcom/google/android/exoplayer2/i2$g$a;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public g(J)Lcom/google/android/exoplayer2/i2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxOffsetMs:J

    return-object p0
.end method

.method public h(F)Lcom/google/android/exoplayer2/i2$g$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->maxPlaybackSpeed:F

    return-object p0
.end method

.method public i(J)Lcom/google/android/exoplayer2/i2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->minOffsetMs:J

    return-object p0
.end method

.method public j(F)Lcom/google/android/exoplayer2/i2$g$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->minPlaybackSpeed:F

    return-object p0
.end method

.method public k(J)Lcom/google/android/exoplayer2/i2$g$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$g$a;->targetOffsetMs:J

    return-object p0
.end method
