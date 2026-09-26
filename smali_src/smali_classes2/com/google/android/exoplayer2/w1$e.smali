.class public final Lcom/google/android/exoplayer2/w1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public discontinuityReason:I

.field private hasPendingChange:Z

.field public hasPlayWhenReadyChangeReason:Z

.field public operationAcks:I

.field public playWhenReadyChangeReason:I

.field public playbackInfo:Lcom/google/android/exoplayer2/a3;

.field public positionDiscontinuity:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a3;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    .line 6
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/w1$e;)Z
    .locals 0

    .line 1
    .line 2
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    .line 3
    return p0
.end method


# virtual methods
.method public b(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    iget v0, p0, Lcom/google/android/exoplayer2/w1$e;->operationAcks:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/w1$e;->operationAcks:I

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPlayWhenReadyChangeReason:Z

    iput p1, p0, Lcom/google/android/exoplayer2/w1$e;->playWhenReadyChangeReason:I

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/a3;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/w1$e;->playbackInfo:Lcom/google/android/exoplayer2/a3;

    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/w1$e;->positionDiscontinuity:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/exoplayer2/w1$e;->discontinuityReason:I

    .line 8
    const/4 v2, 0x5

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    if-ne p1, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 18
    return-void

    .line 19
    .line 20
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/w1$e;->hasPendingChange:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/w1$e;->positionDiscontinuity:Z

    .line 23
    .line 24
    iput p1, p0, Lcom/google/android/exoplayer2/w1$e;->discontinuityReason:I

    .line 25
    return-void
.end method
