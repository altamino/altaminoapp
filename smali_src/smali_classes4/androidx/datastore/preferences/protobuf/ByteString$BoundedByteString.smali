.class final Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;
.super Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundedByteString"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytesLength:I

.field private final bytesOffset:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 4
    .line 5
    add-int v0, p2, p3

    .line 6
    array-length p1, p1

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->f(III)I

    .line 10
    .line 11
    iput p2, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 12
    .line 13
    iput p3, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesLength:I

    .line 14
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Ljava/io/InvalidObjectException;

    .line 3
    .line 4
    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    return v0
.end method

.method public d(I)B
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/ByteString;->e(II)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 10
    .line 11
    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 12
    add-int/2addr v1, p1

    .line 13
    .line 14
    aget-byte p1, v0, v1

    .line 15
    return p1
.end method

.method protected s([BIII)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->P()I

    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, p2

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesLength:I

    return v0
.end method

.method u(I)B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->bytes:[B

    .line 3
    .line 4
    iget v1, p0, Landroidx/datastore/preferences/protobuf/ByteString$BoundedByteString;->bytesOffset:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    .line 7
    aget-byte p1, v0, v1

    .line 8
    return p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/ByteString;->E()[B

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/ByteString;->K([B)Landroidx/datastore/preferences/protobuf/ByteString;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
