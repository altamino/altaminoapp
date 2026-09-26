.class public Lcom/fasterxml/jackson/core/io/IOContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected _base64Buffer:[B

.field protected final _bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

.field protected _concatCBuffer:[C

.field protected _encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

.field protected final _managedResource:Z

.field protected _nameCopyBuffer:[C

.field protected _readIOBuffer:[B

.field protected final _sourceRef:Ljava/lang/Object;

.field protected _tokenCBuffer:[C

.field protected _writeEncodingBuffer:[B


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;Ljava/lang/Object;Z)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 7
    .line 8
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 11
    .line 12
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 13
    .line 14
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 15
    .line 16
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 17
    .line 18
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    .line 21
    .line 22
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    .line 23
    return-void
.end method

.method private wrongBuf()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 3
    .line 4
    const-string v1, "Trying to release buffer not owned by the context"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 8
    return-object v0
.end method


# virtual methods
.method protected _verifyAlloc(Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 6
    .line 7
    const-string v0, "Trying to call same allocXxx() method second time"

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
.end method

.method protected _verifyRelease([B[B)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 1
    array-length p1, p1

    array-length p2, p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected _verifyRelease([C[C)V
    .locals 0

    if-eq p1, p2, :cond_1

    .line 2
    array-length p1, p1

    array-length p2, p2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/IOContext;->wrongBuf()Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public allocBase64Buffer()[B
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 8
    .line 9
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 16
    return-object v0
.end method

.method public allocConcatBuffer()[C
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 8
    .line 9
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 16
    return-object v0
.end method

.method public allocNameCopyBuffer(I)[C
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 8
    .line 9
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;I)[C

    .line 13
    move-result-object p1

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 16
    return-object p1
.end method

.method public allocReadIOBuffer()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object v0
.end method

.method public allocReadIOBuffer(I)[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    return-object p1
.end method

.method public allocTokenBuffer()[C
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 8
    .line 9
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;)[C

    .line 13
    move-result-object v0

    .line 14
    .line 15
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 16
    return-object v0
.end method

.method public allocWriteEncodingBuffer()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 2
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object v0
.end method

.method public allocWriteEncodingBuffer(I)[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 3
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyAlloc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 4
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    return-object p1
.end method

.method public constructTextBuffer()Lcom/fasterxml/jackson/core/util/TextBuffer;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 8
    return-object v0
.end method

.method public getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-object v0
.end method

.method public getSourceReference()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public isResourceManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_managedResource:Z

    return v0
.end method

.method public releaseBase64Buffer([B)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_base64Buffer:[B

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->BASE64_CODEC_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    .line 18
    :cond_0
    return-void
.end method

.method public releaseConcatBuffer([C)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_concatCBuffer:[C

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->CONCAT_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    .line 18
    :cond_0
    return-void
.end method

.method public releaseNameCopyBuffer([C)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_nameCopyBuffer:[C

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->NAME_COPY_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    .line 18
    :cond_0
    return-void
.end method

.method public releaseReadIOBuffer([B)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_readIOBuffer:[B

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->READ_IO_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    .line 18
    :cond_0
    return-void
.end method

.method public releaseTokenBuffer([C)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([C[C)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_tokenCBuffer:[C

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;->TOKEN_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseCharBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$CharBufferType;[C)V

    .line 18
    :cond_0
    return-void
.end method

.method public releaseWriteEncodingBuffer([B)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->_verifyRelease([B[B)V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_writeEncodingBuffer:[B

    .line 11
    .line 12
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_bufferRecycler:Lcom/fasterxml/jackson/core/util/BufferRecycler;

    .line 13
    .line 14
    sget-object v1, Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;->WRITE_ENCODING_BUFFER:Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->releaseByteBuffer(Lcom/fasterxml/jackson/core/util/BufferRecycler$ByteBufferType;[B)V

    .line 18
    :cond_0
    return-void
.end method

.method public setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/IOContext;->_encoding:Lcom/fasterxml/jackson/core/JsonEncoding;

    return-void
.end method
