.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiteralBlock"
.end annotation


# instance fields
.field private final data:[B

.field private final length:I

.field private final offset:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    .line 6
    .line 7
    iput p2, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    .line 8
    .line 9
    iput p3, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    .line 10
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->data:[B

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    return v0
.end method

.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->LITERAL:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "LiteralBlock starting at "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->offset:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, " with length "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget v1, p0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;->length:I

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
