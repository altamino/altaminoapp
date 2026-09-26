.class final Lcom/google/android/exoplayer2/source/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final format:Lcom/google/android/exoplayer2/a2;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/a2;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/extractor/m;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/a0;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    const p2, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->skip(I)I

    .line 7
    move-result p1

    .line 8
    const/4 p2, -0x1

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    return p2

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/n;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/n;->track(II)Lcom/google/android/exoplayer2/extractor/e0;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$b;

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/n;->h(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/n;->endTracks()V

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2;->b()Lcom/google/android/exoplayer2/a2$b;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    const-string v1, "text/x-unknown"

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a2$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q$b;->format:Lcom/google/android/exoplayer2/a2;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/google/android/exoplayer2/a2;->sampleMimeType:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/a2$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/a2$b;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/a2$b;->E()Lcom/google/android/exoplayer2/a2;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/a2;)V

    .line 50
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method
