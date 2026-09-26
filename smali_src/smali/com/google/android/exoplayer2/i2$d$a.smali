.class public final Lcom/google/android/exoplayer2/i2$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i2$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private endPositionMs:J

.field private relativeToDefaultPosition:Z

.field private relativeToLiveWindow:Z

.field private startPositionMs:J

.field private startsAtKeyFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->endPositionMs:J

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/i2$d;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$d;->startPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->startPositionMs:J

    .line 5
    iget-wide v0, p1, Lcom/google/android/exoplayer2/i2$d;->endPositionMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->endPositionMs:J

    .line 6
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/i2$d;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToLiveWindow:Z

    .line 7
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/i2$d;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToDefaultPosition:Z

    .line 8
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/i2$d;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->startsAtKeyFrame:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/i2$d;Lcom/google/android/exoplayer2/i2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i2$d$a;-><init>(Lcom/google/android/exoplayer2/i2$d;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/i2$d$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->startPositionMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/i2$d$a;)J
    .locals 2

    .line 1
    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/i2$d$a;->endPositionMs:J

    .line 3
    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/i2$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToLiveWindow:Z

    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/i2$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToDefaultPosition:Z

    .line 3
    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/i2$d$a;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/i2$d$a;->startsAtKeyFrame:Z

    .line 3
    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/i2$d;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/i2$d$a;->g()Lcom/google/android/exoplayer2/i2$e;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Lcom/google/android/exoplayer2/i2$e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/i2$e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i2$e;-><init>(Lcom/google/android/exoplayer2/i2$d$a;Lcom/google/android/exoplayer2/i2$a;)V

    .line 7
    return-object v0
.end method

.method public h(J)Lcom/google/android/exoplayer2/i2$d$a;
    .locals 2

    .line 1
    .line 2
    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-ltz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 20
    .line 21
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->endPositionMs:J

    .line 22
    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/i2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToDefaultPosition:Z

    return-object p0
.end method

.method public j(Z)Lcom/google/android/exoplayer2/i2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->relativeToLiveWindow:Z

    return-object p0
.end method

.method public k(J)Lcom/google/android/exoplayer2/i2$d$a;
    .locals 2
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    cmp-long v0, p1, v0

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->startPositionMs:J

    .line 15
    return-object p0
.end method

.method public l(Z)Lcom/google/android/exoplayer2/i2$d$a;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i2$d$a;->startsAtKeyFrame:Z

    return-object p0
.end method
