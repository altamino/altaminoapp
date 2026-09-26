.class public Lcom/google/android/exoplayer2/extractor/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/m;


# instance fields
.field private final input:Lcom/google/android/exoplayer2/extractor/m;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 6
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/m;->a([BII)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(I)V

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 1
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->advancePeekPosition(IZ)Z

    move-result p1

    return p1
.end method

.method public getLength()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->getLength()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->getPeekPosition()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->getPosition()J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BII)V

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/m;->peekFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/m;->read([BII)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BII)V

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/m;->readFully([BIIZ)Z

    move-result p1

    return p1
.end method

.method public resetPeekPosition()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->resetPeekPosition()V

    .line 6
    return-void
.end method

.method public skip(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/m;->skip(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/w;->input:Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/m;->skipFully(I)V

    .line 6
    return-void
.end method
