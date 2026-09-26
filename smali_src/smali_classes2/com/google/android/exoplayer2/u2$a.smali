.class final Lcom/google/android/exoplayer2/u2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h0;
.implements Lcom/google/android/exoplayer2/drm/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

.field private final id:Lcom/google/android/exoplayer2/u2$c;

.field private mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

.field final synthetic this$0:Lcom/google/android/exoplayer2/u2;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/u2;Lcom/google/android/exoplayer2/u2$c;)V
    .locals 1

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->this$0:Lcom/google/android/exoplayer2/u2;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/u2;->b(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/exoplayer2/u2;->c(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/google/android/exoplayer2/u2$a;->id:Lcom/google/android/exoplayer2/u2$c;

    .line 20
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
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->id:Lcom/google/android/exoplayer2/u2$c;

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/u2;->d(Lcom/google/android/exoplayer2/u2$c;Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 8
    move-result-object p2

    .line 9
    .line 10
    if-nez p2, :cond_1

    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->id:Lcom/google/android/exoplayer2/u2$c;

    .line 16
    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/u2;->e(Lcom/google/android/exoplayer2/u2$c;I)I

    .line 19
    move-result p1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 22
    .line 23
    iget v1, v0, Lcom/google/android/exoplayer2/source/h0$a;->windowIndex:I

    .line 24
    .line 25
    if-ne v1, p1, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/h0$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/o0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v0

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->this$0:Lcom/google/android/exoplayer2/u2;

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/exoplayer2/u2;->b(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    const-wide/16 v1, 0x0

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/h0$a;->x(ILcom/google/android/exoplayer2/source/b0$b;J)Lcom/google/android/exoplayer2/source/h0$a;

    .line 45
    move-result-object v0

    .line 46
    .line 47
    iput-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 48
    .line 49
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/u2$a;->this$0:Lcom/google/android/exoplayer2/u2;

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/u2;->c(Lcom/google/android/exoplayer2/u2;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/v$a;->u(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/drm/v$a;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    iput-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 74
    :cond_5
    const/4 p1, 0x1

    .line 75
    return p1
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/h0$a;->i(Lcom/google/android/exoplayer2/source/x;)V

    .line 12
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->v(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 12
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->r(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 12
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/source/h0$a;->p(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;)V

    .line 12
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/h0$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/h0$a;->t(Lcom/google/android/exoplayer2/source/u;Lcom/google/android/exoplayer2/source/x;Ljava/io/IOException;Z)V

    .line 12
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
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/u2$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 4
    move-result p1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/u2$a;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/v$a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/drm/v$a;->j()V

    .line 12
    :cond_0
    return-void
.end method
