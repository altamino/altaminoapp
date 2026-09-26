.class public Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 11
    return-void
.end method


# virtual methods
.method public a(II)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->c(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public get(I)B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ByteBufferReadWriteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 6
    move-result p1

    .line 7
    return p1
.end method
