.class public final Lcom/google/android/exoplayer2/source/b1;
.super Lcom/google/android/exoplayer2/source/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b1$b;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final dataSpec:Lcom/google/android/exoplayer2/upstream/o;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplayer2/a2;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

.field private final mediaItem:Lcom/google/android/exoplayer2/i2;

.field private final timeline:Lcom/google/android/exoplayer2/z3;

.field private transferListener:Lcom/google/android/exoplayer2/upstream/m0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/b1;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    move-wide v2, p4

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/b1;->durationUs:J

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/b1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    move/from16 v4, p7

    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/b1;->treatLoadErrorsAsEndOfStream:Z

    .line 3
    new-instance v4, Lcom/google/android/exoplayer2/i2$c;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/i2$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/i2$c;->g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/i2$c;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/i2$l;->uri:Landroid/net/Uri;

    .line 5
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/i2$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/i2$c;

    move-result-object v4

    .line 6
    invoke-static {p2}, Lcom/google/common/collect/a0;->y(Ljava/lang/Object;)Lcom/google/common/collect/a0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/i2$c;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/i2$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 7
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/i2$c;->f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/i2$c;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/i2$c;->a()Lcom/google/android/exoplayer2/i2;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/b1;->mediaItem:Lcom/google/android/exoplayer2/i2;

    .line 9
    new-instance v4, Lcom/google/android/exoplayer2/a2$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/a2$b;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplayer2/i2$l;->mimeType:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 10
    invoke-static {v5, v6}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/i2$l;->language:Ljava/lang/String;

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/i2$l;->selectionFlags:I

    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->g0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/i2$l;->roleFlags:I

    .line 13
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->c0(I)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/i2$l;->label:Ljava/lang/String;

    .line 14
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    .line 15
    iget-object v5, v1, Lcom/google/android/exoplayer2/i2$l;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/a2$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/b1;->format:Lcom/google/android/exoplayer2/a2;

    .line 17
    new-instance v4, Lcom/google/android/exoplayer2/upstream/o$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/o$b;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/i2$l;->uri:Landroid/net/Uri;

    .line 18
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/upstream/o$b;->h(Landroid/net/Uri;)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 19
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/upstream/o$b;->b(I)Lcom/google/android/exoplayer2/upstream/o$b;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/o$b;->a()Lcom/google/android/exoplayer2/upstream/o;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/b1;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 21
    new-instance v9, Lcom/google/android/exoplayer2/source/z0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/source/z0;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/i2;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/b1;->timeline:Lcom/google/android/exoplayer2/z3;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/b1$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/b1;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/i2$l;Lcom/google/android/exoplayer2/upstream/k$a;JLcom/google/android/exoplayer2/upstream/f0;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/source/b0$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/y;
    .locals 10

    .line 1
    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/source/a1;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/b1;->dataSpec:Lcom/google/android/exoplayer2/upstream/o;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/b1;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/b1;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/b1;->format:Lcom/google/android/exoplayer2/a2;

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/b1;->durationUs:J

    .line 13
    .line 14
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/b1;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/f0;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->p(Lcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/source/h0$a;

    .line 18
    move-result-object v8

    .line 19
    .line 20
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/b1;->treatLoadErrorsAsEndOfStream:Z

    .line 21
    move-object v0, p2

    .line 22
    .line 23
    .line 24
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/a1;-><init>(Lcom/google/android/exoplayer2/upstream/o;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/m0;Lcom/google/android/exoplayer2/a2;JLcom/google/android/exoplayer2/upstream/f0;Lcom/google/android/exoplayer2/source/h0$a;Z)V

    .line 25
    return-object p2
.end method

.method public f(Lcom/google/android/exoplayer2/source/y;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/a1;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/a1;->k()V

    .line 6
    return-void
.end method

.method public j()Lcom/google/android/exoplayer2/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b1;->mediaItem:Lcom/google/android/exoplayer2/i2;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected w(Lcom/google/android/exoplayer2/upstream/m0;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/m0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b1;->transferListener:Lcom/google/android/exoplayer2/upstream/m0;

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b1;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/z3;)V

    .line 8
    return-void
.end method

.method protected y()V
    .locals 0

    .line 1
    return-void
.end method
