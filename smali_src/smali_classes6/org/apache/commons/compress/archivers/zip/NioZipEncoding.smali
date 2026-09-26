.class Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
.implements Lorg/apache/commons/compress/archivers/zip/CharsetAccessor;


# static fields
.field private static final HEX_CHARS:[C

.field private static final REPLACEMENT:C = '?'

.field private static final REPLACEMENT_BYTES:[B

.field private static final REPLACEMENT_STRING:Ljava/lang/String;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final useReplacement:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    const/16 v2, 0x3f

    .line 7
    .line 8
    aput-byte v2, v0, v1

    .line 9
    .line 10
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 11
    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    .line 17
    .line 18
    const/16 v0, 0x10

    .line 19
    .line 20
    new-array v0, v0, [C

    .line 21
    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    sput-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    .line 26
    return-void

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/nio/charset/Charset;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    .line 8
    return-void
.end method

.method private static encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    .line 2
    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 21
    move-result v0

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 25
    move-result v0

    .line 26
    .line 27
    .line 28
    invoke-static {p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return-object p2
.end method

.method private static encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x6

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 10
    .line 11
    const/16 v0, 0x25

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 15
    .line 16
    const/16 v0, 0x55

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 20
    .line 21
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->HEX_CHARS:[C

    .line 22
    .line 23
    shr-int/lit8 v1, p1, 0xc

    .line 24
    .line 25
    and-int/lit8 v1, v1, 0xf

    .line 26
    .line 27
    aget-char v1, v0, v1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 31
    .line 32
    shr-int/lit8 v1, p1, 0x8

    .line 33
    .line 34
    and-int/lit8 v1, v1, 0xf

    .line 35
    .line 36
    aget-char v1, v0, v1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 40
    .line 41
    shr-int/lit8 v1, p1, 0x4

    .line 42
    .line 43
    and-int/lit8 v1, v1, 0xf

    .line 44
    .line 45
    aget-char v1, v0, v1

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 49
    .line 50
    and-int/lit8 p1, p1, 0xf

    .line 51
    .line 52
    aget-char p1, v0, p1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    return-object p0
.end method

.method private static estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I
    .locals 0

    .line 1
    int-to-float p1, p1

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    .line 5
    move-result p0

    .line 6
    mul-float/2addr p1, p0

    .line 7
    float-to-double p0, p1

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 11
    move-result-wide p0

    .line 12
    double-to-int p0, p0

    .line 13
    return p0
.end method

.method private static estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    int-to-float p1, p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    .line 11
    move-result p0

    .line 12
    mul-float/2addr p1, p0

    .line 13
    add-float/2addr v0, p1

    .line 14
    float-to-double p0, v0

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    .line 18
    move-result-wide p0

    .line 19
    double-to-int p0, p0

    .line 20
    return p0
.end method

.method private newDecoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_STRING:Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method private newEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->useReplacement:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    sget-object v1, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->REPLACEMENT_BYTES:[B

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public decode([B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateInitialBufferSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 16
    move-result v1

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    .line 28
    if-lez v3, :cond_7

    .line 29
    const/4 v3, 0x0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 33
    move-result-object v5

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    .line 37
    move-result v6

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    .line 43
    move-result v6

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    goto :goto_1

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 56
    move-result v3

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v3}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 60
    move-result v3

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->length()I

    .line 69
    move-result v6

    .line 70
    const/4 v7, 0x6

    .line 71
    mul-int/2addr v6, v7

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v6}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 75
    move-result v6

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 79
    move-result v8

    .line 80
    .line 81
    if-le v6, v8, :cond_5

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 85
    move-result v6

    .line 86
    move v8, v3

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 90
    move-result v9

    .line 91
    .line 92
    if-ge v6, v9, :cond_4

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v6}, Ljava/nio/CharBuffer;->get(I)C

    .line 96
    move-result v9

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v9}, Ljava/nio/charset/CharsetEncoder;->canEncode(C)Z

    .line 100
    move-result v9

    .line 101
    .line 102
    if-nez v9, :cond_3

    .line 103
    move v9, v7

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    move v9, v4

    .line 106
    :goto_3
    add-int/2addr v8, v9

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    goto :goto_2

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-static {v0, v8}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->estimateIncrementalEncodingSize(Ljava/nio/charset/CharsetEncoder;I)I

    .line 113
    move-result v4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 117
    move-result v6

    .line 118
    sub-int/2addr v4, v6

    .line 119
    .line 120
    .line 121
    invoke-static {v1, v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->growBufferBy(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    .line 122
    move-result-object v1

    .line 123
    .line 124
    :cond_5
    if-nez v2, :cond_6

    .line 125
    .line 126
    .line 127
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 128
    move-result-object v2

    .line 129
    .line 130
    .line 131
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->length()I

    .line 132
    move-result v4

    .line 133
    .line 134
    if-ge v3, v4, :cond_0

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    .line 138
    move-result v4

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v4}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeSurrogate(Ljava/nio/CharBuffer;C)Ljava/nio/CharBuffer;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    .line 145
    invoke-static {v0, v4, v1}, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->encodeFully(Ljava/nio/charset/CharsetEncoder;Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 146
    move-result-object v1

    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    goto :goto_4

    .line 150
    .line 151
    .line 152
    :cond_7
    invoke-virtual {v0, p1, v1, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 156
    move-result p1

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 163
    return-object v1
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/NioZipEncoding;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method
