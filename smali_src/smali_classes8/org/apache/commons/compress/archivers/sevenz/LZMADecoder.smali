.class Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;
.super Lorg/apache/commons/compress/archivers/sevenz/CoderBase;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Class;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const-class v2, Lorg/tukaani/xz/LZMA2Options;

    .line 7
    .line 8
    aput-object v2, v0, v1

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    const-class v2, Ljava/lang/Number;

    .line 12
    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;-><init>([Ljava/lang/Class;)V

    .line 17
    return-void
.end method

.method private getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x4

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([BII)J

    .line 8
    move-result-wide v0

    .line 9
    long-to-int p1, v0

    .line 10
    return p1
.end method

.method private getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->numberOptionOrDefault(Ljava/lang/Object;)I

    .line 16
    move-result p1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 20
    return-object v0
.end method

.method private numberOptionOrDefault(Ljava/lang/Object;)I
    .locals 1

    .line 1
    .line 2
    const/high16 v0, 0x800000

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->numberOptionOrDefault(Ljava/lang/Object;I)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method


# virtual methods
.method decode(Ljava/lang/String;Ljava/io/InputStream;JLorg/apache/commons/compress/archivers/sevenz/Coder;[B)Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p6, p5, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget-byte v5, p6, v0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p5}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 9
    move-result v6

    .line 10
    .line 11
    .line 12
    const p5, 0x7ffffff0

    .line 13
    .line 14
    if-gt v6, p5, :cond_0

    .line 15
    .line 16
    new-instance p1, Lorg/tukaani/xz/LZMAInputStream;

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-wide v3, p3

    .line 20
    .line 21
    .line 22
    invoke-direct/range {v1 .. v6}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;JBI)V

    .line 23
    return-object p1

    .line 24
    .line 25
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 26
    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string p4, "Dictionary larger than 4GiB maximum size used in "

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
.end method

.method encode(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;

    .line 3
    .line 4
    new-instance v1, Lorg/tukaani/xz/LZMAOutputStream;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    .line 8
    move-result-object p2

    .line 9
    const/4 v2, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, p1, p2, v2}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;Z)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lorg/apache/commons/compress/utils/FlushShieldFilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    return-object v0
.end method

.method getOptionsAsProperties(Ljava/lang/Object;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getOptions(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getPb()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    mul-int/2addr v0, v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getLp()I

    .line 14
    move-result v2

    .line 15
    add-int/2addr v0, v2

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x9

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getLc()I

    .line 21
    move-result v2

    .line 22
    add-int/2addr v0, v2

    .line 23
    int-to-byte v0, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    .line 27
    move-result p1

    .line 28
    .line 29
    new-array v1, v1, [B

    .line 30
    const/4 v2, 0x0

    .line 31
    .line 32
    aput-byte v0, v1, v2

    .line 33
    int-to-long v2, p1

    .line 34
    const/4 p1, 0x1

    .line 35
    const/4 v0, 0x4

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v2, v3, p1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->toLittleEndian([BJII)V

    .line 39
    return-object v1
.end method

.method getOptionsFromCoder(Lorg/apache/commons/compress/archivers/sevenz/Coder;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object p2, p1, Lorg/apache/commons/compress/archivers/sevenz/Coder;->properties:[B

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    aget-byte p2, p2, v0

    .line 6
    .line 7
    and-int/lit16 p2, p2, 0xff

    .line 8
    .line 9
    div-int/lit8 v0, p2, 0x2d

    .line 10
    .line 11
    mul-int/lit8 v1, v0, 0x2d

    .line 12
    sub-int/2addr p2, v1

    .line 13
    .line 14
    div-int/lit8 v1, p2, 0x9

    .line 15
    .line 16
    mul-int/lit8 v2, v1, 0x9

    .line 17
    sub-int/2addr p2, v2

    .line 18
    .line 19
    new-instance v2, Lorg/tukaani/xz/LZMA2Options;

    .line 20
    .line 21
    .line 22
    invoke-direct {v2}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Lorg/tukaani/xz/LZMA2Options;->setPb(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2, v1}, Lorg/tukaani/xz/LZMA2Options;->setLcLp(II)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/LZMADecoder;->getDictionarySize(Lorg/apache/commons/compress/archivers/sevenz/Coder;)I

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    .line 36
    return-object v2
.end method
