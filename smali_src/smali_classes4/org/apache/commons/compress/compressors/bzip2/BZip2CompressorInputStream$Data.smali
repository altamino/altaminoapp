.class final Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data"
.end annotation


# instance fields
.field final base:[[I

.field final cftab:[I

.field final getAndMoveToFrontDecode_yy:[C

.field final inUse:[Z

.field final limit:[[I

.field ll8:[B

.field final minLens:[I

.field final perm:[[I

.field final recvDecodingTables_pos:[B

.field final selector:[B

.field final selectorMtf:[B

.field final seqToUnseq:[B

.field final temp_charArray2d:[[C

.field tt:[I

.field final unzftab:[I


# direct methods
.method constructor <init>(I)V
    .locals 5

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
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->inUse:[Z

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->seqToUnseq:[B

    .line 14
    .line 15
    const/16 v1, 0x4652

    .line 16
    .line 17
    new-array v2, v1, [B

    .line 18
    .line 19
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selector:[B

    .line 20
    .line 21
    new-array v1, v1, [B

    .line 22
    .line 23
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->selectorMtf:[B

    .line 24
    .line 25
    new-array v1, v0, [I

    .line 26
    .line 27
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->unzftab:[I

    .line 28
    const/4 v1, 0x6

    .line 29
    .line 30
    const/16 v2, 0x102

    .line 31
    .line 32
    .line 33
    filled-new-array {v1, v2}, [I

    .line 34
    move-result-object v3

    .line 35
    .line 36
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 41
    .line 42
    check-cast v3, [[I

    .line 43
    .line 44
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->limit:[[I

    .line 45
    .line 46
    .line 47
    filled-new-array {v1, v2}, [I

    .line 48
    move-result-object v3

    .line 49
    .line 50
    .line 51
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    .line 54
    check-cast v3, [[I

    .line 55
    .line 56
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->base:[[I

    .line 57
    .line 58
    .line 59
    filled-new-array {v1, v2}, [I

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, [[I

    .line 67
    .line 68
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->perm:[[I

    .line 69
    .line 70
    new-array v3, v1, [I

    .line 71
    .line 72
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->minLens:[I

    .line 73
    .line 74
    const/16 v3, 0x101

    .line 75
    .line 76
    new-array v3, v3, [I

    .line 77
    .line 78
    iput-object v3, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->cftab:[I

    .line 79
    .line 80
    new-array v0, v0, [C

    .line 81
    .line 82
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->getAndMoveToFrontDecode_yy:[C

    .line 83
    .line 84
    .line 85
    filled-new-array {v1, v2}, [I

    .line 86
    move-result-object v0

    .line 87
    .line 88
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    check-cast v0, [[C

    .line 95
    .line 96
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->temp_charArray2d:[[C

    .line 97
    .line 98
    new-array v0, v1, [B

    .line 99
    .line 100
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->recvDecodingTables_pos:[B

    .line 101
    .line 102
    .line 103
    const v0, 0x186a0

    .line 104
    mul-int/2addr p1, v0

    .line 105
    .line 106
    new-array p1, p1, [B

    .line 107
    .line 108
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->ll8:[B

    .line 109
    return-void
.end method


# virtual methods
.method initTT(I)[I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    array-length v1, v0

    .line 6
    .line 7
    if-ge v1, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    new-array v0, p1, [I

    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorInputStream$Data;->tt:[I

    .line 12
    :cond_1
    return-object v0
.end method
