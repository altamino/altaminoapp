.class public final Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$EOD;
.super Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EOD"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getType()Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;->EOD:Lorg/apache/commons/compress/compressors/lz77support/LZ77Compressor$Block$BlockType;

    .line 3
    return-object v0
.end method
