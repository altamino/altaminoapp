.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field protected final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 11
    return-void
.end method

.method private S()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getRepeatMode()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    :cond_0
    return v0
.end method

.method private T(I)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 4
    move-result v1

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    const/4 v5, 0x1

    .line 11
    move-object v0, p0

    .line 12
    move v4, p1

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->U(IJIZ)V

    .line 16
    return-void
.end method

.method private V(JI)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 4
    move-result v1

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v2, p1

    .line 8
    move v4, p3

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->U(IJIZ)V

    .line 12
    return-void
.end method

.method private W(II)V
    .locals 6

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move v1, p1

    .line 9
    move v4, p2

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->U(IJIZ)V

    .line 13
    return-void
.end method

.method private X(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->Q()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->T(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->W(II)V

    .line 22
    :goto_0
    return-void
.end method

.method private Y(JI)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    .line 9
    move-result-wide p1

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    cmp-long v2, p1, v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 22
    move-result-wide v0

    .line 23
    .line 24
    :cond_0
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 28
    move-result-wide p1

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/BasePlayer;->V(JI)V

    .line 32
    return-void
.end method

.method private Z(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->R()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->T(I)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->W(II)V

    .line 22
    :goto_0
    return-void
.end method


# virtual methods
.method public final C()J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 20
    move-result v1

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->f()J

    .line 30
    move-result-wide v0

    .line 31
    :goto_0
    return-wide v0
.end method

.method public final G()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    const v1, 0x7fffffff

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Landroidx/media3/common/Player;->B(II)V

    .line 8
    return-void
.end method

.method public final J(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->P(Ljava/util/List;)V

    .line 8
    return-void
.end method

.method public final P(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0, p1}, Landroidx/media3/common/Player;->N(ILjava/util/List;)V

    .line 7
    return-void
.end method

.method public final Q()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->S()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->i(IIZ)I

    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public final R()I
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->S()I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    .line 24
    move-result v3

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->p(IIZ)I

    .line 28
    move-result v0

    .line 29
    :goto_0
    return v0
.end method

.method public abstract U(IJIZ)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public final f()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->Q()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final g(I)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->u()Landroidx/media3/common/Player$Commands;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/common/Player$Commands;->c(I)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-interface {p0}, Landroidx/media3/common/Player;->r()I

    .line 17
    move-result v0

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final m()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->j()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    const/16 v2, 0xc

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->Y(JI)V

    .line 10
    return-void
.end method

.method public final n()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->h()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method public final o()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_3

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->w()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->n()Z

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x7

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->k()Z

    .line 32
    move-result v1

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->Z(I)V

    .line 40
    goto :goto_0

    .line 41
    .line 42
    :cond_1
    if-eqz v0, :cond_2

    .line 43
    .line 44
    .line 45
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 46
    move-result-wide v0

    .line 47
    .line 48
    .line 49
    invoke-interface {p0}, Landroidx/media3/common/Player;->i()J

    .line 50
    move-result-wide v3

    .line 51
    .line 52
    cmp-long v0, v0, v3

    .line 53
    .line 54
    if-gtz v0, :cond_2

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, v2}, Landroidx/media3/common/BasePlayer;->Z(I)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_2
    const-wide/16 v0, 0x0

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->V(JI)V

    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 5
    return-void
.end method

.method public final play()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    .line 5
    return-void
.end method

.method public final q()Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v1

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 14
    move-result v1

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->r(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public final seekTo(IJ)V
    .locals 6

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 2
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->U(IJIZ)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/BasePlayer;->V(JI)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->W(II)V

    .line 9
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->u()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->f()Z

    .line 21
    move-result v0

    .line 22
    .line 23
    const/16 v1, 0x9

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1}, Landroidx/media3/common/BasePlayer;->X(I)V

    .line 29
    goto :goto_0

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->n()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->q()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Landroidx/media3/common/Player;->x()I

    .line 45
    move-result v0

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v0, v1}, Landroidx/media3/common/BasePlayer;->W(II)V

    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public final w()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->R()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final y()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/common/Player;->A()J

    .line 4
    move-result-wide v0

    .line 5
    neg-long v0, v0

    .line 6
    .line 7
    const/16 v2, 0xb

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/BasePlayer;->Y(JI)V

    .line 11
    return-void
.end method
