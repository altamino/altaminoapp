.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodingMemory"
.end annotation


# instance fields
.field private final mask:I

.field private final memory:[B

.field private wHead:I

.field private wrappedAround:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 2
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>()V

    return-void
.end method

.method private incCounter(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    if-nez v1, :cond_0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    :cond_0
    return v0
.end method


# virtual methods
.method add(B)B
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 1
    aput-byte p1, v0, v1

    .line 2
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    return p1
.end method

.method add([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 3
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method recordToBuffer(II[B)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 3
    array-length v0, v0

    .line 4
    .line 5
    if-gt p1, v0, :cond_3

    .line 6
    .line 7
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 8
    .line 9
    sub-int v1, v0, p1

    .line 10
    .line 11
    iget v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    .line 12
    and-int/2addr v1, v2

    .line 13
    .line 14
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    if-ge v1, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    const-string v0, "Attempt to read beyond memory: dist="

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    .line 41
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p2

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 44
    .line 45
    :goto_1
    if-ge p1, p2, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 48
    .line 49
    aget-byte v0, v0, v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    .line 53
    move-result v0

    .line 54
    .line 55
    aput-byte v0, p3, p1

    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    .line 61
    move-result v1

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-void

    .line 64
    .line 65
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    new-instance p3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v0, "Illegal distance parameter: "

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    .line 84
    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p2
.end method
