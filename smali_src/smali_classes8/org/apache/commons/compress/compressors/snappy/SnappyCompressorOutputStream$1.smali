.class Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;-><init>(Ljava/io/OutputStream;JLorg/apache/commons/compress/compressors/lz77support/Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public accept(Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$2;->$SwitchMap$org$apache$commons$compress$compressors$lz77support$LZ77Compressor$Block$BlockType:[I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;->getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x1

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    const/4 v1, 0x2

    .line 17
    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    .line 22
    .line 23
    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->access$100(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$BackReference;)V

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream$1;->this$0:Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;

    .line 30
    .line 31
    check-cast p1, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;

    .line 32
    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;->access$000(Lorg/apache/commons/compress/compressors/snappy/SnappyCompressorOutputStream;Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$LiteralBlock;)V

    .line 35
    :goto_0
    return-void
.end method
