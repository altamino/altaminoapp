.class final Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field private final cues:Lcom/google/common/collect/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUs:J


# direct methods
.method public constructor <init>(JLcom/google/common/collect/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/a0<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/a0;

    .line 8
    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    .line 3
    .line 4
    cmp-long p1, p1, v0

    .line 5
    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/a0;

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    return-object p1
.end method

.method public getEventTime(I)J
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    .line 11
    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
