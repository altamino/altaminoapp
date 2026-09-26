.class final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Data"
.end annotation


# instance fields
.field final block:[B

.field final fmap:[I

.field final generateMTFValues_yy:[B

.field final heap:[I

.field final inUse:[Z

.field final mtfFreq:[I

.field origPtr:I

.field final parent:[I

.field final selector:[B

.field final selectorMtf:[B

.field final sendMTFValues2_pos:[B

.field final sendMTFValues_code:[[I

.field final sendMTFValues_cost:[S

.field final sendMTFValues_fave:[I

.field final sendMTFValues_len:[[B

.field final sendMTFValues_rfreq:[[I

.field final sentMTFValues4_inUse16:[Z

.field final sfmap:[C

.field final unseqToSeq:[B

.field final weight:[I


# direct methods
.method constructor <init>(I)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x100

    .line 6
    .line 7
    new-array v1, v0, [Z

    .line 8
    .line 9
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->inUse:[Z

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->unseqToSeq:[B

    .line 14
    .line 15
    const/16 v1, 0x102

    .line 16
    .line 17
    new-array v2, v1, [I

    .line 18
    .line 19
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->mtfFreq:[I

    .line 20
    .line 21
    const/16 v2, 0x4652

    .line 22
    .line 23
    new-array v3, v2, [B

    .line 24
    .line 25
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selector:[B

    .line 26
    .line 27
    new-array v2, v2, [B

    .line 28
    .line 29
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->selectorMtf:[B

    .line 30
    .line 31
    new-array v0, v0, [B

    .line 32
    .line 33
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->generateMTFValues_yy:[B

    .line 34
    const/4 v0, 0x6

    .line 35
    .line 36
    .line 37
    filled-new-array {v0, v1}, [I

    .line 38
    move-result-object v2

    .line 39
    .line 40
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    check-cast v2, [[B

    .line 47
    .line 48
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_len:[[B

    .line 49
    .line 50
    .line 51
    filled-new-array {v0, v1}, [I

    .line 52
    move-result-object v2

    .line 53
    .line 54
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    check-cast v2, [[I

    .line 61
    .line 62
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_rfreq:[[I

    .line 63
    .line 64
    new-array v2, v0, [I

    .line 65
    .line 66
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_fave:[I

    .line 67
    .line 68
    new-array v2, v0, [S

    .line 69
    .line 70
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_cost:[S

    .line 71
    .line 72
    .line 73
    filled-new-array {v0, v1}, [I

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    check-cast v1, [[I

    .line 81
    .line 82
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues_code:[[I

    .line 83
    .line 84
    new-array v0, v0, [B

    .line 85
    .line 86
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sendMTFValues2_pos:[B

    .line 87
    .line 88
    const/16 v0, 0x10

    .line 89
    .line 90
    new-array v0, v0, [Z

    .line 91
    .line 92
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sentMTFValues4_inUse16:[Z

    .line 93
    .line 94
    const/16 v0, 0x104

    .line 95
    .line 96
    new-array v0, v0, [I

    .line 97
    .line 98
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->heap:[I

    .line 99
    .line 100
    const/16 v0, 0x204

    .line 101
    .line 102
    new-array v1, v0, [I

    .line 103
    .line 104
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->weight:[I

    .line 105
    .line 106
    new-array v0, v0, [I

    .line 107
    .line 108
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->parent:[I

    .line 109
    .line 110
    .line 111
    const v0, 0x186a0

    .line 112
    mul-int/2addr v0, p1

    .line 113
    .line 114
    add-int/lit8 v1, v0, 0x15

    .line 115
    .line 116
    new-array v1, v1, [B

    .line 117
    .line 118
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 119
    .line 120
    new-array v0, v0, [I

    .line 121
    .line 122
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 123
    .line 124
    .line 125
    const v0, 0x30d40

    .line 126
    mul-int/2addr p1, v0

    .line 127
    .line 128
    new-array p1, p1, [C

    .line 129
    .line 130
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    .line 131
    return-void
.end method
