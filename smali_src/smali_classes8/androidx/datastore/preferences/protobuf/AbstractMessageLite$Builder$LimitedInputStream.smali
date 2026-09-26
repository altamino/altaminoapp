.class final Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LimitedInputStream"
.end annotation


# instance fields
.field private limit:I


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    iget p2, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    :cond_1
    return p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 3
    int-to-long v0, v0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 7
    move-result-wide p1

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 11
    move-result-wide p1

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v0, p1, v0

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    iget v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 20
    int-to-long v0, v0

    .line 21
    sub-long/2addr v0, p1

    .line 22
    long-to-int v0, v0

    .line 23
    .line 24
    iput v0, p0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite$Builder$LimitedInputStream;->limit:I

    .line 25
    :cond_0
    return-wide p1
.end method
