.class public abstract Lcom/google/android/exoplayer2/text/h;
.super Lcom/google/android/exoplayer2/decoder/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/decoder/j<",
        "Lcom/google/android/exoplayer2/text/n;",
        "Lcom/google/android/exoplayer2/text/o;",
        "Lcom/google/android/exoplayer2/text/k;",
        ">;",
        "Lcom/google/android/exoplayer2/text/j;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v1, v0, [Lcom/google/android/exoplayer2/text/n;

    .line 4
    .line 5
    new-array v0, v0, [Lcom/google/android/exoplayer2/text/o;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/decoder/j;-><init>([Lcom/google/android/exoplayer2/decoder/g;[Lcom/google/android/exoplayer2/decoder/h;)V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/h;->name:Ljava/lang/String;

    .line 11
    .line 12
    const/16 p1, 0x400

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/j;->q(I)V

    .line 16
    return-void
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/text/h;Lcom/google/android/exoplayer2/decoder/h;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/j;->n(Lcom/google/android/exoplayer2/decoder/h;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic c()Lcom/google/android/exoplayer2/decoder/g;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/h;->s()Lcom/google/android/exoplayer2/text/n;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic d()Lcom/google/android/exoplayer2/decoder/h;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/h;->t()Lcom/google/android/exoplayer2/text/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/f;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/h;->u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/k;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic f(Lcom/google/android/exoplayer2/decoder/g;Lcom/google/android/exoplayer2/decoder/h;Z)Lcom/google/android/exoplayer2/decoder/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/text/n;

    .line 3
    .line 4
    check-cast p2, Lcom/google/android/exoplayer2/text/o;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/h;->w(Lcom/google/android/exoplayer2/text/n;Lcom/google/android/exoplayer2/text/o;Z)Lcom/google/android/exoplayer2/text/k;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected final s()Lcom/google/android/exoplayer2/text/n;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/n;-><init>()V

    .line 6
    return-object v0
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method

.method protected final t()Lcom/google/android/exoplayer2/text/o;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/h$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/text/h$a;-><init>(Lcom/google/android/exoplayer2/text/h;)V

    .line 6
    return-object v0
.end method

.method protected final u(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/text/k;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/text/k;

    .line 3
    .line 4
    const-string v1, "Unexpected decode error"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/text/k;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    return-object v0
.end method

.method protected abstract v([BIZ)Lcom/google/android/exoplayer2/text/i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation
.end method

.method protected final w(Lcom/google/android/exoplayer2/text/n;Lcom/google/android/exoplayer2/text/o;Z)Lcom/google/android/exoplayer2/text/k;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 12
    move-result-object v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 16
    move-result v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1, v0, p3}, Lcom/google/android/exoplayer2/text/h;->v([BIZ)Lcom/google/android/exoplayer2/text/i;

    .line 20
    move-result-object v5

    .line 21
    .line 22
    iget-wide v3, p1, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 23
    .line 24
    iget-wide v6, p1, Lcom/google/android/exoplayer2/text/n;->subsampleOffsetUs:J

    .line 25
    move-object v2, p2

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/exoplayer2/text/o;->n(JLcom/google/android/exoplayer2/text/i;J)V

    .line 29
    .line 30
    const/high16 p1, -0x80000000

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/a;->c(I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/k; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    return-object p1
.end method
