.class final Lcom/google/android/exoplayer2/source/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/drm/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

.field private final id:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/g;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->p(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/a;->m(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/g$a;->id:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method private k(ILcom/google/android/exoplayer2/source/b0$b;)Z
    .locals 3
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->id:Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p2}, Lcom/google/android/exoplayer2/source/g;->A(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->id:Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/source/g;->C(Ljava/lang/Object;I)I

    .line 23
    move-result p1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 26
    .line 27
    iget v1, v0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 28
    .line 29
    if-ne v1, p1, :cond_2

    .line 30
    .line 31
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/a;->n(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 50
    .line 51
    iget v1, v0, Lcom/google/android/exoplayer2/drm/v$a;->windowIndex:I

    .line 52
    .line 53
    if-ne v1, p1, :cond_4

    .line 54
    .line 55
    iget-object v0, v0, Lcom/google/android/exoplayer2/drm/v$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-nez v0, :cond_5

    .line 62
    .line 63
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/a;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 70
    :cond_5
    const/4 p1, 0x1

    .line 71
    return p1
.end method

.method private n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;
    .locals 14

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->id:Ljava/lang/Object;

    .line 5
    .line 6
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/x;->mediaStartTimeMs:J

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/g;->B(Ljava/lang/Object;J)J

    .line 10
    move-result-wide v10

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/g$a;->this$0:Lcom/google/android/exoplayer2/source/g;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/g$a;->id:Ljava/lang/Object;

    .line 15
    .line 16
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/x;->mediaEndTimeMs:J

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/g;->B(Ljava/lang/Object;J)J

    .line 20
    move-result-wide v12

    .line 21
    .line 22
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/x;->mediaStartTimeMs:J

    .line 23
    .line 24
    cmp-long v0, v10, v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/x;->mediaEndTimeMs:J

    .line 29
    .line 30
    cmp-long v0, v12, v0

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    return-object p1

    .line 34
    .line 35
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/x;

    .line 36
    .line 37
    iget v5, p1, Lcom/google/android/exoplayer2/source/x;->dataType:I

    .line 38
    .line 39
    iget v6, p1, Lcom/google/android/exoplayer2/source/x;->trackType:I

    .line 40
    .line 41
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/x;->trackFormat:Lcom/google/android/exoplayer2/a2;

    .line 42
    .line 43
    iget v8, p1, Lcom/google/android/exoplayer2/source/x;->trackSelectionReason:I

    .line 44
    .line 45
    iget-object v9, p1, Lcom/google/android/exoplayer2/source/x;->trackSelectionData:Ljava/lang/Object;

    .line 46
    move-object v4, v0

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v4 .. v13}, Lcom/google/android/exoplayer2/source/x;-><init>(IILcom/google/android/exoplayer2/a2;ILjava/lang/Object;JJ)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public G(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/g$a;->n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/h0$a;->i(Lcom/google/android/exoplayer2/source/x;)V

    .line 16
    :cond_0
    return-void
.end method

.method public I(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/g$a;->n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 16
    :cond_0
    return-void
.end method

.method public K(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->i()V

    .line 12
    :cond_0
    return-void
.end method

.method public synthetic L(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/o;->a(Lcom/google/android/exoplayer2/drm/v;ILcom/google/android/exoplayer2/source/b0$b;)V

    return-void
.end method

.method public O(ILcom/google/android/exoplayer2/source/b0$b;Ljava/lang/Exception;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/v$a;->l(Ljava/lang/Exception;)V

    .line 12
    :cond_0
    return-void
.end method

.method public S(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/g$a;->n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->r(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 16
    :cond_0
    return-void
.end method

.method public T(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->m()V

    .line 12
    :cond_0
    return-void
.end method

.method public j(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/g$a;->n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/source/h0$a;->p(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 16
    :cond_0
    return-void
.end method

.method public q(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->h()V

    .line 12
    :cond_0
    return-void
.end method

.method public r(ILcom/google/android/exoplayer2/source/b0$b;I)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/drm/v$a;->k(I)V

    .line 12
    :cond_0
    return-void
.end method

.method public s(ILcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/g$a;->n(Lcom/google/android/exoplayer2/source/x;)Lcom/google/android/exoplayer2/source/x;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/android/exoplayer2/source/h0$a;->t(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 16
    :cond_0
    return-void
.end method

.method public v(ILcom/google/android/exoplayer2/source/b0$b;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/g$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/g$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->j()V

    .line 12
    :cond_0
    return-void
.end method
